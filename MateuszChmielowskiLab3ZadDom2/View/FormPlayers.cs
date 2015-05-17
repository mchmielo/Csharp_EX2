using MateuszChmielowskiLab3ZadDom2.Controller;
using MateuszChmielowskiLab3ZadDom2.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MateuszChmielowskiLab3ZadDom2
{
    public partial class FormPlayers : Form
    {
        List<int> changesToUpdate = new List<int>();
        string cellBeforeEdit = string.Empty;

        public FormPlayers()
        {
            InitializeComponent();
            UpdateDataGridViewPlayers("Select * from Player");
        }
        /// <summary>
        /// Metoda wywoływana zdarzeniem wciśnięcia przycisku dodania nowego zawodnika.
        /// W metodzie tworzony jest zawodnik, wykorzystując losowe wartości polsich imion
        /// i nazwisk męskich, zapisanych w plikach odpowiednio firstNames-m.txt i lastNames.txt.
        /// Reszta parametrów jest generowanych z wykorzystaniem liczb pseudolosowych.
        /// Gotowe zapytanie wykonywane jest z wykorzystaniem utworzonego w konstruktorze połączenia
        /// do bazy danych.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonAddUnrealPlayer_Click(object sender, EventArgs e)
        {
            Random randomNumber = new Random();
            string queryString = "Insert into Player values ('" +
                 FormTablesController.GenerateFirstName() + "', '" +
                 FormTablesController.GenerateLastName() + "', 'm', '" +
                FormTablesController.RandomDay().ToString("yyyy-MM-dd") + "', " + randomNumber.Next(175, 230).ToString() +
                ", 1, 0," + randomNumber.Next(100).ToString() + ")";
            DatabaseBasketballModel.makeQuery(queryString);
            UpdateDataGridViewPlayers("Select * from Player"); 
        }

        /// <summary>
        /// Metoda aktualizuje dane w tabeli dataGdridViewPlayers poprzez
        /// wyciągnięcie wszystkich rekordów z bazy danych i następnie przypisaniu
        /// ich jako źródło danych do tabeli.
        /// </summary>
        private void UpdateDataGridViewPlayers(string queryString)
        {
            dataGridViewPlayers.DataSource = null;
            DatabaseBasketballModel.UpdateSqlAdapter(queryString);
            DataTable dataTable = new DataTable();
            DatabaseBasketballModel.sqlDataAdapter.Fill(dataTable);
            dataGridViewPlayers.DataSource = dataTable;
            dataGridViewPlayers.Columns[0].ReadOnly = true; // Kolumna ID ustawiana jest jako nieedytowalna
        }
        
        /// <summary>
        /// Metoda wywoływana zdarzeniem wciśnięcia przycisku usunięcia wybranego zawodnika,
        /// próbuje usunąć wiersz tabeli obecnie zaznaczony w dataGridViewPlayers. W przypadku,
        /// gdy z jakiegoś powodu to się nie uda, zostanie wyświetlone okno z informacją o błędzie.
        /// W przypadku, gdy rekord zostanie prawidłowo usunięty, tabela zostanie zaktualizowana.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonDeleteSelectedRow_Click(object sender, EventArgs e)
        {
            string queryString = "Delete from Player where ID = '" +
                dataGridViewPlayers.Rows[dataGridViewPlayers.CurrentRow.Index].Cells[0].Value.ToString() + "'";
            DatabaseBasketballModel.makeQuery(queryString);
            UpdateDataGridViewPlayers("Select * from Player");
        }

        /// <summary>
        /// Zapisanie do tymczasowej zmiennej początkowej wartości komórki w trakcie wejścia
        /// w tryb edycji komórki.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dataGridViewPlayers_CellBeginEdit(object sender, DataGridViewCellCancelEventArgs e)
        {
            cellBeforeEdit = dataGridViewPlayers.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();
        }

        /// <summary>
        /// Metoda wywoływana zdarzeniem zakończenia edycji komórki tabeli dataGridViewPlayers,
        /// jeśli wprowadzono zmiany w komórce, wtedy czcionka i tło komórki zostaną zmienione, 
        /// numer wiersza, w którym dokonano zmiany zostanie zapisany, a
        /// przycisk "Akceptuj zmiany" zostanie odblokowany.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dataGridViewPlayers_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if (cellBeforeEdit != dataGridViewPlayers.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString())
            {
                buttonAcceptChanges.Enabled = true;
                DataGridViewCellStyle style = dataGridViewPlayers.ColumnHeadersDefaultCellStyle;
                style.Font = new Font(dataGridViewPlayers.Font, FontStyle.Bold);
                dataGridViewPlayers.Rows[e.RowIndex].Cells[e.ColumnIndex].Style = style;
                if (changesToUpdate.IndexOf(e.RowIndex) < 0)
                {
                    changesToUpdate.Add(e.RowIndex);
                }
            }
            
        }
        
        /// <summary>
        /// Metoda wywoływana zdarzeniem wciśnięcia przycisku buttonAcceptChanges,
        /// dla każdego wiersza, w którym użytkownik wprowadził zmiany, zostanie
        /// wykonana kwerenda UPDATE do bazy danych aktualizująca odpowiednie dane,
        /// po czym lista changesToUpdate zostanie wyczyszczona, a przycisk wyłączony.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonAcceptChanges_Click(object sender, EventArgs e)
        {
            foreach (var row in changesToUpdate)
            {
                string queryString = "Update Player SET "+
                    "Name = '"+ dataGridViewPlayers.Rows[row].Cells[1].Value.ToString() +
                    "',Surname='"+ dataGridViewPlayers.Rows[row].Cells[2].Value.ToString() +
                    "',Sex='"+ dataGridViewPlayers.Rows[row].Cells[3].Value.ToString() +
                    "',BirthDate='"+ dataGridViewPlayers.Rows[row].Cells[4].Value.ToString() +
                    "',Height='"+ dataGridViewPlayers.Rows[row].Cells[5].Value.ToString() +
                    "',NationalityID='"+ dataGridViewPlayers.Rows[row].Cells[6].Value.ToString() +
                    "',Injury='" + dataGridViewPlayers.Rows[row].Cells[7].Value.ToString() +
                    "',Number='"+ dataGridViewPlayers.Rows[row].Cells[8].Value.ToString()+
                    "' WHERE ID =" +  dataGridViewPlayers.Rows[row].Cells[0].Value.ToString();
                DatabaseBasketballModel.makeQuery(queryString);
            }
            UpdateDataGridViewPlayers("Select * from Player");
            changesToUpdate.Clear();
            
            buttonAcceptChanges.Enabled = false;
        }
        /// <summary>
        /// Metoda wywoływana zdarzeniem zmiany wartości w textBoxFilter, tworzy zapytanie
        /// bazodanowe filtrujące dane w tabeli.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void textBoxFilter_TextChanged(object sender, EventArgs e)
        {
            double tmp;
            string queryString;
            if (double.TryParse(textBoxFilter.Text, out tmp))
            {
                queryString = "Select * from Player where Id='" + textBoxFilter.Text +
                "' or BirthDate Like '%" + textBoxFilter.Text +
                "%' or Height ='" + textBoxFilter.Text +
                "' or NationalityID='" + textBoxFilter.Text +
                "' or Injury='" + textBoxFilter.Text +
                "' or Number='" + textBoxFilter.Text +
                "' or NationalityID='" + textBoxFilter.Text + "'";
            }
            else
            {
                queryString = "Select * from Player where Name Like '%" + textBoxFilter.Text +
                    "%' or Surname Like '%" + textBoxFilter.Text +
                    "%' or Sex='" + textBoxFilter.Text +
                    "' or BirthDate Like '%" + textBoxFilter.Text + "%'";
            }
            UpdateDataGridViewPlayers(queryString);
        }
        
    }
}

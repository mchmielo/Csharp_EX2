using MateuszChmielowskiLab3ZadDom2.Controller;
using MateuszChmielowskiLab3ZadDom2.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MateuszChmielowskiLab3ZadDom2.View
{
    public partial class FormArenas : Form
    {
        List<int> changesToUpdate = new List<int>();
        string cellBeforeEdit = string.Empty;

        public FormArenas()
        {
            InitializeComponent();
            UpdateDataGridViewArenas("Select * from Arena");
        }

        /// <summary>
        /// Metoda aktualizuje dane w tabeli dataGdridViewArenas poprzez
        /// wyciągnięcie wszystkich rekordów z bazy danych i następnie przypisaniu
        /// ich jako źródło danych do tabeli.
        /// </summary>
        private void UpdateDataGridViewArenas(string queryString)
        {
            dataGridViewArenas.DataSource = null;
            DatabaseBasketballModel.UpdateSqlAdapter(queryString);
            DataTable dataTable = new DataTable();
            DatabaseBasketballModel.sqlDataAdapter.Fill(dataTable);
            dataGridViewArenas.DataSource = dataTable;
            dataGridViewArenas.Columns[0].ReadOnly = true; // Kolumna ID ustawiana jest jako nieedytowalna
        }
        
        /// <summary>
        /// Metoda wywoływana zdarzeniem wciśnięcia przycisku usunięcia wybranej hali,
        /// próbuje usunąć wiersz tabeli obecnie zaznaczony w dataGridViewArenas. W przypadku,
        /// gdy z jakiegoś powodu to się nie uda, zostanie wyświetlone okno z informacją o błędzie.
        /// W przypadku, gdy rekord zostanie prawidłowo usunięty, tabela zostanie zaktualizowana.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonDeleteSelectedRow_Click(object sender, EventArgs e)
        {
            string queryString = "Delete from Arena where ID = '" +
                dataGridViewArenas.Rows[dataGridViewArenas.CurrentRow.Index].Cells[0].Value.ToString() + "'";
            DatabaseBasketballModel.makeQuery(queryString);
            UpdateDataGridViewArenas("Select * from Arena");
        }

        /// <summary>
        /// Zapisanie do tymczasowej zmiennej początkowej wartości komórki w trakcie wejścia
        /// w tryb edycji komórki.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dataGridViewArenas_CellBeginEdit(object sender, DataGridViewCellCancelEventArgs e)
        {
            cellBeforeEdit = dataGridViewArenas.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();
        }

        /// <summary>
        /// Metoda wywoływana zdarzeniem zakończenia edycji komórki tabeli dataGridViewArenas,
        /// jeśli wprowadzono zmiany w komórce, wtedy czcionka i tło komórki zostaną zmienione, 
        /// numer wiersza, w którym dokonano zmiany zostanie zapisany, a
        /// przycisk "Akceptuj zmiany" zostanie odblokowany.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dataGridViewArenas_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if (cellBeforeEdit != dataGridViewArenas.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString())
            {
                buttonAcceptChanges.Enabled = true;
                DataGridViewCellStyle style = dataGridViewArenas.ColumnHeadersDefaultCellStyle;
                style.Font = new Font(dataGridViewArenas.Font, FontStyle.Bold);
                dataGridViewArenas.Rows[e.RowIndex].Cells[e.ColumnIndex].Style = style;
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
                string queryString = "Update Arena SET "+
                    "Name = '"+ dataGridViewArenas.Rows[row].Cells[1].Value.ToString() +
                    "',Adress='"+ dataGridViewArenas.Rows[row].Cells[2].Value.ToString() +
                    "',Capacity='"+ dataGridViewArenas.Rows[row].Cells[3].Value.ToString() +
                    "' WHERE ID =" +  dataGridViewArenas.Rows[row].Cells[0].Value.ToString();
                DatabaseBasketballModel.makeQuery(queryString);
            }
            UpdateDataGridViewArenas("Select * from Arena");
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
                queryString = "Select * from Arena where Id='" + textBoxFilter.Text +
                "' or Capacity ='" + textBoxFilter.Text + 
                "' or Name Like '%" + textBoxFilter.Text +
                "%' or Adress Like '%" + textBoxFilter.Text + "%'";;
            }
            else
            {
                queryString = "Select * from Arena where Name Like '%" + textBoxFilter.Text +
                    "%' or Adress Like '%" + textBoxFilter.Text + "%'";
            }
            UpdateDataGridViewArenas(queryString);
        }
        /// <summary>
        /// Metoda wywoływana zdarzeniem przyciśnięcia przycisku buttonAddNewArena, sprawdza
        /// czy wszystkie pola zostały wypełnione, jeśli nie wtedy wyświetla komunikat, jeśli tak
        /// to tworzy kwerendę dodającą nowy rekord do tabeli Arena, a następnie odświeża tabelę dataGridViewArenas.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonAddNewArena_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(textBoxArenaAdress.Text) || 
                string.IsNullOrEmpty(textBoxArenaName.Text) || 
                numericUpDownArenaCapacity.Value == 0)
            {
                MessageBox.Show("Należy wypełnić wszystkie pola.");
            }
            else
            {
                string queryString = "Insert into Arena values ('" +
                    textBoxArenaName.Text + "', '" + textBoxArenaAdress.Text +
                    "', '" + numericUpDownArenaCapacity.Value.ToString() + "')";
                DatabaseBasketballModel.makeQuery(queryString);
                UpdateDataGridViewArenas("Select * from Arena");
            }
        }
    }
}

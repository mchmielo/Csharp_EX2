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
        SqlConnection sqlConnection;
        SqlDataAdapter sqlDataAdapter;
        List<int> changesToUpdate = new List<int>();
        string cellBeforeEdit = string.Empty;

        public FormPlayers()
        {
            InitializeComponent();
            sqlConnection = new SqlConnection("Data Source=(local);database=MateuszChmielowskiLab3ZadDom;Trusted_Connection=yes");
            updateDataGridViewPlayers();
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
            List<string> names, surnames;
            names = new List<string>();
            surnames = new List<string>();
            string line;
            Random randomNumber = new Random();

            StreamReader firstNameFileReader;
            firstNameFileReader = new StreamReader("firstNames-m.txt");

            StreamReader lastNameFileReader = new StreamReader("lastNames.txt");

            while ((line = firstNameFileReader.ReadLine()) != null)
            {
                names.Add(line);
            }
            while ((line = lastNameFileReader.ReadLine()) != null)
            {
                surnames.Add(line);
            }
            lastNameFileReader.Close();
            firstNameFileReader.Close();
            SqlCommand sqlCommand = new SqlCommand("Insert into Player values ('" +
                names.ElementAt(randomNumber.Next(0, names.Count)) + "', '" +
                surnames.ElementAt(randomNumber.Next(0, surnames.Count)) + "', 'm', '" +
                RandomDay().ToString("yyyy-MM-dd") + "', "+ randomNumber.Next(175,230).ToString() + 
                ", 1, 0," + randomNumber.Next(100).ToString() + ")");
            sqlCommand.Connection = sqlConnection;
            sqlConnection.Open();
            TryToExecuteQuery(sqlCommand);
            sqlConnection.Close();
            updateDataGridViewPlayers();
        }
        /// <summary>
        /// Metoda aktualizuje dane w tabeli dataGdridViewPlayers poprzez
        /// wyciągnięcie wszystkich rekordów z bazy danych i następnie przypisaniu
        /// ich jako źródło danych do tabeli.
        /// </summary>
        private void updateDataGridViewPlayers()
        {
            dataGridViewPlayers.DataSource = null;
            sqlDataAdapter = new SqlDataAdapter("Select * from Player", sqlConnection);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            dataGridViewPlayers.DataSource = dataTable;
            dataGridViewPlayers.Columns[0].ReadOnly = true; // Kolumna ID ustawiana jest jako nieedytowalna
        }
        /// <summary>
        /// Metoda generuje i zwraca datę z przedziału lat [dziś - 35 lat; dziś - 18 lat]. 
        /// </summary>
        /// <returns>Wylosowana data z przedziału [dziś - 35 lat; dziś - 18 lat]</returns>
        DateTime RandomDay()
        {
            DateTime start = DateTime.Today.AddYears(-35);
            DateTime end = DateTime.Today.AddYears(-18);
            Random gen = new Random();

            int range = (end - start).Days;
            return start.AddDays(gen.Next(range));
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
            SqlCommand sqlCommand = new SqlCommand("Delete from Player where ID = '" + 
                dataGridViewPlayers.Rows[dataGridViewPlayers.CurrentRow.Index].Cells[0].Value.ToString() +"'");
            sqlCommand.Connection = sqlConnection;
            sqlConnection.Open();
            TryToExecuteQuery(sqlCommand);
            sqlConnection.Close();
            updateDataGridViewPlayers();
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
            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.Connection = sqlConnection;
            sqlConnection.Open();
            foreach (var row in changesToUpdate)
            {
                sqlCommand.CommandText = "Update PLayer SET "+
                    "Name = '"+ dataGridViewPlayers.Rows[row].Cells[1].Value.ToString() +
                    "',Surname='"+ dataGridViewPlayers.Rows[row].Cells[2].Value.ToString() +
                    "',Sex='"+ dataGridViewPlayers.Rows[row].Cells[3].Value.ToString() +
                    "',BirthDate='"+ dataGridViewPlayers.Rows[row].Cells[4].Value.ToString() +
                    "',Height='"+ dataGridViewPlayers.Rows[row].Cells[5].Value.ToString() +
                    "',NationalityID='"+ dataGridViewPlayers.Rows[row].Cells[6].Value.ToString() +
                    "',Injury='" + dataGridViewPlayers.Rows[row].Cells[7].Value.ToString() +
                    "',Number='"+ dataGridViewPlayers.Rows[row].Cells[8].Value.ToString()+
                    "' WHERE ID =" +  dataGridViewPlayers.Rows[row].Cells[0].Value.ToString();
                TryToExecuteQuery(sqlCommand);
            }
            sqlConnection.Close();
            updateDataGridViewPlayers();
            changesToUpdate.Clear();
            
            buttonAcceptChanges.Enabled = false;
        }
        /// <summary>
        /// Metoda próbuje wykonać kwerendę bazodanową, w przypadku błędów,
        /// wyświetla okno z odpowiednim komunikatem.
        /// </summary>
        /// <param name="command">Parametr SqlCommand zawierający tekst kwerendy oraz
        /// połączenie do bazy danych.
        /// </param>
        private void TryToExecuteQuery(SqlCommand command)
        {
            try
            {
                command.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                if (ex.Errors.Count > 0) // sprawdzenie czy są błędy bazy danych
                {
                    switch (ex.Errors[0].Number)
                    {
                        case 547: // błąd naruszenia klucza obcego
                            MessageBox.Show("Naruszenie klucza obcego. Zapytanie nie zostało wykonane.");
                            break;
                        case 2601: // błąd naruszenia klucza głównego
                            MessageBox.Show("Naruszenie klucza głównego. Zapytanie nie zostało wykonane.");
                            break;
                        default:
                            MessageBox.Show(ex.Message);
                            break;
                    }
                }

            }
        }
    }
}

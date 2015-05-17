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
    public partial class FormTeams : Form
    {
        List<int> changesToUpdate = new List<int>();
        string cellBeforeEdit = string.Empty;

        public FormTeams()
        {
            InitializeComponent();
            UpdateDataGridViewTeams("Select * from Team");
            UpdateArenasComboBox();
        }

        /// <summary>
        /// Metoda aktualizuje dane w tabeli dataGdridViewTeams poprzez
        /// wyciągnięcie wszystkich rekordów z bazy danych i następnie przypisaniu
        /// ich jako źródło danych do tabeli.
        /// </summary>
        private void UpdateDataGridViewTeams(string queryString)
        {
            dataGridViewTeams.DataSource = null;
            DatabaseBasketballModel.UpdateSqlAdapter(queryString);
            DataTable dataTable = new DataTable();
            DatabaseBasketballModel.sqlDataAdapter.Fill(dataTable);
            dataGridViewTeams.DataSource = dataTable;
            dataGridViewTeams.Columns[0].ReadOnly = true; // Kolumna ID ustawiana jest jako nieedytowalna
        }
        /// <summary>
        /// Metoda aktualizuje dane w comboBoxArenaID poprzez wyciągnięcie z 
        /// bazy danych wszystkich dostępnych hal sportowych i przypisaniu
        /// ich jako źródła danych do comboBoxa.
        /// </summary>
        private void UpdateArenasComboBox()
        {
            comboBoxArenaID.DataSource = null;
            comboBoxArenaID.DisplayMember = "Name";
            comboBoxArenaID.ValueMember = "ID";
            DatabaseBasketballModel.UpdateSqlAdapter("Select ID, Name from Arena");
            DataTable dataTable = new DataTable();
            DatabaseBasketballModel.sqlDataAdapter.Fill(dataTable);
            comboBoxArenaID.DataSource = dataTable;
        }
        
        /// <summary>
        /// Metoda wywoływana zdarzeniem wciśnięcia przycisku usunięcia wybranej hali,
        /// próbuje usunąć wiersz tabeli obecnie zaznaczony w dataGridViewTeams. W przypadku,
        /// gdy z jakiegoś powodu to się nie uda, zostanie wyświetlone okno z informacją o błędzie.
        /// W przypadku, gdy rekord zostanie prawidłowo usunięty, tabela zostanie zaktualizowana.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonDeleteSelectedRow_Click(object sender, EventArgs e)
        {
            string queryString = "Delete from Team where ID = '" +
                dataGridViewTeams.Rows[dataGridViewTeams.CurrentRow.Index].Cells[0].Value.ToString() + "'";
            DatabaseBasketballModel.makeQuery(queryString);
            UpdateDataGridViewTeams("Select * from Team");
        }

        /// <summary>
        /// Zapisanie do tymczasowej zmiennej początkowej wartości komórki w trakcie wejścia
        /// w tryb edycji komórki.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dataGridViewTeams_CellBeginEdit(object sender, DataGridViewCellCancelEventArgs e)
        {
            cellBeforeEdit = dataGridViewTeams.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();
        }

        /// <summary>
        /// Metoda wywoływana zdarzeniem zakończenia edycji komórki tabeli dataGridViewTeams,
        /// jeśli wprowadzono zmiany w komórce, wtedy czcionka i tło komórki zostaną zmienione, 
        /// numer wiersza, w którym dokonano zmiany zostanie zapisany, a
        /// przycisk "Akceptuj zmiany" zostanie odblokowany.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dataGridViewTeams_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if (cellBeforeEdit != dataGridViewTeams.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString())
            {
                buttonAcceptChanges.Enabled = true;
                DataGridViewCellStyle style = dataGridViewTeams.ColumnHeadersDefaultCellStyle;
                style.Font = new Font(dataGridViewTeams.Font, FontStyle.Bold);
                dataGridViewTeams.Rows[e.RowIndex].Cells[e.ColumnIndex].Style = style;
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
                string queryString = "Update Team SET "+
                    "Name = '"+ dataGridViewTeams.Rows[row].Cells[1].Value.ToString() +
                    "',ArenaID='"+ dataGridViewTeams.Rows[row].Cells[2].Value.ToString() +
                    "',YearOfFoundation='" + dataGridViewTeams.Rows[row].Cells[3].Value.ToString() +
                    "' WHERE ID =" +  dataGridViewTeams.Rows[row].Cells[0].Value.ToString();
                DatabaseBasketballModel.makeQuery(queryString);
            }
            UpdateDataGridViewTeams("Select * from Team");
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
                queryString = "Select * from Team where Id='" + textBoxFilter.Text +
                "' or ArenaID ='" + textBoxFilter.Text +
                "' or YearOfFoundation ='" + textBoxFilter.Text + 
                "' or Name Like '%" + textBoxFilter.Text + "%'";;
            }
            else
            {
                queryString = "Select * from Team where Name Like '%" + textBoxFilter.Text + "%'";
            }
            UpdateDataGridViewTeams(queryString);
        }
        /// <summary>
        /// Metoda wywoływana zdarzeniem przyciśnięcia przycisku buttonAddNewTeam, sprawdza
        /// czy wszystkie pola zostały wypełnione, jeśli nie wtedy wyświetla komunikat, jeśli tak
        /// to tworzy kwerendę dodającą nowy rekord do tabeli Team, a następnie odświeża tabelę dataGridViewTeams.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonAddNewTeam_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(textBoxTeamName.Text) || numericUpDownYearOfFoundation.Value == 0)
            {
                MessageBox.Show("Należy wypełnić wszystkie pola.");
            }
            else
            {
                string queryString = "Insert into Team values ('" + textBoxTeamName.Text +
                    "','" + comboBoxArenaID.SelectedValue.ToString() + "','" + numericUpDownYearOfFoundation.Value.ToString() + "')";
                DatabaseBasketballModel.makeQuery(queryString);
                UpdateDataGridViewTeams("Select * from Team");
            }
        }
    }
}

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
    public partial class FormGames : Form
    {
        List<int> changesToUpdate = new List<int>();
        string cellBeforeEdit = string.Empty;

        public FormGames()
        {
            InitializeComponent();
            UpdateDataGridViewGames("Select * from Game");
            UpdateComboBox(comboBoxGuestTeamID, "ID", "Name", "Select ID, Name from Team");
            UpdateComboBox(comboBoxHomeTeamID, "ID", "Name", "Select ID, Name from Team");
            UpdateComboBox(comboBoxArenaID, "ID", "Name", "Select Arena.ID, Arena.Name from Team, Arena where Team.ArenaID = Arena.ID and Team.ID =" + comboBoxHomeTeamID.SelectedValue.ToString());
            UpdateComboBox(comboBoxSeasonID, "ID", "Name", "Select ID, Name from Season");
            UpdateComboBox(comboBoxRank, "ID", "Name", "Select ID, Name from Rank");
        }

        /// <summary>
        /// Metoda aktualizuje dane w tabeli dataGdridViewGames poprzez
        /// wyciągnięcie wszystkich rekordów z bazy danych i następnie przypisaniu
        /// ich jako źródło danych do tabeli.
        /// </summary>
        private void UpdateDataGridViewGames(string queryString)
        {
            dataGridViewGames.DataSource = null;
            DatabaseBasketballModel.UpdateSqlAdapter(queryString);
            DataTable dataTable = new DataTable();
            DatabaseBasketballModel.sqlDataAdapter.Fill(dataTable);
            dataGridViewGames.DataSource = dataTable;
            dataGridViewGames.Columns[0].ReadOnly = true; // Kolumna ID ustawiana jest jako nieedytowalna
        }
        /// <summary>
        /// Metoda aktualizuje dane w comboBox poprzez zapytanie do bazy danych queryString,
        /// ustawia comboBox.DisplayMember = member oraz comboBox.ValueMember = value.
        /// </summary>
        /// <param name="comboBox"></param>
        /// <param name="member"></param>
        /// <param name="value"></param>
        /// <param name="queryString"></param>
        private void UpdateComboBox(ComboBox comboBox, string value, string member, string queryString)
        {
            comboBox.DataSource = null;
            comboBox.DisplayMember = member;
            comboBox.ValueMember = value;
            DatabaseBasketballModel.UpdateSqlAdapter(queryString);
            DataTable dataTable = new DataTable();
            DatabaseBasketballModel.sqlDataAdapter.Fill(dataTable);
            comboBox.DataSource = dataTable;
        }
        
        /// <summary>
        /// Metoda wywoływana zdarzeniem wciśnięcia przycisku usunięcia wybranej hali,
        /// próbuje usunąć wiersz tabeli obecnie zaznaczony w dataGridViewGames. W przypadku,
        /// gdy z jakiegoś powodu to się nie uda, zostanie wyświetlone okno z informacją o błędzie.
        /// W przypadku, gdy rekord zostanie prawidłowo usunięty, tabela zostanie zaktualizowana.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonDeleteSelectedRow_Click(object sender, EventArgs e)
        {
            string queryString = "Delete from Game where ID = '" +
                dataGridViewGames.Rows[dataGridViewGames.CurrentRow.Index].Cells[0].Value.ToString() + "'";
            DatabaseBasketballModel.makeQuery(queryString);
            UpdateDataGridViewGames("Select * from Game");
        }

        /// <summary>
        /// Zapisanie do tymczasowej zmiennej początkowej wartości komórki w trakcie wejścia
        /// w tryb edycji komórki.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dataGridViewGames_CellBeginEdit(object sender, DataGridViewCellCancelEventArgs e)
        {
            cellBeforeEdit = dataGridViewGames.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();
        }

        /// <summary>
        /// Metoda wywoływana zdarzeniem zakończenia edycji komórki tabeli dataGridViewGames,
        /// jeśli wprowadzono zmiany w komórce, wtedy czcionka i tło komórki zostaną zmienione, 
        /// numer wiersza, w którym dokonano zmiany zostanie zapisany, a
        /// przycisk "Akceptuj zmiany" zostanie odblokowany.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dataGridViewGames_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if (cellBeforeEdit != dataGridViewGames.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString())
            {
                buttonAcceptChanges.Enabled = true;
                DataGridViewCellStyle style = dataGridViewGames.ColumnHeadersDefaultCellStyle;
                style.Font = new Font(dataGridViewGames.Font, FontStyle.Bold);
                dataGridViewGames.Rows[e.RowIndex].Cells[e.ColumnIndex].Style = style;
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
                string queryString = "Update Game SET "+
                    "SeasonID ='" + dataGridViewGames.Rows[row].Cells[1].Value.ToString() +
                    "',HomeTeam ='" + dataGridViewGames.Rows[row].Cells[2].Value.ToString() +
                    "',GuestTeam ='" + dataGridViewGames.Rows[row].Cells[3].Value.ToString() +
                    "',DateAndTime ='" + dataGridViewGames.Rows[row].Cells[4].Value.ToString() +
                    "',RankID ='" + dataGridViewGames.Rows[row].Cells[5].Value.ToString() +
                    "',ArenaID ='" + dataGridViewGames.Rows[row].Cells[6].Value.ToString() +
                    "',Audience ='" + dataGridViewGames.Rows[row].Cells[7].Value.ToString() +
                    "',Overtime ='" + dataGridViewGames.Rows[row].Cells[8].Value.ToString() +
                    "',HomeTeamWin ='" + dataGridViewGames.Rows[row].Cells[9].Value.ToString() +
                    "' WHERE ID =" +  dataGridViewGames.Rows[row].Cells[0].Value.ToString();
                DatabaseBasketballModel.makeQuery(queryString);
            }
            UpdateDataGridViewGames("Select * from Game");
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
                queryString = "Select * from Game where Id='" + textBoxFilter.Text +
                    "' or SeasonID ='" + textBoxFilter.Text +
                    "' or HomeTeam ='" + textBoxFilter.Text +
                    "' or GuestTeam ='" + textBoxFilter.Text +
                    "' or ArenaID ='" + textBoxFilter.Text +
                    "' or RankID ='" + textBoxFilter.Text +
                    "' or Audience ='" + textBoxFilter.Text +
                    "' or Overtime ='" + textBoxFilter.Text +
                    "' or DateAndTime Like '%" + textBoxFilter.Text + "%'";
            }
            else
            {
                queryString = "Select * from Game where DateAndTime Like '%" + textBoxFilter.Text + "%'";
            }
            UpdateDataGridViewGames(queryString);
        }
        /// <summary>
        /// Metoda wywoływana zdarzeniem przyciśnięcia przycisku buttonAddNewGame, sprawdza
        /// czy wszystkie pola zostały wypełnione, jeśli nie wtedy wyświetla komunikat, jeśli tak
        /// to tworzy kwerendę dodającą nowy rekord do tabeli Game, a następnie odświeża tabelę dataGridViewGames.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void buttonAddNewGame_Click(object sender, EventArgs e)
        {
            if (comboBoxGuestTeamID.SelectedValue.ToString() == comboBoxHomeTeamID.SelectedValue.ToString())
            {
                MessageBox.Show("Wybrany został ten sam zespół gości i gospodarzy.");
            }
            else
            {
                string queryString = "Insert into Game values ('" + 
                    comboBoxSeasonID.SelectedValue.ToString() + "', '" +
                    comboBoxHomeTeamID.SelectedValue.ToString() + "', '" +
                    comboBoxGuestTeamID.SelectedValue.ToString() + "', '" +
                    dateTimePickerGameDate.Value.ToString("yyyy-MM-dd HH:mm") + "', '" +
                    comboBoxRank.SelectedValue.ToString() + "', '" +
                    comboBoxArenaID.SelectedValue.ToString() + "', '" +
                    numericUpDownAudience.Value.ToString() + "', '" +
                    numericUpDownOvertimes.Value.ToString() + "', '" +
                    checkBoxHomeTeamWin.Checked.ToString() + "')";
                DatabaseBasketballModel.makeQuery(queryString);
                UpdateDataGridViewGames("Select * from Game");
            }
        }
    }
}

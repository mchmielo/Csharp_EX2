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
            // localhost - nazwa serwera bazy danych też np. .\sqlexpress etc...
            // ImieNazwiskoLab3Zad2 - nazwa bazy danych
            sqlConnection = new SqlConnection("Data Source=(local);database=MateuszChmielowskiLab3ZadDom;Trusted_Connection=yes");
 /*           if (sqlConnection != null && sqlConnection.State == ConnectionState.Closed)
            {
                MessageBox.Show("Brak połączenia z bazą!");
            }*/
            updateDataGridViewPlayers();
        }

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
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
            updateDataGridViewPlayers();
        }
        private void updateDataGridViewPlayers()
        {
            dataGridViewPlayers.DataSource = null;
            sqlDataAdapter = new SqlDataAdapter("Select * from Player", sqlConnection);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            dataGridViewPlayers.DataSource = dataTable;
            dataGridViewPlayers.Columns[0].ReadOnly = true;
        }

        DateTime RandomDay()
        {
            DateTime start = DateTime.Today.AddYears(-35);
            DateTime end = DateTime.Today.AddYears(-18);
            Random gen = new Random();

            int range = (end - start).Days;
            return start.AddDays(gen.Next(range));
        }

        private void buttonDeleteSelectedRow_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("Delete from Player where ID = '" + 
                dataGridViewPlayers.Rows[dataGridViewPlayers.CurrentRow.Index].Cells[0].Value.ToString() +"'");
            sqlCommand.Connection = sqlConnection;
            sqlConnection.Open();
            try
            {
                sqlCommand.ExecuteNonQuery();
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
            sqlConnection.Close();
            updateDataGridViewPlayers();
        }

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

        private void dataGridViewPlayers_CellBeginEdit(object sender, DataGridViewCellCancelEventArgs e)
        {
            cellBeforeEdit = dataGridViewPlayers.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();
        }

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
                try
                {
                    sqlCommand.ExecuteNonQuery();
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
            sqlConnection.Close();
            updateDataGridViewPlayers();
            changesToUpdate.Clear();
            
            buttonAcceptChanges.Enabled = false;
        }
    }
}

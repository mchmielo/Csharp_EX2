using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MateuszChmielowskiLab3ZadDom2.Model
{
    static partial class DatabaseBasketballModel
    {
        public static SqlConnection sqlConnection;
        public static SqlDataAdapter sqlDataAdapter;

        /// <summary>
        /// Konstruktor statyczny, tworzy połączenie do bazy danych.
        /// </summary>
        static DatabaseBasketballModel()
        {
            sqlConnection = new SqlConnection("Data Source=(local);database=MateuszChmielowskiLab3ZadDom;Trusted_Connection=yes");
        }

        /// <summary>
        /// Metoda tworzy zapytanie bazodanowe queryString, a następnie wykonuje je w bazie danych
        /// zdefiniowanej w sqlConnection.
        /// </summary>
        /// <param name="queryString">
        /// String z kwerendą</param>
        public static void makeQuery(string queryString)
        {
            SqlCommand sqlCommand = new SqlCommand(queryString);
            sqlCommand.Connection = DatabaseBasketballModel.sqlConnection;
            DatabaseBasketballModel.sqlConnection.Open();
            TryToExecuteQuery(sqlCommand);
            DatabaseBasketballModel.sqlConnection.Close();
        }

        /// <summary>
        /// Metoda próbuje wykonać kwerendę bazodanową, w przypadku błędów,
        /// wyświetla okno z odpowiednim komunikatem.
        /// </summary>
        /// <param name="command">Parametr SqlCommand zawierający tekst kwerendy oraz
        /// połączenie do bazy danych.
        /// </param>
        private static void TryToExecuteQuery(SqlCommand command)
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

        public static void UpdateSqlAdapter(string queryString)
        {
            sqlDataAdapter = new SqlDataAdapter(queryString, sqlConnection);
        }
    }
}

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MateuszChmielowskiLab3ZadDom2.Controller
{
    static class FormTablesController
    {
        /// <summary>
        /// Metoda generuje i zwraca datę z przedziału lat [dziś - 35 lat; dziś - 18 lat]. 
        /// </summary>
        /// <returns>Wylosowana data z przedziału [dziś - 35 lat; dziś - 18 lat]</returns>
        public static DateTime RandomDay()
        {
            DateTime start = DateTime.Today.AddYears(-35);
            DateTime end = DateTime.Today.AddYears(-18);
            Random gen = new Random();

            int range = (end - start).Days;
            return start.AddDays(gen.Next(range));
        }
        /// <summary>
        /// Funkcja generuje polskie nazwisko wybierając losowe nazwisko z pliku "lastNames.txt".
        /// </summary>
        /// <returns>
        /// Losowe, męskie, polskie nazwisko.
        /// </returns>
        public static string GenerateLastName()
        {
            string line;
            Random randomNumber = new Random();
            List<string> surnames = new List<string>();
            StreamReader lastNameFileReader = new StreamReader("lastNames.txt");
            while ((line = lastNameFileReader.ReadLine()) != null)
            {
                surnames.Add(line);
            }
            lastNameFileReader.Close();
            return surnames.ElementAt(randomNumber.Next(0, surnames.Count));
        }
        /// <summary>
        /// Funkcja generuje polskie imię wybierając losowe imię z pliku "firstNames-m.txt".
        /// </summary>
        /// <returns>
        /// Losowe, męskie, polskie imię.
        /// </returns>
        public static string GenerateFirstName()
        {
            List<string> names;
            names = new List<string>();
            string line;
            Random randomNumber = new Random();
            StreamReader firstNameFileReader = new StreamReader("firstNames-m.txt");
            while ((line = firstNameFileReader.ReadLine()) != null)
            {
                names.Add(line);
            }
            firstNameFileReader.Close();
            return names.ElementAt(randomNumber.Next(0, names.Count));
        }
    }
}

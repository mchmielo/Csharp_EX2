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
    public partial class FormMain : Form
    {
        public FormMain()
        {
            InitializeComponent();
        }

        private void buttonPlayers_Click(object sender, EventArgs e)
        {
            FormPlayers formPlayers = new FormPlayers();
            formPlayers.ShowDialog();
        }

        private void buttonArenas_Click(object sender, EventArgs e)
        {
            FormArenas formArenas = new FormArenas();
            formArenas.ShowDialog();
        }

        private void buttonTeams_Click(object sender, EventArgs e)
        {
            FormTeams formTeams = new FormTeams();
            formTeams.ShowDialog();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            FormGames formGames = new FormGames();
            formGames.ShowDialog();
        }

    }
}

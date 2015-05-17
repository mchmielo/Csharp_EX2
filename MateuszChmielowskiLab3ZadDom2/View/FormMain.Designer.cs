namespace MateuszChmielowskiLab3ZadDom2.View
{
    partial class FormMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.buttonPlayers = new System.Windows.Forms.Button();
            this.buttonTeams = new System.Windows.Forms.Button();
            this.buttonArenas = new System.Windows.Forms.Button();
            this.buttonGames = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // buttonPlayers
            // 
            this.buttonPlayers.Location = new System.Drawing.Point(12, 90);
            this.buttonPlayers.Name = "buttonPlayers";
            this.buttonPlayers.Size = new System.Drawing.Size(147, 23);
            this.buttonPlayers.TabIndex = 0;
            this.buttonPlayers.Text = "Edytuj zawodników";
            this.buttonPlayers.UseVisualStyleBackColor = true;
            this.buttonPlayers.Click += new System.EventHandler(this.buttonPlayers_Click);
            // 
            // buttonTeams
            // 
            this.buttonTeams.Location = new System.Drawing.Point(163, 90);
            this.buttonTeams.Name = "buttonTeams";
            this.buttonTeams.Size = new System.Drawing.Size(147, 23);
            this.buttonTeams.TabIndex = 0;
            this.buttonTeams.Text = "Edytuj drużyny";
            this.buttonTeams.UseVisualStyleBackColor = true;
            this.buttonTeams.Click += new System.EventHandler(this.buttonTeams_Click);
            // 
            // buttonArenas
            // 
            this.buttonArenas.Location = new System.Drawing.Point(312, 90);
            this.buttonArenas.Name = "buttonArenas";
            this.buttonArenas.Size = new System.Drawing.Size(147, 23);
            this.buttonArenas.TabIndex = 0;
            this.buttonArenas.Text = "Edytuj hale";
            this.buttonArenas.UseVisualStyleBackColor = true;
            this.buttonArenas.Click += new System.EventHandler(this.buttonArenas_Click);
            // 
            // buttonGames
            // 
            this.buttonGames.Location = new System.Drawing.Point(462, 90);
            this.buttonGames.Name = "buttonGames";
            this.buttonGames.Size = new System.Drawing.Size(147, 23);
            this.buttonGames.TabIndex = 0;
            this.buttonGames.Text = "Edytuj mecze";
            this.buttonGames.UseVisualStyleBackColor = true;
            this.buttonGames.Click += new System.EventHandler(this.button4_Click);
            // 
            // FormMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(622, 295);
            this.Controls.Add(this.buttonGames);
            this.Controls.Add(this.buttonArenas);
            this.Controls.Add(this.buttonTeams);
            this.Controls.Add(this.buttonPlayers);
            this.Name = "FormMain";
            this.Text = "Okno główne";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button buttonPlayers;
        private System.Windows.Forms.Button buttonTeams;
        private System.Windows.Forms.Button buttonArenas;
        private System.Windows.Forms.Button buttonGames;
    }
}
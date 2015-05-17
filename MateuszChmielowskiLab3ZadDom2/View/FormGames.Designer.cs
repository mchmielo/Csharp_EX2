namespace MateuszChmielowskiLab3ZadDom2.View
{
    partial class FormGames
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
            this.comboBoxHomeTeamID = new System.Windows.Forms.ComboBox();
            this.labelDate = new System.Windows.Forms.Label();
            this.labelGuestTeam = new System.Windows.Forms.Label();
            this.labelHomeTeam = new System.Windows.Forms.Label();
            this.labelFilter = new System.Windows.Forms.Label();
            this.textBoxFilter = new System.Windows.Forms.TextBox();
            this.buttonAcceptChanges = new System.Windows.Forms.Button();
            this.buttonDeleteSelectedRow = new System.Windows.Forms.Button();
            this.buttonAddNewGame = new System.Windows.Forms.Button();
            this.dataGridViewGames = new System.Windows.Forms.DataGridView();
            this.comboBoxSeasonID = new System.Windows.Forms.ComboBox();
            this.comboBoxGuestTeamID = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.dateTimePickerGameDate = new System.Windows.Forms.DateTimePicker();
            this.labelRank = new System.Windows.Forms.Label();
            this.comboBoxRank = new System.Windows.Forms.ComboBox();
            this.labelArena = new System.Windows.Forms.Label();
            this.comboBoxArenaID = new System.Windows.Forms.ComboBox();
            this.numericUpDownAudience = new System.Windows.Forms.NumericUpDown();
            this.labelAudience = new System.Windows.Forms.Label();
            this.numericUpDownOvertimes = new System.Windows.Forms.NumericUpDown();
            this.labelOvertime = new System.Windows.Forms.Label();
            this.checkBoxHomeTeamWin = new System.Windows.Forms.CheckBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewGames)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownAudience)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownOvertimes)).BeginInit();
            this.SuspendLayout();
            // 
            // comboBoxHomeTeamID
            // 
            this.comboBoxHomeTeamID.FormattingEnabled = true;
            this.comboBoxHomeTeamID.Location = new System.Drawing.Point(159, 31);
            this.comboBoxHomeTeamID.Name = "comboBoxHomeTeamID";
            this.comboBoxHomeTeamID.Size = new System.Drawing.Size(140, 21);
            this.comboBoxHomeTeamID.TabIndex = 1;
            // 
            // labelDate
            // 
            this.labelDate.AutoSize = true;
            this.labelDate.Location = new System.Drawing.Point(444, 15);
            this.labelDate.Name = "labelDate";
            this.labelDate.Size = new System.Drawing.Size(138, 13);
            this.labelDate.TabIndex = 25;
            this.labelDate.Text = "Data i godzina rozpoczęcia:";
            // 
            // labelGuestTeam
            // 
            this.labelGuestTeam.AutoSize = true;
            this.labelGuestTeam.Location = new System.Drawing.Point(300, 15);
            this.labelGuestTeam.Name = "labelGuestTeam";
            this.labelGuestTeam.Size = new System.Drawing.Size(72, 13);
            this.labelGuestTeam.TabIndex = 26;
            this.labelGuestTeam.Text = "Zespół gości:";
            // 
            // labelHomeTeam
            // 
            this.labelHomeTeam.AutoSize = true;
            this.labelHomeTeam.Location = new System.Drawing.Point(156, 15);
            this.labelHomeTeam.Name = "labelHomeTeam";
            this.labelHomeTeam.Size = new System.Drawing.Size(101, 13);
            this.labelHomeTeam.TabIndex = 27;
            this.labelHomeTeam.Text = "Zespół gospodarzy:";
            // 
            // labelFilter
            // 
            this.labelFilter.AutoSize = true;
            this.labelFilter.Location = new System.Drawing.Point(268, 134);
            this.labelFilter.Name = "labelFilter";
            this.labelFilter.Size = new System.Drawing.Size(66, 13);
            this.labelFilter.TabIndex = 28;
            this.labelFilter.Text = "Filtruj wyniki:";
            // 
            // textBoxFilter
            // 
            this.textBoxFilter.Location = new System.Drawing.Point(340, 131);
            this.textBoxFilter.Name = "textBoxFilter";
            this.textBoxFilter.Size = new System.Drawing.Size(325, 20);
            this.textBoxFilter.TabIndex = 8;
            this.textBoxFilter.TextChanged += new System.EventHandler(this.textBoxFilter_TextChanged);
            // 
            // buttonAcceptChanges
            // 
            this.buttonAcceptChanges.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonAcceptChanges.Enabled = false;
            this.buttonAcceptChanges.Location = new System.Drawing.Point(671, 87);
            this.buttonAcceptChanges.Name = "buttonAcceptChanges";
            this.buttonAcceptChanges.Size = new System.Drawing.Size(184, 23);
            this.buttonAcceptChanges.TabIndex = 12;
            this.buttonAcceptChanges.Text = "Akceptuj zmiany";
            this.buttonAcceptChanges.UseVisualStyleBackColor = true;
            this.buttonAcceptChanges.Click += new System.EventHandler(this.buttonAcceptChanges_Click);
            // 
            // buttonDeleteSelectedRow
            // 
            this.buttonDeleteSelectedRow.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonDeleteSelectedRow.Location = new System.Drawing.Point(671, 58);
            this.buttonDeleteSelectedRow.Name = "buttonDeleteSelectedRow";
            this.buttonDeleteSelectedRow.Size = new System.Drawing.Size(184, 23);
            this.buttonDeleteSelectedRow.TabIndex = 11;
            this.buttonDeleteSelectedRow.Text = "Usuń wybrany rekord";
            this.buttonDeleteSelectedRow.UseVisualStyleBackColor = true;
            this.buttonDeleteSelectedRow.Click += new System.EventHandler(this.buttonDeleteSelectedRow_Click);
            // 
            // buttonAddNewGame
            // 
            this.buttonAddNewGame.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonAddNewGame.Location = new System.Drawing.Point(671, 29);
            this.buttonAddNewGame.Name = "buttonAddNewGame";
            this.buttonAddNewGame.Size = new System.Drawing.Size(184, 23);
            this.buttonAddNewGame.TabIndex = 10;
            this.buttonAddNewGame.Text = "Dodaj nowy mecz";
            this.buttonAddNewGame.UseVisualStyleBackColor = true;
            this.buttonAddNewGame.Click += new System.EventHandler(this.buttonAddNewGame_Click);
            // 
            // dataGridViewGames
            // 
            this.dataGridViewGames.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridViewGames.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridViewGames.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewGames.Location = new System.Drawing.Point(12, 157);
            this.dataGridViewGames.Name = "dataGridViewGames";
            this.dataGridViewGames.Size = new System.Drawing.Size(653, 309);
            this.dataGridViewGames.TabIndex = 9;
            this.dataGridViewGames.CellBeginEdit += new System.Windows.Forms.DataGridViewCellCancelEventHandler(this.dataGridViewGames_CellBeginEdit);
            this.dataGridViewGames.CellEndEdit += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewGames_CellEndEdit);
            // 
            // comboBoxSeasonID
            // 
            this.comboBoxSeasonID.FormattingEnabled = true;
            this.comboBoxSeasonID.Location = new System.Drawing.Point(15, 31);
            this.comboBoxSeasonID.Name = "comboBoxSeasonID";
            this.comboBoxSeasonID.Size = new System.Drawing.Size(140, 21);
            this.comboBoxSeasonID.TabIndex = 0;
            // 
            // comboBoxGuestTeamID
            // 
            this.comboBoxGuestTeamID.FormattingEnabled = true;
            this.comboBoxGuestTeamID.Location = new System.Drawing.Point(303, 31);
            this.comboBoxGuestTeamID.Name = "comboBoxGuestTeamID";
            this.comboBoxGuestTeamID.Size = new System.Drawing.Size(140, 21);
            this.comboBoxGuestTeamID.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(40, 13);
            this.label1.TabIndex = 27;
            this.label1.Text = "Sezon:";
            // 
            // dateTimePickerGameDate
            // 
            this.dateTimePickerGameDate.CustomFormat = "yyyy-MM-dd HH:mm";
            this.dateTimePickerGameDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateTimePickerGameDate.Location = new System.Drawing.Point(447, 32);
            this.dateTimePickerGameDate.Name = "dateTimePickerGameDate";
            this.dateTimePickerGameDate.Size = new System.Drawing.Size(217, 20);
            this.dateTimePickerGameDate.TabIndex = 3;
            // 
            // labelRank
            // 
            this.labelRank.AutoSize = true;
            this.labelRank.Location = new System.Drawing.Point(12, 62);
            this.labelRank.Name = "labelRank";
            this.labelRank.Size = new System.Drawing.Size(76, 13);
            this.labelRank.TabIndex = 27;
            this.labelRank.Text = "Ranga meczu:";
            // 
            // comboBoxRank
            // 
            this.comboBoxRank.FormattingEnabled = true;
            this.comboBoxRank.Location = new System.Drawing.Point(15, 77);
            this.comboBoxRank.Name = "comboBoxRank";
            this.comboBoxRank.Size = new System.Drawing.Size(140, 21);
            this.comboBoxRank.TabIndex = 4;
            // 
            // labelArena
            // 
            this.labelArena.AutoSize = true;
            this.labelArena.Location = new System.Drawing.Point(156, 62);
            this.labelArena.Name = "labelArena";
            this.labelArena.Size = new System.Drawing.Size(46, 13);
            this.labelArena.TabIndex = 27;
            this.labelArena.Text = "Miejsce:";
            // 
            // comboBoxArenaID
            // 
            this.comboBoxArenaID.FormattingEnabled = true;
            this.comboBoxArenaID.Location = new System.Drawing.Point(159, 77);
            this.comboBoxArenaID.Name = "comboBoxArenaID";
            this.comboBoxArenaID.Size = new System.Drawing.Size(140, 21);
            this.comboBoxArenaID.TabIndex = 5;
            // 
            // numericUpDownAudience
            // 
            this.numericUpDownAudience.Location = new System.Drawing.Point(303, 78);
            this.numericUpDownAudience.Name = "numericUpDownAudience";
            this.numericUpDownAudience.Size = new System.Drawing.Size(140, 20);
            this.numericUpDownAudience.TabIndex = 6;
            // 
            // labelAudience
            // 
            this.labelAudience.AutoSize = true;
            this.labelAudience.Location = new System.Drawing.Point(300, 62);
            this.labelAudience.Name = "labelAudience";
            this.labelAudience.Size = new System.Drawing.Size(80, 13);
            this.labelAudience.TabIndex = 27;
            this.labelAudience.Text = "Liczba kibiców:";
            // 
            // numericUpDownOvertimes
            // 
            this.numericUpDownOvertimes.Location = new System.Drawing.Point(447, 78);
            this.numericUpDownOvertimes.Name = "numericUpDownOvertimes";
            this.numericUpDownOvertimes.Size = new System.Drawing.Size(87, 20);
            this.numericUpDownOvertimes.TabIndex = 7;
            // 
            // labelOvertime
            // 
            this.labelOvertime.AutoSize = true;
            this.labelOvertime.Location = new System.Drawing.Point(444, 62);
            this.labelOvertime.Name = "labelOvertime";
            this.labelOvertime.Size = new System.Drawing.Size(90, 13);
            this.labelOvertime.TabIndex = 27;
            this.labelOvertime.Text = "Liczba dogrywek:";
            // 
            // checkBoxHomeTeamWin
            // 
            this.checkBoxHomeTeamWin.AutoSize = true;
            this.checkBoxHomeTeamWin.Location = new System.Drawing.Point(538, 79);
            this.checkBoxHomeTeamWin.Name = "checkBoxHomeTeamWin";
            this.checkBoxHomeTeamWin.Size = new System.Drawing.Size(126, 17);
            this.checkBoxHomeTeamWin.TabIndex = 29;
            this.checkBoxHomeTeamWin.Text = "Wygrana gospodarzy";
            this.checkBoxHomeTeamWin.UseVisualStyleBackColor = true;
            // 
            // FormGames
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(867, 478);
            this.Controls.Add(this.checkBoxHomeTeamWin);
            this.Controls.Add(this.numericUpDownOvertimes);
            this.Controls.Add(this.numericUpDownAudience);
            this.Controls.Add(this.dateTimePickerGameDate);
            this.Controls.Add(this.comboBoxRank);
            this.Controls.Add(this.comboBoxSeasonID);
            this.Controls.Add(this.comboBoxGuestTeamID);
            this.Controls.Add(this.comboBoxArenaID);
            this.Controls.Add(this.comboBoxHomeTeamID);
            this.Controls.Add(this.labelDate);
            this.Controls.Add(this.labelGuestTeam);
            this.Controls.Add(this.labelRank);
            this.Controls.Add(this.labelOvertime);
            this.Controls.Add(this.labelAudience);
            this.Controls.Add(this.labelArena);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.labelHomeTeam);
            this.Controls.Add(this.labelFilter);
            this.Controls.Add(this.textBoxFilter);
            this.Controls.Add(this.buttonAcceptChanges);
            this.Controls.Add(this.buttonDeleteSelectedRow);
            this.Controls.Add(this.buttonAddNewGame);
            this.Controls.Add(this.dataGridViewGames);
            this.Name = "FormGames";
            this.Text = "Mecze";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewGames)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownAudience)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownOvertimes)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox comboBoxHomeTeamID;
        private System.Windows.Forms.Label labelDate;
        private System.Windows.Forms.Label labelGuestTeam;
        private System.Windows.Forms.Label labelHomeTeam;
        private System.Windows.Forms.Label labelFilter;
        private System.Windows.Forms.TextBox textBoxFilter;
        private System.Windows.Forms.Button buttonAcceptChanges;
        private System.Windows.Forms.Button buttonDeleteSelectedRow;
        private System.Windows.Forms.Button buttonAddNewGame;
        private System.Windows.Forms.DataGridView dataGridViewGames;
        private System.Windows.Forms.ComboBox comboBoxSeasonID;
        private System.Windows.Forms.ComboBox comboBoxGuestTeamID;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker dateTimePickerGameDate;
        private System.Windows.Forms.Label labelRank;
        private System.Windows.Forms.ComboBox comboBoxRank;
        private System.Windows.Forms.Label labelArena;
        private System.Windows.Forms.ComboBox comboBoxArenaID;
        private System.Windows.Forms.NumericUpDown numericUpDownAudience;
        private System.Windows.Forms.Label labelAudience;
        private System.Windows.Forms.NumericUpDown numericUpDownOvertimes;
        private System.Windows.Forms.Label labelOvertime;
        private System.Windows.Forms.CheckBox checkBoxHomeTeamWin;
    }
}
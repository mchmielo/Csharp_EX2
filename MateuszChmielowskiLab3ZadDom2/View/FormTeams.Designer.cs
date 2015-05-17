namespace MateuszChmielowskiLab3ZadDom2.View
{
    partial class FormTeams
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
            this.labelFilter = new System.Windows.Forms.Label();
            this.textBoxFilter = new System.Windows.Forms.TextBox();
            this.buttonAcceptChanges = new System.Windows.Forms.Button();
            this.buttonDeleteSelectedRow = new System.Windows.Forms.Button();
            this.buttonAddNewTeam = new System.Windows.Forms.Button();
            this.dataGridViewTeams = new System.Windows.Forms.DataGridView();
            this.numericUpDownYearOfFoundation = new System.Windows.Forms.NumericUpDown();
            this.textBoxTeamName = new System.Windows.Forms.TextBox();
            this.comboBoxArenaID = new System.Windows.Forms.ComboBox();
            this.labelTeamName = new System.Windows.Forms.Label();
            this.labelTeamArena = new System.Windows.Forms.Label();
            this.labelTeamYearOfFoundation = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTeams)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownYearOfFoundation)).BeginInit();
            this.SuspendLayout();
            // 
            // labelFilter
            // 
            this.labelFilter.AutoSize = true;
            this.labelFilter.Location = new System.Drawing.Point(268, 61);
            this.labelFilter.Name = "labelFilter";
            this.labelFilter.Size = new System.Drawing.Size(66, 13);
            this.labelFilter.TabIndex = 15;
            this.labelFilter.Text = "Filtruj wyniki:";
            // 
            // textBoxFilter
            // 
            this.textBoxFilter.Location = new System.Drawing.Point(340, 58);
            this.textBoxFilter.Name = "textBoxFilter";
            this.textBoxFilter.Size = new System.Drawing.Size(325, 20);
            this.textBoxFilter.TabIndex = 14;
            this.textBoxFilter.TextChanged += new System.EventHandler(this.textBoxFilter_TextChanged);
            // 
            // buttonAcceptChanges
            // 
            this.buttonAcceptChanges.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonAcceptChanges.Enabled = false;
            this.buttonAcceptChanges.Location = new System.Drawing.Point(671, 85);
            this.buttonAcceptChanges.Name = "buttonAcceptChanges";
            this.buttonAcceptChanges.Size = new System.Drawing.Size(184, 23);
            this.buttonAcceptChanges.TabIndex = 11;
            this.buttonAcceptChanges.Text = "Akceptuj zmiany";
            this.buttonAcceptChanges.UseVisualStyleBackColor = true;
            this.buttonAcceptChanges.Click += new System.EventHandler(this.buttonAcceptChanges_Click);
            // 
            // buttonDeleteSelectedRow
            // 
            this.buttonDeleteSelectedRow.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonDeleteSelectedRow.Location = new System.Drawing.Point(671, 56);
            this.buttonDeleteSelectedRow.Name = "buttonDeleteSelectedRow";
            this.buttonDeleteSelectedRow.Size = new System.Drawing.Size(184, 23);
            this.buttonDeleteSelectedRow.TabIndex = 12;
            this.buttonDeleteSelectedRow.Text = "Usuń wybrany rekord";
            this.buttonDeleteSelectedRow.UseVisualStyleBackColor = true;
            this.buttonDeleteSelectedRow.Click += new System.EventHandler(this.buttonDeleteSelectedRow_Click);
            // 
            // buttonAddNewTeam
            // 
            this.buttonAddNewTeam.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonAddNewTeam.Location = new System.Drawing.Point(671, 27);
            this.buttonAddNewTeam.Name = "buttonAddNewTeam";
            this.buttonAddNewTeam.Size = new System.Drawing.Size(184, 23);
            this.buttonAddNewTeam.TabIndex = 13;
            this.buttonAddNewTeam.Text = "Dodaj nowy zespół";
            this.buttonAddNewTeam.UseVisualStyleBackColor = true;
            this.buttonAddNewTeam.Click += new System.EventHandler(this.buttonAddNewTeam_Click);
            // 
            // dataGridViewTeams
            // 
            this.dataGridViewTeams.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridViewTeams.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridViewTeams.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewTeams.Location = new System.Drawing.Point(12, 85);
            this.dataGridViewTeams.Name = "dataGridViewTeams";
            this.dataGridViewTeams.Size = new System.Drawing.Size(653, 309);
            this.dataGridViewTeams.TabIndex = 10;
            this.dataGridViewTeams.CellBeginEdit += new System.Windows.Forms.DataGridViewCellCancelEventHandler(this.dataGridViewTeams_CellBeginEdit);
            this.dataGridViewTeams.CellEndEdit += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewTeams_CellEndEdit);
            // 
            // numericUpDownYearOfFoundation
            // 
            this.numericUpDownYearOfFoundation.Location = new System.Drawing.Point(545, 30);
            this.numericUpDownYearOfFoundation.Name = "numericUpDownYearOfFoundation";
            this.numericUpDownYearOfFoundation.Size = new System.Drawing.Size(120, 20);
            this.numericUpDownYearOfFoundation.TabIndex = 18;
            // 
            // textBoxTeamName
            // 
            this.textBoxTeamName.Location = new System.Drawing.Point(12, 30);
            this.textBoxTeamName.Name = "textBoxTeamName";
            this.textBoxTeamName.Size = new System.Drawing.Size(275, 20);
            this.textBoxTeamName.TabIndex = 16;
            // 
            // comboBoxArenaID
            // 
            this.comboBoxArenaID.FormattingEnabled = true;
            this.comboBoxArenaID.Location = new System.Drawing.Point(293, 30);
            this.comboBoxArenaID.Name = "comboBoxArenaID";
            this.comboBoxArenaID.Size = new System.Drawing.Size(246, 21);
            this.comboBoxArenaID.TabIndex = 19;
            // 
            // labelTeamName
            // 
            this.labelTeamName.AutoSize = true;
            this.labelTeamName.Location = new System.Drawing.Point(12, 14);
            this.labelTeamName.Name = "labelTeamName";
            this.labelTeamName.Size = new System.Drawing.Size(84, 13);
            this.labelTeamName.TabIndex = 15;
            this.labelTeamName.Text = "Nazwa zespołu:";
            // 
            // labelTeamArena
            // 
            this.labelTeamArena.AutoSize = true;
            this.labelTeamArena.Location = new System.Drawing.Point(290, 14);
            this.labelTeamArena.Name = "labelTeamArena";
            this.labelTeamArena.Size = new System.Drawing.Size(73, 13);
            this.labelTeamArena.TabIndex = 15;
            this.labelTeamArena.Text = "Hala zespołu:";
            // 
            // labelTeamYearOfFoundation
            // 
            this.labelTeamYearOfFoundation.AutoSize = true;
            this.labelTeamYearOfFoundation.Location = new System.Drawing.Point(542, 14);
            this.labelTeamYearOfFoundation.Name = "labelTeamYearOfFoundation";
            this.labelTeamYearOfFoundation.Size = new System.Drawing.Size(79, 13);
            this.labelTeamYearOfFoundation.TabIndex = 15;
            this.labelTeamYearOfFoundation.Text = "Rok założenia:";
            // 
            // FormTeams
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(867, 410);
            this.Controls.Add(this.comboBoxArenaID);
            this.Controls.Add(this.numericUpDownYearOfFoundation);
            this.Controls.Add(this.textBoxTeamName);
            this.Controls.Add(this.labelTeamYearOfFoundation);
            this.Controls.Add(this.labelTeamArena);
            this.Controls.Add(this.labelTeamName);
            this.Controls.Add(this.labelFilter);
            this.Controls.Add(this.textBoxFilter);
            this.Controls.Add(this.buttonAcceptChanges);
            this.Controls.Add(this.buttonDeleteSelectedRow);
            this.Controls.Add(this.buttonAddNewTeam);
            this.Controls.Add(this.dataGridViewTeams);
            this.Name = "FormTeams";
            this.Text = "Zespoły";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewTeams)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownYearOfFoundation)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label labelFilter;
        private System.Windows.Forms.TextBox textBoxFilter;
        private System.Windows.Forms.Button buttonAcceptChanges;
        private System.Windows.Forms.Button buttonDeleteSelectedRow;
        private System.Windows.Forms.Button buttonAddNewTeam;
        private System.Windows.Forms.DataGridView dataGridViewTeams;
        private System.Windows.Forms.NumericUpDown numericUpDownYearOfFoundation;
        private System.Windows.Forms.TextBox textBoxTeamName;
        private System.Windows.Forms.ComboBox comboBoxArenaID;
        private System.Windows.Forms.Label labelTeamName;
        private System.Windows.Forms.Label labelTeamArena;
        private System.Windows.Forms.Label labelTeamYearOfFoundation;
    }
}
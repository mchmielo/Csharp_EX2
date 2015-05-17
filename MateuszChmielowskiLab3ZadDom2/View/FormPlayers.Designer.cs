namespace MateuszChmielowskiLab3ZadDom2
{
    partial class FormPlayers
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
            this.dataGridViewPlayers = new System.Windows.Forms.DataGridView();
            this.buttonAddUnrealPlayer = new System.Windows.Forms.Button();
            this.buttonDeleteSelectedRow = new System.Windows.Forms.Button();
            this.buttonAcceptChanges = new System.Windows.Forms.Button();
            this.textBoxFilter = new System.Windows.Forms.TextBox();
            this.labelFilter = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewPlayers)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridViewPlayers
            // 
            this.dataGridViewPlayers.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridViewPlayers.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridViewPlayers.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewPlayers.Location = new System.Drawing.Point(12, 54);
            this.dataGridViewPlayers.Name = "dataGridViewPlayers";
            this.dataGridViewPlayers.Size = new System.Drawing.Size(653, 309);
            this.dataGridViewPlayers.TabIndex = 0;
            this.dataGridViewPlayers.CellBeginEdit += new System.Windows.Forms.DataGridViewCellCancelEventHandler(this.dataGridViewPlayers_CellBeginEdit);
            this.dataGridViewPlayers.CellEndEdit += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewPlayers_CellEndEdit);
            // 
            // buttonAddUnrealPlayer
            // 
            this.buttonAddUnrealPlayer.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonAddUnrealPlayer.Location = new System.Drawing.Point(671, 54);
            this.buttonAddUnrealPlayer.Name = "buttonAddUnrealPlayer";
            this.buttonAddUnrealPlayer.Size = new System.Drawing.Size(184, 23);
            this.buttonAddUnrealPlayer.TabIndex = 1;
            this.buttonAddUnrealPlayer.Text = "Dodaj losowego zawodnika";
            this.buttonAddUnrealPlayer.UseVisualStyleBackColor = true;
            this.buttonAddUnrealPlayer.Click += new System.EventHandler(this.buttonAddUnrealPlayer_Click);
            // 
            // buttonDeleteSelectedRow
            // 
            this.buttonDeleteSelectedRow.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonDeleteSelectedRow.Location = new System.Drawing.Point(671, 83);
            this.buttonDeleteSelectedRow.Name = "buttonDeleteSelectedRow";
            this.buttonDeleteSelectedRow.Size = new System.Drawing.Size(184, 23);
            this.buttonDeleteSelectedRow.TabIndex = 1;
            this.buttonDeleteSelectedRow.Text = "Usuń wybrany rekord";
            this.buttonDeleteSelectedRow.UseVisualStyleBackColor = true;
            this.buttonDeleteSelectedRow.Click += new System.EventHandler(this.buttonDeleteSelectedRow_Click);
            // 
            // buttonAcceptChanges
            // 
            this.buttonAcceptChanges.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonAcceptChanges.Enabled = false;
            this.buttonAcceptChanges.Location = new System.Drawing.Point(671, 112);
            this.buttonAcceptChanges.Name = "buttonAcceptChanges";
            this.buttonAcceptChanges.Size = new System.Drawing.Size(184, 23);
            this.buttonAcceptChanges.TabIndex = 1;
            this.buttonAcceptChanges.Text = "Akceptuj zmiany";
            this.buttonAcceptChanges.UseVisualStyleBackColor = true;
            this.buttonAcceptChanges.Click += new System.EventHandler(this.buttonAcceptChanges_Click);
            // 
            // textBoxFilter
            // 
            this.textBoxFilter.Location = new System.Drawing.Point(340, 28);
            this.textBoxFilter.Name = "textBoxFilter";
            this.textBoxFilter.Size = new System.Drawing.Size(325, 20);
            this.textBoxFilter.TabIndex = 2;
            this.textBoxFilter.TextChanged += new System.EventHandler(this.textBoxFilter_TextChanged);
            // 
            // labelFilter
            // 
            this.labelFilter.AutoSize = true;
            this.labelFilter.Location = new System.Drawing.Point(268, 31);
            this.labelFilter.Name = "labelFilter";
            this.labelFilter.Size = new System.Drawing.Size(66, 13);
            this.labelFilter.TabIndex = 3;
            this.labelFilter.Text = "Filtruj wyniki:";
            // 
            // FormPlayers
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(867, 391);
            this.Controls.Add(this.labelFilter);
            this.Controls.Add(this.textBoxFilter);
            this.Controls.Add(this.buttonAcceptChanges);
            this.Controls.Add(this.buttonDeleteSelectedRow);
            this.Controls.Add(this.buttonAddUnrealPlayer);
            this.Controls.Add(this.dataGridViewPlayers);
            this.Name = "FormPlayers";
            this.Text = "Zawodnicy";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewPlayers)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridViewPlayers;
        private System.Windows.Forms.Button buttonAddUnrealPlayer;
        private System.Windows.Forms.Button buttonDeleteSelectedRow;
        private System.Windows.Forms.Button buttonAcceptChanges;
        private System.Windows.Forms.TextBox textBoxFilter;
        private System.Windows.Forms.Label labelFilter;
    }
}


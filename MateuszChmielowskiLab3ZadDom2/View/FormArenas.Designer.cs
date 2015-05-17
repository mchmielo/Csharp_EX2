namespace MateuszChmielowskiLab3ZadDom2.View
{
    partial class FormArenas
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
            this.buttonAddNewArena = new System.Windows.Forms.Button();
            this.dataGridViewArenas = new System.Windows.Forms.DataGridView();
            this.textBoxArenaName = new System.Windows.Forms.TextBox();
            this.textBoxArenaAdress = new System.Windows.Forms.TextBox();
            this.numericUpDownArenaCapacity = new System.Windows.Forms.NumericUpDown();
            this.labelArenaName = new System.Windows.Forms.Label();
            this.labelArenaAdress = new System.Windows.Forms.Label();
            this.labelArenaCapacity = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewArenas)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownArenaCapacity)).BeginInit();
            this.SuspendLayout();
            // 
            // labelFilter
            // 
            this.labelFilter.AutoSize = true;
            this.labelFilter.Location = new System.Drawing.Point(268, 56);
            this.labelFilter.Name = "labelFilter";
            this.labelFilter.Size = new System.Drawing.Size(66, 13);
            this.labelFilter.TabIndex = 9;
            this.labelFilter.Text = "Filtruj wyniki:";
            // 
            // textBoxFilter
            // 
            this.textBoxFilter.Location = new System.Drawing.Point(340, 53);
            this.textBoxFilter.Name = "textBoxFilter";
            this.textBoxFilter.Size = new System.Drawing.Size(325, 20);
            this.textBoxFilter.TabIndex = 8;
            this.textBoxFilter.TextChanged += new System.EventHandler(this.textBoxFilter_TextChanged);
            // 
            // buttonAcceptChanges
            // 
            this.buttonAcceptChanges.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonAcceptChanges.Enabled = false;
            this.buttonAcceptChanges.Location = new System.Drawing.Point(671, 80);
            this.buttonAcceptChanges.Name = "buttonAcceptChanges";
            this.buttonAcceptChanges.Size = new System.Drawing.Size(184, 23);
            this.buttonAcceptChanges.TabIndex = 5;
            this.buttonAcceptChanges.Text = "Akceptuj zmiany";
            this.buttonAcceptChanges.UseVisualStyleBackColor = true;
            this.buttonAcceptChanges.Click += new System.EventHandler(this.buttonAcceptChanges_Click);
            // 
            // buttonDeleteSelectedRow
            // 
            this.buttonDeleteSelectedRow.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonDeleteSelectedRow.Location = new System.Drawing.Point(671, 51);
            this.buttonDeleteSelectedRow.Name = "buttonDeleteSelectedRow";
            this.buttonDeleteSelectedRow.Size = new System.Drawing.Size(184, 23);
            this.buttonDeleteSelectedRow.TabIndex = 6;
            this.buttonDeleteSelectedRow.Text = "Usuń wybrany rekord";
            this.buttonDeleteSelectedRow.UseVisualStyleBackColor = true;
            this.buttonDeleteSelectedRow.Click += new System.EventHandler(this.buttonDeleteSelectedRow_Click);
            // 
            // buttonAddNewArena
            // 
            this.buttonAddNewArena.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonAddNewArena.Location = new System.Drawing.Point(671, 22);
            this.buttonAddNewArena.Name = "buttonAddNewArena";
            this.buttonAddNewArena.Size = new System.Drawing.Size(184, 23);
            this.buttonAddNewArena.TabIndex = 7;
            this.buttonAddNewArena.Text = "Dodaj nową halę";
            this.buttonAddNewArena.UseVisualStyleBackColor = true;
            this.buttonAddNewArena.Click += new System.EventHandler(this.buttonAddNewArena_Click);
            // 
            // dataGridViewArenas
            // 
            this.dataGridViewArenas.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridViewArenas.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridViewArenas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewArenas.Location = new System.Drawing.Point(12, 80);
            this.dataGridViewArenas.Name = "dataGridViewArenas";
            this.dataGridViewArenas.Size = new System.Drawing.Size(653, 309);
            this.dataGridViewArenas.TabIndex = 4;
            this.dataGridViewArenas.CellBeginEdit += new System.Windows.Forms.DataGridViewCellCancelEventHandler(this.dataGridViewArenas_CellBeginEdit);
            this.dataGridViewArenas.CellEndEdit += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewArenas_CellEndEdit);
            // 
            // textBoxArenaName
            // 
            this.textBoxArenaName.Location = new System.Drawing.Point(12, 25);
            this.textBoxArenaName.Name = "textBoxArenaName";
            this.textBoxArenaName.Size = new System.Drawing.Size(218, 20);
            this.textBoxArenaName.TabIndex = 10;
            // 
            // textBoxArenaAdress
            // 
            this.textBoxArenaAdress.Location = new System.Drawing.Point(236, 25);
            this.textBoxArenaAdress.Multiline = true;
            this.textBoxArenaAdress.Name = "textBoxArenaAdress";
            this.textBoxArenaAdress.Size = new System.Drawing.Size(303, 20);
            this.textBoxArenaAdress.TabIndex = 11;
            // 
            // numericUpDownArenaCapacity
            // 
            this.numericUpDownArenaCapacity.Location = new System.Drawing.Point(545, 25);
            this.numericUpDownArenaCapacity.Name = "numericUpDownArenaCapacity";
            this.numericUpDownArenaCapacity.Size = new System.Drawing.Size(120, 20);
            this.numericUpDownArenaCapacity.TabIndex = 12;
            // 
            // labelArenaName
            // 
            this.labelArenaName.AutoSize = true;
            this.labelArenaName.Location = new System.Drawing.Point(9, 9);
            this.labelArenaName.Name = "labelArenaName";
            this.labelArenaName.Size = new System.Drawing.Size(62, 13);
            this.labelArenaName.TabIndex = 9;
            this.labelArenaName.Text = "Nazwa hali:";
            // 
            // labelArenaAdress
            // 
            this.labelArenaAdress.AutoSize = true;
            this.labelArenaAdress.Location = new System.Drawing.Point(236, 9);
            this.labelArenaAdress.Name = "labelArenaAdress";
            this.labelArenaAdress.Size = new System.Drawing.Size(56, 13);
            this.labelArenaAdress.TabIndex = 9;
            this.labelArenaAdress.Text = "Adres hali:";
            // 
            // labelArenaCapacity
            // 
            this.labelArenaCapacity.AutoSize = true;
            this.labelArenaCapacity.Location = new System.Drawing.Point(542, 9);
            this.labelArenaCapacity.Name = "labelArenaCapacity";
            this.labelArenaCapacity.Size = new System.Drawing.Size(81, 13);
            this.labelArenaCapacity.TabIndex = 9;
            this.labelArenaCapacity.Text = "Pojemność hali:";
            // 
            // FormArenas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(867, 458);
            this.Controls.Add(this.numericUpDownArenaCapacity);
            this.Controls.Add(this.textBoxArenaAdress);
            this.Controls.Add(this.textBoxArenaName);
            this.Controls.Add(this.labelArenaCapacity);
            this.Controls.Add(this.labelArenaAdress);
            this.Controls.Add(this.labelArenaName);
            this.Controls.Add(this.labelFilter);
            this.Controls.Add(this.textBoxFilter);
            this.Controls.Add(this.buttonAcceptChanges);
            this.Controls.Add(this.buttonDeleteSelectedRow);
            this.Controls.Add(this.buttonAddNewArena);
            this.Controls.Add(this.dataGridViewArenas);
            this.Name = "FormArenas";
            this.Text = "Hale sportowe";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewArenas)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDownArenaCapacity)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label labelFilter;
        private System.Windows.Forms.TextBox textBoxFilter;
        private System.Windows.Forms.Button buttonAcceptChanges;
        private System.Windows.Forms.Button buttonDeleteSelectedRow;
        private System.Windows.Forms.Button buttonAddNewArena;
        private System.Windows.Forms.DataGridView dataGridViewArenas;
        private System.Windows.Forms.TextBox textBoxArenaName;
        private System.Windows.Forms.TextBox textBoxArenaAdress;
        private System.Windows.Forms.NumericUpDown numericUpDownArenaCapacity;
        private System.Windows.Forms.Label labelArenaName;
        private System.Windows.Forms.Label labelArenaAdress;
        private System.Windows.Forms.Label labelArenaCapacity;
    }
}
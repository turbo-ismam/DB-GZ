namespace GameZoneForm
{
    partial class Form1
    {
        /// <summary>
        /// Variabile di progettazione necessaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Pulire le risorse in uso.
        /// </summary>
        /// <param name="disposing">ha valore true se le risorse gestite devono essere eliminate, false in caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Codice generato da Progettazione Windows Form

        /// <summary>
        /// Metodo necessario per il supporto della finestra di progettazione. Non modificare
        /// il contenuto del metodo con l'editor di codice.
        /// </summary>
        private void InitializeComponent()
        {
            this.runButton = new System.Windows.Forms.Button();
            this.queryTextBox = new System.Windows.Forms.TextBox();
            this.sqlTextBox = new System.Windows.Forms.TextBox();
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.menuTab = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.queryNumber = new System.Windows.Forms.ComboBox();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.insertTab = new System.Windows.Forms.TabControl();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.comboBoxCF = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.textBoxNickname = new System.Windows.Forms.TextBox();
            this.textBoxEmail = new System.Windows.Forms.TextBox();
            this.tabPage5 = new System.Windows.Forms.TabPage();
            this.comboBoxInsert = new System.Windows.Forms.ComboBox();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.labelResult = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.menuTab.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.insertTab.SuspendLayout();
            this.tabPage4.SuspendLayout();
            this.SuspendLayout();
            // 
            // runButton
            // 
            this.runButton.Location = new System.Drawing.Point(615, 6);
            this.runButton.Name = "runButton";
            this.runButton.Size = new System.Drawing.Size(168, 23);
            this.runButton.TabIndex = 0;
            this.runButton.Text = "RUN QUERY";
            this.runButton.UseVisualStyleBackColor = true;
            this.runButton.Click += new System.EventHandler(this.runButton_Click);
            // 
            // queryTextBox
            // 
            this.queryTextBox.Location = new System.Drawing.Point(619, 35);
            this.queryTextBox.Multiline = true;
            this.queryTextBox.Name = "queryTextBox";
            this.queryTextBox.Size = new System.Drawing.Size(164, 168);
            this.queryTextBox.TabIndex = 1;
            // 
            // sqlTextBox
            // 
            this.sqlTextBox.Location = new System.Drawing.Point(619, 209);
            this.sqlTextBox.Multiline = true;
            this.sqlTextBox.Name = "sqlTextBox";
            this.sqlTextBox.Size = new System.Drawing.Size(164, 186);
            this.sqlTextBox.TabIndex = 3;
            // 
            // dataGridView
            // 
            this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView.Location = new System.Drawing.Point(8, 35);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.Size = new System.Drawing.Size(601, 360);
            this.dataGridView.TabIndex = 4;
            // 
            // menuTab
            // 
            this.menuTab.Controls.Add(this.tabPage1);
            this.menuTab.Controls.Add(this.tabPage2);
            this.menuTab.Controls.Add(this.tabPage3);
            this.menuTab.Location = new System.Drawing.Point(0, 12);
            this.menuTab.Name = "menuTab";
            this.menuTab.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.menuTab.SelectedIndex = 0;
            this.menuTab.Size = new System.Drawing.Size(801, 433);
            this.menuTab.TabIndex = 5;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.queryNumber);
            this.tabPage1.Controls.Add(this.dataGridView);
            this.tabPage1.Controls.Add(this.sqlTextBox);
            this.tabPage1.Controls.Add(this.queryTextBox);
            this.tabPage1.Controls.Add(this.runButton);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(793, 407);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "View";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // queryNumber
            // 
            this.queryNumber.FormattingEnabled = true;
            this.queryNumber.Items.AddRange(new object[] {
            "1",
            "2",
            "3",
            "4",
            "5",
            "6"});
            this.queryNumber.Location = new System.Drawing.Point(8, 8);
            this.queryNumber.Name = "queryNumber";
            this.queryNumber.Size = new System.Drawing.Size(601, 21);
            this.queryNumber.TabIndex = 5;
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.insertTab);
            this.tabPage2.Controls.Add(this.comboBoxInsert);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(793, 407);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Insert";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // insertTab
            // 
            this.insertTab.Controls.Add(this.tabPage4);
            this.insertTab.Controls.Add(this.tabPage5);
            this.insertTab.Location = new System.Drawing.Point(38, 47);
            this.insertTab.Name = "insertTab";
            this.insertTab.SelectedIndex = 0;
            this.insertTab.Size = new System.Drawing.Size(716, 309);
            this.insertTab.TabIndex = 1;
            // 
            // tabPage4
            // 
            this.tabPage4.Controls.Add(this.labelResult);
            this.tabPage4.Controls.Add(this.comboBoxCF);
            this.tabPage4.Controls.Add(this.button1);
            this.tabPage4.Controls.Add(this.label3);
            this.tabPage4.Controls.Add(this.label2);
            this.tabPage4.Controls.Add(this.label1);
            this.tabPage4.Controls.Add(this.textBoxNickname);
            this.tabPage4.Controls.Add(this.textBoxEmail);
            this.tabPage4.Location = new System.Drawing.Point(4, 22);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage4.Size = new System.Drawing.Size(708, 283);
            this.tabPage4.TabIndex = 0;
            this.tabPage4.Text = "ACCOUNT";
            this.tabPage4.UseVisualStyleBackColor = true;
            // 
            // comboBoxCF
            // 
            this.comboBoxCF.FormattingEnabled = true;
            this.comboBoxCF.Items.AddRange(new object[] {
            "1",
            "12",
            "123",
            "1234",
            "234",
            "34",
            "4"});
            this.comboBoxCF.Location = new System.Drawing.Point(95, 93);
            this.comboBoxCF.Name = "comboBoxCF";
            this.comboBoxCF.Size = new System.Drawing.Size(147, 21);
            this.comboBoxCF.TabIndex = 7;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(95, 120);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 6;
            this.button1.Text = "Submit";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(36, 96);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(20, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "CF";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(36, 74);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(55, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Nickname";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(36, 48);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(39, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "EMAIL";
            // 
            // textBoxNickname
            // 
            this.textBoxNickname.Location = new System.Drawing.Point(95, 67);
            this.textBoxNickname.Name = "textBoxNickname";
            this.textBoxNickname.Size = new System.Drawing.Size(147, 20);
            this.textBoxNickname.TabIndex = 1;
            // 
            // textBoxEmail
            // 
            this.textBoxEmail.Location = new System.Drawing.Point(95, 41);
            this.textBoxEmail.Name = "textBoxEmail";
            this.textBoxEmail.Size = new System.Drawing.Size(147, 20);
            this.textBoxEmail.TabIndex = 0;
            // 
            // tabPage5
            // 
            this.tabPage5.Location = new System.Drawing.Point(4, 22);
            this.tabPage5.Name = "tabPage5";
            this.tabPage5.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage5.Size = new System.Drawing.Size(708, 283);
            this.tabPage5.TabIndex = 1;
            this.tabPage5.Text = "tabPage5";
            this.tabPage5.UseVisualStyleBackColor = true;
            // 
            // comboBoxInsert
            // 
            this.comboBoxInsert.FormattingEnabled = true;
            this.comboBoxInsert.Items.AddRange(new object[] {
            "ACCOUNT",
            "ACHIEVEMENT",
            "ACQUISTO",
            "AGGIORNAMENTO",
            "BUG",
            "CASA_PRODUTTRICE",
            "CHIAVI",
            "CONSEGUIMENTO",
            "ETICHETTA",
            "FRIENDLIST",
            "GENERE",
            "GIOCO",
            "HARDWARE",
            "LAVORO",
            "LIBRERIA",
            "PERSONA",
            "RISCATTO",
            "SEGNALAZIONE",
            "SOFTWARE",
            "TIPOLOGIA",
            "TRANSAZIONE",
            "VENDITA_HARDWARE",
            "VENDITA_SOFTWARE",
            "VETRINA"});
            this.comboBoxInsert.Location = new System.Drawing.Point(38, 20);
            this.comboBoxInsert.Name = "comboBoxInsert";
            this.comboBoxInsert.Size = new System.Drawing.Size(121, 21);
            this.comboBoxInsert.TabIndex = 0;
            this.comboBoxInsert.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // tabPage3
            // 
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(793, 407);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "tabPage3";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // labelResult
            // 
            this.labelResult.AutoSize = true;
            this.labelResult.Location = new System.Drawing.Point(92, 12);
            this.labelResult.Name = "labelResult";
            this.labelResult.Size = new System.Drawing.Size(61, 13);
            this.labelResult.TabIndex = 8;
            this.labelResult.Text = "Inserire dati";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(799, 450);
            this.Controls.Add(this.menuTab);
            this.Name = "Form1";
            this.Text = "GameZoneDB";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.menuTab.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.insertTab.ResumeLayout(false);
            this.tabPage4.ResumeLayout(false);
            this.tabPage4.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button runButton;
        private System.Windows.Forms.TextBox queryTextBox;
        private System.Windows.Forms.TextBox sqlTextBox;
        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.TabControl menuTab;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.ComboBox comboBoxInsert;
        private System.Windows.Forms.TabControl insertTab;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.TabPage tabPage5;
        private System.Windows.Forms.ComboBox queryNumber;
        private System.Windows.Forms.ComboBox comboBoxCF;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBoxNickname;
        private System.Windows.Forms.TextBox textBoxEmail;
        private System.Windows.Forms.Label labelResult;
    }
}


using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GameZoneForm
{
    public partial class Form1 : Form
    {
        gameZoneDataClassesDataContext db = new gameZoneDataClassesDataContext();
        public Form1()
        {
            InitializeComponent();
        }

        private void runButton_Click(object sender, EventArgs e)
        {
            int l = int.Parse(queryNumber.Text);
            switch (l)
            {
                case 1:
                    ExecuteQuery_1();
                    break;
                case 2:
                    ExecuteQuery_2();
                    break;
                case 3:
                    ExecuteQuery_3();
                    break;
                case 4:
                    ExecuteQuery_4();
                    break;
                case 5:
                    ExecuteQuery_5();
                    break;
                case 6:
                    ExecuteQuery_6();
                    break;
                default:
                    break;
            }
        }

        private void showResults(System.Linq.IQueryable queryResult, string queryDefinition, string querySQL, bool removeLastColum, string message)
        {
            // binding della query con il dataGridViewQuery della form
            // se necessario si cancella l'ultima colonna che rappresenta il link a category
            dataGridView.Visible = true;

            dataGridView.DataSource = queryResult;
            dataGridView.Visible = true;
            if (removeLastColum)
                dataGridView.Columns.RemoveAt(dataGridView.Columns.Count - 1);
            queryTextBox.Clear();
            sqlTextBox.Clear();
            if (message != null)
                queryDefinition = message + " : " + queryDefinition;
            queryTextBox.AppendText(queryDefinition);
            sqlTextBox.AppendText(querySQL);
        }

        private void Execute_query()
        {
            var query = from p in db.CASA_PRODUTTRICE
                        where String.Compare(p.Nome, "M", true) > 0
                        select p;
            string queryDefinition = "";
            showResults(query, queryDefinition, query.ToString(), false, "query 1");
        }

        private void ExecuteQuery_1()
        {
            // query 1:
            // dammi tutti i prodotti per cui il nome della categoria 
            // inizia con una lettera maggiore della lettera M

            var query = from c in db.CASA_PRODUTTRICE
                        join s in db.SOFTWARE on c.Partita_iva equals s.Partita_iva
                        select s;
            string queryDefinition = "visualizza tutti i giochi prodotti da jojoEnterprise";
            showResults(query, queryDefinition, query.ToString(), false, "query 1 : ");
        }
        private void ExecuteQuery_2()
        {
        }

        private void ExecuteQuery_3()
        {
        }

        private void ExecuteQuery_4()
        {

        }

        private void ExecuteQuery_5()
        {
        }

        private void ExecuteQuery_6()
        { }


        private void AddNewAccount()
        {
            using (gameZoneDataClassesDataContext db = new gameZoneDataClassesDataContext())
            {
                ACCOUNT acc = new ACCOUNT();
                ACCOUNT2 acc2 = new ACCOUNT2();

                // fields to be insert
                acc.email = textBoxEmail.Text;
                acc2.email = textBoxEmail.Text;
                acc.Nickname = textBoxNickname.Text;
                acc.Data_creazione = DateTime.Now;
                acc.Numero_amici = 0;
                acc.Achievement_completati = 0;
                acc.Software_possieduti = 0;
                acc.CF = comboBoxCF.Text;
                db.ACCOUNT.InsertOnSubmit(acc);
                db.ACCOUNT2.InsertOnSubmit(acc2);
                db.SubmitChanges();
                textBoxEmail.Clear();
                textBoxNickname.Clear();
            };
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            AddNewAccount();
            string text = "Query Eseguita!";
            MessageBox.Show(text);
        }
    }
}

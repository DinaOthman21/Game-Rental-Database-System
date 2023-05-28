using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace WindowsFormsApp4
{
    public partial class Form8 : Form
    {
        public Form8()
        {
            InitializeComponent();
        }
        void search()
        {
            string SQL = "SELECT game_id,price,Date,languge,name,description,re_data,up_data FROM project_schema.game where game_id like '%" + textBox1.Text + "%' ";
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-7MFDRCOP;Initial Catalog=project;Integrated Security=True");
            con.Open();
            SqlCommand smd = new SqlCommand(SQL, con);
            SqlDataReader rd = smd.ExecuteReader();
            dt.Load(rd);
            dataGridView1.DataSource = dt;
            con.Close();

        }

        private void Form8_Load(object sender, EventArgs e)
        {
            string SQL = "SELECT game_id,price,Date,languge,name,description,re_data,up_data FROM project_schema.game";
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-7MFDRCOP;Initial Catalog=project;Integrated Security=True");
            con.Open();
            SqlCommand smd = new SqlCommand(SQL, con);
            SqlDataReader rd = smd.ExecuteReader();
            dt.Load(rd);
            dataGridView1.DataSource = dt;
            con.Close();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            search();
        }
    }
}

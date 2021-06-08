
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            // 1- Create Connection Object
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|fue.mdf;Integrated Security=True";

            // 2- Create SQL Select statement
            string strSelect = "SELECT * FROM student "
                + " WHERE StudentId = '" + TextBox1.Text + "' AND Password = '"
                + TextBox2.Text + "'";

            // 3- Create SQL Select Command
            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            // 4- Create data reader object
            SqlDataReader reader;

            // 5- Open the database
            conn.Open();

            // 6- Execute Select command

            reader = cmdSelect.ExecuteReader();

            if (reader.Read())
                lblMsg.Text = "User Found. Successfully signed in.";
            else
                lblMsg.Text = "User Not Found. Please sign up first.";

            // 7- close the database
            conn.Close();

        }

    }
}

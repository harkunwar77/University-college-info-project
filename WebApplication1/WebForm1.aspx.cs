using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace WebApplication1
{

    public partial class WebForm1 : System.Web.UI.Page
    {


        protected void Page_Load(int sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = |DataDirectory|\mydatabase.mdf; Integrated Security = True; Connect Timeout = 30");
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText="insert into LoginTable values('"+TextBox3.Text+"', '"+TextBox4.Text+"')";
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }  
}
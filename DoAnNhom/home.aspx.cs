using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnNhom
{
    public partial class home : System.Web.UI.Page
    {
        string con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\OS\source\repos\DoAnNhom\DoAnNhom\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection stcn = new SqlConnection(con);
            stcn.Open();
            string name = Request.Form["user"].ToString();
            string pwd = Convert.ToString(Request.Form["pass"]);
            string sql = "SELECT TENDN,MATKHAU FROM KHACHHANG where TENDN='" + name + "'and MATKHAU='" + pwd + "'";
            DataTable tb = new DataTable();
            try
            {
                SqlDataAdapter adap = new SqlDataAdapter(sql, stcn);
                adap.Fill(tb);
            }
            catch (SqlException err)
            {
                Response.Write("<b>Error</b>" + err.Message + "<p/>");
            }
            if (tb.Rows.Count != 0)
            {
                Response.Cookies["TENDN"].Value = name;
                Response.Redirect("sanpham.aspx");
            }
            else
            {
                this.Label1.Text = "Username or password incorrect!";
            }
            stcn.Close();
        }

        
    }
}
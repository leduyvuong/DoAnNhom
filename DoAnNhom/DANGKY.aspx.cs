using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnNhom
{
    public partial class DANGKY : System.Web.UI.Page
    {
        string con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\OS\source\repos\DoAnNhom\DoAnNhom\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd;
            string name = Request.Form["TENKH"].ToString();
            string tendn = Request.Form["TENDN"].ToString();
            string pwd = Convert.ToString(Request.Form["pass"]);
            string cPwd = Convert.ToString(Request.Form["cPass"]);
            if (String.Compare(pwd,cPwd,false) == 0)
            {
                try
                {
                    SqlConnection stcn = new SqlConnection(con);
                    stcn.Open();
                    string q1 = "SELECT Count(*) from KHACHHANG where TENDN ='" + tendn + "'";
                    cmd = new SqlCommand(q1, stcn);
                    int dem = (int)cmd.ExecuteScalar();
                    if (dem > 0)
                    {
                        this.Label1.Text = "Your username have been used";
                    }
                    else
                    {
                        string q = "INSERT INTO KHACHHANG(TENKH,TENDN,MATKHAU) VALUES ('" + name + "','" + tendn + "','" + pwd + "')";
                        cmd = new SqlCommand(q, stcn);
                        cmd.ExecuteNonQuery();
                        Server.Transfer("home.aspx");
                    }
                    stcn.Close();
                } catch( SqlException err)
                {
                    Response.Write(err.Message);
                }
            }else
            {
                this.Label1.Text += " Cofirm password error";
            }
        }
    }
}
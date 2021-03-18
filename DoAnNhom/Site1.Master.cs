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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        string con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\OS\source\repos\DoAnNhom\DoAnNhom\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            try
            {
                string q = "select * from LOAIHANG";
                SqlDataAdapter adap = new SqlDataAdapter(q, con);
                DataTable tb = new DataTable();
                adap.Fill(tb);
                this.DataList1.DataSource = tb;
                this.DataList1.DataBind();
            }
            catch (SqlException err)
            {
                Response.Write(err.Message);
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string maloai = ((LinkButton)sender).CommandArgument;
            Context.Items["ml"] = maloai;
            Server.Transfer("sanpham.aspx");
        }
    }
}
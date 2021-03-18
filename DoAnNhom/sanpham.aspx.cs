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
    public partial class sanpham : System.Web.UI.Page
    {
        string con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\OS\source\repos\DoAnNhom\DoAnNhom\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            
            string q;
            if (Context.Items["ml"] == null)
                q = "select * from SANPHAM";
            else
            {
                string maloai = Context.Items["ml"].ToString();
                q = "select * from SANPHAM where MALOAI='" + maloai + "'";
            }
            try
            {
                DataTable tb = new DataTable();
                SqlDataAdapter adap = new SqlDataAdapter(q, con);
                adap.Fill(tb);
                this.DataList2.DataSource = tb;
                this.DataList2.DataBind();
            } catch (SqlException err)
            {
                Response.Write(err.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button mua = (Button)sender;
            string masp = mua.CommandArgument.ToString();
            DataListItem item = (DataListItem)mua.Parent;
            int soluong = int.Parse(((DropDownList)item.FindControl("DropDownList1")).SelectedValue);
                try
                {                   
                    string makh = Request.Cookies["TENDN"].Value.ToString();                
                    SqlConnection stcn = new SqlConnection(con);
                    stcn.Open();
                    string query = "select * from HOADON " +
                        "where TENDN ='" + makh + "' and MASP='" + masp + "'";
                    SqlCommand command = new SqlCommand(query, stcn);
                    SqlDataReader doc = command.ExecuteReader();
                    if (doc.Read())
                    {
                        doc.Close();
                        command = new SqlCommand("UPDATE HOADON set SOLUONG=SOLUONG +" + soluong + " where TENDN ='" +
                                                makh + "' and MASP ='" + masp + "'", stcn);

                    }
                    else
                    {
                        doc.Close();
                        command = new SqlCommand("INSERT into HOADON(TENDN,MASP,SOLUONG) values('" +
                                                    makh + "','" + masp + "'," + soluong + ")", stcn);
                    }
                    command.ExecuteNonQuery();
                    stcn.Close();
                } catch (SqlException err)
                {
                    Response.Write("<script>alert('Bạn phải đăng nhập để đặt hàng');</script>");
                    Server.Transfer("home.aspx");
                    
                }
            
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Cookies["TENDN"].Value = null;
            Server.Transfer("home.aspx");
        }

        protected void btn123_Click(object sender, EventArgs e)
        {
            string q;         
            string search = txt123.Text.Trim().ToUpper();
            
            
            if (search == null)
                q = "select * from SANPHAM";
            else
            {
                
                q = "select * from SANPHAM where TENSP like '%" + search + "%'";
            }
            try
            {
                DataTable tb = new DataTable();
                SqlDataAdapter adap = new SqlDataAdapter(q, con);
                adap.Fill(tb);
                this.DataList2.DataSource = tb;
                this.DataList2.DataBind();
            }
            catch (SqlException err)
            {
                Response.Write(err.Message);
            }
        }
    }
}
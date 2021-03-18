using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Management;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoAnNhom
{
    public partial class giohang : System.Web.UI.Page
    {
        string con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\OS\source\repos\DoAnNhom\DoAnNhom\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                SqlConnection stcn = new SqlConnection(con);
                stcn.Open();
                string q = "SELECT HOADON.MASP,TENSP,MOTA,GIA,SOLUONG," +
                    " SOLUONG*GIA as THANHTIEN FROM HOADON ,SANPHAM " +
                    "WHERE HOADON.MASP = SANPHAM.MASP";
                SqlDataAdapter adap = new SqlDataAdapter(q, stcn);
                DataTable tb = new DataTable();
                adap.Fill(tb);
                this.GridView1.DataSource = tb;
                this.GridView1.DataBind();
                double tong = 0;
                foreach(DataRow row in tb.Rows)
                {
                    double THANHTIEN = Convert.ToDouble(row["THANHTIEN"]);
                    tong = tong + THANHTIEN;
                }
                this.LblThanhTien.Text = "Tổng thành tiền : " + tong + " đồng.";
                stcn.Close();
            } catch (SqlException err)
            {
                Response.Write(err.Message);
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("sanpham.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cn = new SqlConnection(con);
                cn.Open();
                string q = "DELETE FROM HOADON";
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Cho bạn hết đấy!');</script>");
                Server.Transfer("sanpham.aspx");               
            } catch (SqlException err)
            {
                Response.Write(err.Message);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Cookies["TENDN"].Value = null;
            Server.Transfer("home.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string masp = e.Values["MASP"].ToString();
            try
            {
                SqlConnection kn = new SqlConnection(con);
                kn.Open();
                string q = "Delete from HOADON where MASP='" + masp + "'";
                SqlCommand cmd = new SqlCommand(q, kn);
                cmd.ExecuteNonQuery();

                string q1 = "SELECT HOADON.MASP,TENSP,MOTA,GIA,SOLUONG," +
                " SOLUONG*GIA as THANHTIEN FROM HOADON ,SANPHAM " +
                "WHERE HOADON.MASP = SANPHAM.MASP";
                SqlDataAdapter adap = new SqlDataAdapter(q1, kn);
                DataTable tb = new DataTable();
                adap.Fill(tb);
                this.GridView1.DataSource = tb;
                this.GridView1.DataBind();
                double tong = 0;
                foreach (DataRow row in tb.Rows)
                {
                    double THANHTIEN = Convert.ToDouble(row["THANHTIEN"]);
                    tong = tong + THANHTIEN;
                }
                this.LblThanhTien.Text = "Tổng thành tiền : " + tong + " đồng.";
                kn.Close();
            }
            catch (ArgumentException err)
            {
                Response.Write(err.Message);
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTucDonGian
{
    public partial class AddNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblID.Text = DateTime.Now.ToString("yyyy-mm-dd HH:mm:ss");
                loadDdl();
            }
        }

        private void loadDdl()
        {
            DataTable dt = new DataTable();
            try
            {
                string strSelect = "SELECT * FROM tblCategory";
                dt = new DataProvider().excuteQuery(strSelect);
                drDanhMuc.DataSource = dt;
                drDanhMuc.DataTextField = "title";
                drDanhMuc.DataValueField = "category_ID";
                drDanhMuc.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine("load grid error: " + ex.Message);
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string cateid = drDanhMuc.SelectedValue;
            string uid = Session["user_ID"].ToString();
            string time = DateTime.Now.ToString("yyyy-mm-dd HH:mm:ss");
            string strInsert = "INSERT INTO tblNews (category_ID,author_ID,title,body,[date]) Values (" + cateid + "," + uid + ", N'" + TxtTitle.Text + "', N'" + txtBody.Text + "','" + time + "')";
            if ((new DataProvider()).excuteNonQuery(strInsert))
            {
                Response.Write("<script>alert('INSERT successful!')</script>");

            }
            else
            {
                Response.Write("<script>alert('INSERT fail!')</script>");
            }
        }
    }
}
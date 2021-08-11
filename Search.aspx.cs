using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTucDonGian
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SearchNews();
                txtSearch2.Text = Request["txt"];
                LoadDdlDanhMuc();
                LoadDdlTime();
                ddlDanhMuc.Items.Insert(0, new ListItem("Tất cả", "0"));
            }
        }

        void LoadDdlDanhMuc()
        {
            DataTable dt = new DataTable();
            try
            {
                string strSelect = "SELECT * FROM tblCategory";
                dt = (new DataProvider()).excuteQuery(strSelect);
                ddlDanhMuc.DataSource = dt;
                ddlDanhMuc.DataTextField = "title";
                ddlDanhMuc.DataValueField = "category_id";
                ddlDanhMuc.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine("error: " + ex.Message);
            }

        }
        void LoadDdlTime()
        {
        }

        void SearchNews()
        {
            string txt = Request["txt"];
            DataTable dt = new DataTable();
            try
            {
                string strSelect = "SELECT * FROM tblNews WHERE title like '%" + txt + "%'";
                dt = (new DataProvider()).excuteQuery(strSelect);
                rpNews.DataSource = dt;
                lblNumber.Text = dt.Rows.Count.ToString();
                rpNews.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Login error: " + ex.Message);
            }
        }

        protected void ddlDanhMuc_SelectedIndexChanged(object sender, EventArgs e)
        {
            string c = ddlDanhMuc.SelectedValue;

            if (c.Equals("0"))
            {
                DataTable dt = new DataTable();
                if (!txtSearch2.Text.Equals(""))
                {
                    try
                    {
                        string strSelect = "SELECT * FROM tblNews WHERE title like '%" + txtSearch2.Text + "%'";
                        dt = (new DataProvider()).excuteQuery(strSelect);
                        rpNews.DataSource = dt;
                        rpNews.DataBind();
                        lblNumber.Text = dt.Rows.Count.ToString();
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("error: " + ex.Message);
                    }
                }
            }
            else
            {
                DataTable dt = new DataTable();
                if (!txtSearch2.Text.Equals(""))
                {
                    try
                    {
                        string strSelect = "SELECT * FROM tblNews WHERE title like '%" + txtSearch2.Text + "%' and category_ID = " + c;
                        dt = (new DataProvider()).excuteQuery(strSelect);
                        rpNews.DataSource = dt;
                        lblNumber.Text = dt.Rows.Count.ToString();
                        rpNews.DataBind();
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("error: " + ex.Message);
                    }
                }
            }
        }
        protected void txtSearch2_TextChanged(object sender, EventArgs e)
        {
            string s = (sender as TextBox).Text;
            DataTable dt = new DataTable();
            try
            {
                string strSelect = "SELECT * FROM tblNews WHERE title like '%" + s + "%'";
                dt = (new DataProvider()).excuteQuery(strSelect);
                rpNews.DataSource = dt;
                lblNumber.Text = dt.Rows.Count.ToString();
                rpNews.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine("error: " + ex.Message);
            }
        }

    }
}
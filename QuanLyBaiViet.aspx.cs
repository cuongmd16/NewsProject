using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTucDonGian.Admin
{
    public partial class QuanLyBaiViet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDdlDanhMuc();
                showGrid();
                ddlCateSearch.Items.Insert(0, new ListItem("Tất cả", "0"));
               
               
            }
        }

        private void LoadDdlDanhMuc() {
            DataTable dt = new DataTable();
            try
            {
                string strSelect = "SELECT * FROM tblCategory";
                dt = new DataProvider().excuteQuery(strSelect);
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "title";
                ddlCategory.DataValueField = "category_ID";
                ddlCategory.DataBind();
                ddlCateSearch.DataSource = dt;
                ddlCateSearch.DataTextField = "title";
                ddlCateSearch.DataValueField = "category_ID";
                ddlCateSearch.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine("load grid error: " + ex.Message);
            }

        }

        private void showGrid()
        {
            DataTable dt = new DataTable();
            try
            {
                string strSelect = "SELECT * FROM tblNews order by date desc";
                dt = new DataProvider().excuteQuery(strSelect);
                gvNews.DataSource = dt;
                gvNews.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine("load grid error: " + ex.Message);
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string strInsert = "update tblNews set category_ID = " + ddlCategory.SelectedValue + ", title = N'"+ txtTitle.Text +"', body = N'" + txtBody.Text +"' where news_ID =" + txtCode.Text;
            if ((new DataProvider()).excuteNonQuery(strInsert))
            {
                Response.Write("<script>alert('Update success')</script>");
                showGrid();
            }
            else
            {
                Response.Write("<script>alert('Update fail')</script>");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string id = txtCode.Text;
            string strInsert = "delete tblNews where news_ID =" + id + " ; ";
            if ((new DataProvider()).excuteNonQuery(strInsert))
            {
                Response.Write("<script>alert('Delete success')</script>");
                showGrid();
            }
            else
            {
                Response.Write("<script>alert('Delete fail')</script>");
            }
        }

        protected void gvNews_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvNews.EditIndex = -1;
            showGrid();
        }

        protected void gvNews_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = gvNews.Rows[e.RowIndex].Cells[1].Text;
            string strInsert = "delete tblNews where news_ID =" + id + " ; ";
            if ((new DataProvider()).excuteNonQuery(strInsert))
            {
                Response.Write("<script>alert('Delete success')</script>");
                showGrid();
            }
            else
            {
                Response.Write("<script>alert('Delete fail')</script>");
            }
        }

        protected void gvNews_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvNews.EditIndex = e.NewEditIndex;
            showGrid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {          
            txtCode.Text = gvNews.SelectedRow.Cells[1].Text;
            ddlCategory.SelectedValue = gvNews.SelectedRow.Cells[2].Text;
            txtAuthorID.Text = gvNews.SelectedRow.Cells[3].Text;
            txtTitle.Text = HttpUtility.HtmlDecode(gvNews.SelectedRow.Cells[4].Text);
            txtBody.Text = HttpUtility.HtmlDecode(gvNews.SelectedRow.Cells[5].Text);            
            txtDate.Text = gvNews.SelectedRow.Cells[7].Text;
        }

        protected void gvNews_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvNews.PageIndex = e.NewPageIndex;
            showGrid();
        }

        protected void ddlCateSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            string c = ddlCateSearch.SelectedValue;

            if (c.Equals("0"))
            {
                DataTable dt = new DataTable();
                try
                {
                    string strSelect = "SELECT * FROM tblNews order by date desc";
                    dt = new DataProvider().excuteQuery(strSelect);
                    gvNews.DataSource = dt;
                    gvNews.DataBind();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("load grid error: " + ex.Message);
                }
            }
            else
            {
                DataTable dt = new DataTable();
                try
                {
                    string strSelect = "SELECT * FROM tblNews where category_ID = "+ c;
                    dt = new DataProvider().excuteQuery(strSelect);
                    gvNews.DataSource = dt;
                    gvNews.DataBind();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("load grid error: " + ex.Message);
                }
            }
        }
    }
}
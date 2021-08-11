using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTucDonGian
{
    public partial class QuanLyDanhMuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowGrid();
            }
        }

        void ShowGrid()
        {
            DataTable dt = new DataTable();
            try
            {
                string strSelect = "SELECT * FROM tblCategory ";
                dt = new DataProvider().excuteQuery(strSelect);
                gvDanhMuc.DataSource = dt;
                gvDanhMuc.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine("load grid error: " + ex.Message);
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string str = "insert into tblCategory values('" + txtTitle.Text + "')";
            if ((new DataProvider()).excuteNonQuery(str))
            {
                Response.Write("<script>alert('insert success')</script>");
                ShowGrid();
            }
            else
            {
                Response.Write("<script>alert('insert fail')</script>");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string strInsert = "update tblCategory set title= N'" + txtTitle.Text + "' where category_ID = " + txtCategory_ID.Text;
            if ((new DataProvider()).excuteNonQuery(strInsert))
            {
                Response.Write("<script>alert('Update success')</script>");
                ShowGrid();
            }
            else
            {
                Response.Write("<script>alert('Update fail')</script>");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string strInsert = "delete tblCategory where category_ID =" + txtCategory_ID.Text + " ; ";
            if ((new DataProvider()).excuteNonQuery(strInsert))
            {
                Response.Write("<script>alert('Delete success')</script>");
                ShowGrid();
            }
            else
            {
                Response.Write("<script>alert('Delete fail')</script>");
            }
        }

        protected void gvDanhMuc_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCategory_ID.Text = gvDanhMuc.SelectedRow.Cells[1].Text;
            txtTitle.Text = gvDanhMuc.SelectedRow.Cells[2].Text;
        }

        protected void gvDanhMuc_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = gvDanhMuc.Rows[e.RowIndex].Cells[1].Text;
            string strInsert = "delete tblCategory where category_ID =" + id + " ; ";
            if ((new DataProvider()).excuteNonQuery(strInsert))
            {
                Response.Write("<script>alert('Delete success')</script>");
                ShowGrid();
            }
            else
            {
                Response.Write("<script>alert('Delete fail')</script>");
            }

        }
    }
}
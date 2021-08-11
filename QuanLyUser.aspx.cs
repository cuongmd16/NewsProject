using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTucDonGian.Admin
{
    public partial class QuanLyUser : System.Web.UI.Page
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
                string strSelect = "SELECT * FROM tblUser where power = 2 ";
                dt = new DataProvider().excuteQuery(strSelect);
                gvUser.DataSource = dt;
                gvUser.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine("load grid error: " + ex.Message);
            }
        }

        protected void gvUser_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {   
            
            string id = gvUser.Rows[e.RowIndex].Cells[1].Text;
            string strInsert = "delete tblUser where user_ID =" + id + " ; ";
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

        protected void gvUser_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtUserID.Text = gvUser.SelectedRow.Cells[1].Text;
            txtUsername.Text = gvUser.SelectedRow.Cells[2].Text;
            txtPower.Text = gvUser.SelectedRow.Cells[3].Text;
            txtFullname.Text = gvUser.SelectedRow.Cells[4].Text;
            txtAddress.Text = gvUser.SelectedRow.Cells[5].Text;
            txtEmail.Text = gvUser.SelectedRow.Cells[6].Text;
            txtPhone.Text = gvUser.SelectedRow.Cells[7].Text;
        }

        protected void gvUser_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvUser.EditIndex = e.NewPageIndex;
            ShowGrid();
        }
    }
}
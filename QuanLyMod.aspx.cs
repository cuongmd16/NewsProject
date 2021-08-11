using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangTinTucDonGian
{
    public partial class QuanLyMod : System.Web.UI.Page
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
                string strSelect = "SELECT * FROM tblUser where power = 1 ";
                dt = new DataProvider().excuteQuery(strSelect);
                gvMod.DataSource = dt;
                gvMod.DataBind();
            }
            catch (Exception ex)
            {
                Console.WriteLine("load grid error: " + ex.Message);
            }
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string str = "insert into tbluser values('" + txtUsername.Text + "','" + 1 + "','" + txtPower.Text + "','" + txtFullname.Text + "','" + txtAddress.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "')";
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

        protected void btnUp_Click(object sender, EventArgs e)
        {
            string strInsert = "update tblUser set power = 0 where user_ID =" + txtUserID.Text + " ; ";
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
            string strInsert = "delete tblUser where user_ID =" + txtUserID.Text + " ; ";
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

        protected void gvMod_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = gvMod.Rows[e.RowIndex].Cells[1].Text;
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

        protected void gvMod_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtUserID.Text = gvMod.SelectedRow.Cells[1].Text;
            txtUsername.Text = gvMod.SelectedRow.Cells[2].Text;
            txtPower.Text = gvMod.SelectedRow.Cells[3].Text;
            txtFullname.Text = gvMod.SelectedRow.Cells[4].Text;
            txtAddress.Text = gvMod.SelectedRow.Cells[5].Text;
            txtEmail.Text = gvMod.SelectedRow.Cells[6].Text;
            txtPhone.Text = gvMod.SelectedRow.Cells[7].Text;
        }
    }
}
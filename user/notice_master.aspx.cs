using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class user_notice_master : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Society Management(Project)\App_Data\socManagement.mdf;Integrated Security=True;User Instance=True");

        con.Open();

        string qry = "select * from ntc_mstr";

        SqlCommand cmd = new SqlCommand(qry, con);

        GridView1.DataSource = cmd.ExecuteReader();

        GridView1.DataBind();*/
    }

    protected void lnkbtn_click(object sender, EventArgs e)
    {
        //LinkButton lnkbtn = sender as LinkButton;
        //GridViewRow gridrow = lnkbtn.NamingContainer as GridViewRow;
        //string dwnld = GridView2.DataKeys[gridrow.RowIndex].Value.ToString();
        //string path = @"D:\mca\tri3\Project_ASP.Net\Society Management(Project)\notice";
        //Response.ContentType = "application / pdf";
        //Response.AddHeader("Content-Disposition", "attachment;filename=\"" + dwnld + "\"");
        
        //Response.End();
       
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "download")
        {
            Response.Clear();
            Response.ContentType = ("application/pdf");
            Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/notice/") + e.CommandArgument );
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
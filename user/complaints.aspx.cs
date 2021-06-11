using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;    

public partial class User_complaints : System.Web.UI.Page
{
    myconnect myc = new myconnect();
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        getuid();
        myc.cnopen();
        if (IsPostBack == false)
        {
            Panel1.Visible = false;
            Button1.Visible = true;
        }
        myc.cnclose();

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        myc.cnopen();

        qry = "insert into cmplnt_mstr values('" + lbluid.Text + "','" + ddlagainst.SelectedValue + "',NULL,NULL,'" + txtdesc.Text + "','" + Cdate.SelectedDate.ToShortDateString() + "', 'Raised' )";
        myc.cmd = new SqlCommand(qry, myc.cn);
        myc.cmd.ExecuteNonQuery();

        Label1.Text = "Complaint is raised.";
        myc.cnclose();
        
    }
    protected void ddlagainst_click(object sender, EventArgs e)
    {
        if (ddlagainst.SelectedValue == "individual")
        {
            Panel1.Visible = true;
            Button1.Visible = false;
            Button2.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
            Button2.Visible = false;
            Button1.Visible = true;
        }
    }

    public void getuid()
    {
        myc.cnopen();

        qry = "select * from usr_mstr where email = '" + Session["email"].ToString() + "'";
        myc.cmd = new SqlCommand(qry, myc.cn);
        myc.dr = myc.cmd.ExecuteReader();

        if (myc.dr.HasRows)
        {
            myc.dr.Read();
            lbluid.Text = myc.dr["uid"].ToString();

        }
        myc.cnclose();
    }
    protected void btn2_Submit_Click(object sender, EventArgs e)
    {
        myc.cnopen();

        qry = "insert into cmplnt_mstr values('" + lbluid.Text + "','" + ddlagainst.SelectedValue + "','" + ddlwing.SelectedValue + "','" + ddlflat.SelectedValue + "','" + txtdesc.Text + "','" + Cdate.SelectedDate.ToShortDateString() + "', 'Raised' )";
        myc.cmd = new SqlCommand(qry, myc.cn);
        myc.cmd.ExecuteNonQuery();

        Label1.Text = "Complaint is raised.";
        myc.cnclose();
    }
}
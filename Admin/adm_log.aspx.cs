using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_adm_log : System.Web.UI.Page
{
    myconnect myc = new myconnect();
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
     
        lbl_err.Text = "";
    }
    protected void signin_Click(object sender, EventArgs e)
    {
        myc.cnopen();
        qry = "select * from adm_mstr where email = '" + txt_email.Text + "' and pass = '" + txt_pass.Text + "' and isactive = '1'  and desig = '0'";
        myc.cmd = new SqlCommand(qry, myc.cn);
        myc.dr = myc.cmd.ExecuteReader();
        Session["email"] = txt_email.Text;
        if (myc.dr.HasRows)
        {
            Response.Redirect("admdash.aspx");
        }
        else
        {
            myc.cnclose();
            myc.cnopen();
            qry = "select * from usr_mstr where email = '" + txt_email.Text + "' and pass = '" + txt_pass.Text + "' and isactive = '1'  and desig = '1'";
            myc.cmd = new SqlCommand(qry, myc.cn);
            myc.dr = myc.cmd.ExecuteReader();
            Session["email"] = txt_email.Text;
            
            if (myc.dr.HasRows)
            {
                Response.Redirect("~/user/dashboard.aspx");
            }
            else
            {
                myc.cnclose();
                myc.cnopen();
                qry = "select * from scrt_prsn_mstr where spemail = '" + txt_email.Text + "' and sppass = '" + txt_pass.Text + "' and isactive = '1'  and desig = '2'";
                myc.cmd = new SqlCommand(qry, myc.cn);
                myc.dr = myc.cmd.ExecuteReader();
                Session["email"] = txt_email.Text;
                if (myc.dr.HasRows)
                {
                    Response.Redirect("~/Security/Security_Dashboard.aspx");
                }
                else
                {
                    lbl_err.Text = "invalid User";
                }

            }

        }

    }
}
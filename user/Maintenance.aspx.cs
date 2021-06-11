using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class User_Maintenance : System.Web.UI.Page
{
    myconnect myc = new myconnect();
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        myc.cnopen();

        qry = "select * from usr_mstr where email = '" + Session["email"].ToString() + "'";
        myc.cmd = new SqlCommand(qry, myc.cn);
        myc.dr = myc.cmd.ExecuteReader();

        if (myc.dr.HasRows)
        {
            myc.dr.Read();
            lbluid.Text = myc.dr["uid"].ToString();
            lbluname.Text = myc.dr["uname"].ToString();


        }
        myc.cnclose();
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        myc.cnopen();
        qry = "select * from mntnc_mstr where uid = '" + lbluid.Text + "' and year = '" + ddl_year.SelectedValue + "' and month = '" + ddlmonth.SelectedValue + "'";
        myc.cmd = new SqlCommand(qry, myc.cn);
        myc.dr = myc.cmd.ExecuteReader();

        if (myc.dr.HasRows)
        {
            lblerr.Text = "You have already paid maintenance for this month.";
        }
        else
        {
            myc.cnclose();
            myc.cnopen();
            qry = "insert into mntnc_mstr values('" + lbluid.Text + "','" + ddl_year.SelectedValue + "','" + ddlmonth.SelectedValue + "',' 1422 ','" + txtnote.Text + "','1')";
            myc.cmd = new SqlCommand(qry, myc.cn);
            myc.dr = myc.cmd.ExecuteReader();

            lblerr.Text = "Maintainance paid successfully.";

            MailMessage mail = new MailMessage();
            string mailid = Session["email"].ToString();
            mail.To.Add(mailid);
            mail.From = new MailAddress("pathak22mp@gmail.com");
            mail.Subject = "Maintenance paid Successful";
            string body = "<body style='background-color:#e2e1e0;'><table><thead><tr></tr></thead><tbody><tr><td style='height:35px;'></td></tr><tr><td colspan='2' style='border: solid 1px #ddd; padding:10px 20px;'><p style='font-size:14px;margin:0 0 6px 0;'><span style='font-weight:bold;display:inline-block;min-width:150px'>Order status</span><b style='color:green;font-weight:normal;margin:0'>Success</b></p><p style='font-size:14px;margin:0 0 0 0;'><span style='font-weight:bold;display:inline-block;min-width:146px'>Order amount</span>" + txtamt.Text + "</p></td></tr><tr><td style='width:50%;padding:20px;vertical-align:top'><p style='margin:0 0 10px 0;padding:0;font-size:14px;'><span style='display:block;font-weight:bold;font-size:13px'>" + ddlmonth.SelectedValue + " " + ddl_year.SelectedValue + "</p><p style='margin:0 0 10px 0;padding:0;font-size:14px;'><span style='display:block;font-weight:bold;font-size:13px;'>Email</span>" + Session["email"].ToString() + "</p><p style='margin:0 0 10px 0;padding:0;font-size:14px;'><span style='display:block;font-weight:bold;font-size:13px;'></td></tr></tbody></table></body>";
            mail.Body = body;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("pathak22mp@gmail.com", "myma9876");
            smtp.Port = 587;
            smtp.EnableSsl = true;

            smtp.Send(mail);

            myc.cnclose();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class Security_Add_Visitor : System.Web.UI.Page
{
    myconnect myc = new myconnect();
    string qry;


    protected void Page_Load(object sender, EventArgs e)
    {
      
    }


    protected void btnsub(object sender, EventArgs e)
    {
        myc.cnopen();
        qry = "insert into vstr_mstr values('" + txtvname.Text + "','" + ddl_flat_no.SelectedValue + "','" + ddl_wing.SelectedValue + "','" + ddl_type.SelectedValue + "','" + arrdatetime.SelectedDate.ToShortDateString() + "','" + depdatetime.SelectedDate.ToShortDateString() + "', 0 )";
        myc.cmd = new SqlCommand(qry, myc.cn);
        myc.cmd.ExecuteNonQuery();
        sendmail();
        myc.cnclose();

    }

    public void sendmail()
    {
       
        qry = "select * from usr_mstr where fid = '" + ddl_flat_no.SelectedValue + "' and wid = '" + ddl_wing.SelectedValue + "'";
        myc.cmd = new SqlCommand(qry, myc.cn);
        myc.dr = myc.cmd.ExecuteReader();
        if (myc.dr.HasRows)
        {
            myc.dr.Read();
            usremail.Text = myc.dr["email"].ToString();
            username.Text = myc.dr["uname"].ToString();
        }

        MailMessage mail = new MailMessage();
        string mailid = usremail.Text;
        mail.To.Add(mailid);
        mail.From = new MailAddress("pathak22mp@gmail.com");
        mail.Subject = "Knock Knock!" + ddl_type.SelectedValue + " is here for you!! Allow or Deny ";
        string body = "Hello! " + username.Text + "<br><br> Someone just came to visit you. <br><br> <table> <tr> <td> Visitor's Name: </td> <td>" + txtvname.Text + "</td> </tr><tr> <td> Visitor's Type: </td><td>" + ddl_type.SelectedValue + "</td></tr></table><br><br> Allow Or Deny the person from visitor's section. <br><br><br> Thank you.";
        mail.Body = body;
        mail.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Credentials = new System.Net.NetworkCredential("pathak22mp@gmail.com", "myma9876");
        smtp.Port = 587;
        smtp.EnableSsl = true;

        smtp.Send(mail);
        

    }
}
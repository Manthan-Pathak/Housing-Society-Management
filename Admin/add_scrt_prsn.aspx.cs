using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class Admin_Default : System.Web.UI.Page
{

    myconnect myc = new myconnect();
    string qry;


    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    protected void btnsub_Click(object sender, EventArgs e)
    {
        string random;
        Random x = new Random();
        random = x.Next().ToString();
        random = random.Substring(0, 6);
        lblpass.Text = random;

        myc.cnopen();
        qry = "select * from scrt_prsn_mstr where spemail = '" + txtspemail.Text.Trim() + "'";
        myc.cmd = new SqlCommand(qry, myc.cn);
        myc.dr = myc.cmd.ExecuteReader();
        if (myc.dr.HasRows)
        {
            myc.dr.Read();
            Label1.Text = "User already exists";
        }
        else
        {
            myc.cnclose();
            myc.cnopen();
            
            qry = "insert into scrt_prsn_mstr values('" + txtspname.Text + "','" + txtspemail.Text + "','" + lblpass.Text + "','" + ddl_isactive.SelectedValue + "','2')";
            myc.cmd = new SqlCommand(qry, myc.cn);
            myc.cmd.ExecuteNonQuery();

            Label1.Text = "Security Person inserted";

            MailMessage mail = new MailMessage();
            string mailid = txtspemail.Text;
            mail.To.Add(mailid);
            mail.From = new MailAddress("pathak22mp@gmail.com");
            mail.Subject = "Registration Successful";
            string body = "<table> <tr> <td> User Name: </td> <td>" + txtspname.Text + "</td> </tr><tr> <td> password: </td><td>" + lblpass.Text + "</td></tr><tr><td>autentication code is Is:</td><td>" + random + "</td></tr> </table>";
            mail.Body = body;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("your email", "your password");
            smtp.Port = 587;
            smtp.EnableSsl = true;

            smtp.Send(mail);

            myc.cnclose();
        }
    }


}

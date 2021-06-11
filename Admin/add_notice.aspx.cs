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
    string str1, str2;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    protected void btnsub_Click(object sender, EventArgs e)
    {

        myc.cnopen();
        qry = "insert into ntc_mstr values('" + txtsubject.Text + "','" + txtdesc.Text + "','" + caldate.SelectedDate.ToShortDateString() + "','" + txt_nfile.FileName + "')";
        myc.cmd = new SqlCommand(qry, myc.cn);
        myc.cmd.ExecuteNonQuery();

        str1 = Server.MapPath("~\\notice");
        if (txt_nfile.HasFile)
        {
            str2 = str1 + "\\" + txt_nfile.FileName;
            txt_nfile.SaveAs(str2);
        }

        Label1.Text = "Notice Inserted Sucessfully.";

        myc.cnclose();

    }
}
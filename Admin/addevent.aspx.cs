using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    myconnect myc = new myconnect();
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        getuid();
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
    protected void btn_Submit_Click(object sender, EventArgs e)
    {

        myc.cnopen();
        qry = "insert into event_mstr values('" + lbluid.Text + "','" + txt_event_name.Text + "','" + txt_event_desc.Text + "','" + eventdatetime.SelectedDate.ToShortDateString() + "','" + FileUpload1.FileName + "',1)";
        myc.cmd = new SqlCommand(qry, myc.cn);
        myc.cmd.ExecuteNonQuery();
        myc.cnclose();

    }
}
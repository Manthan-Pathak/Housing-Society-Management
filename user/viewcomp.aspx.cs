using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user_Default : System.Web.UI.Page
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

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
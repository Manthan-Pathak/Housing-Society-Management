using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_admin_home : System.Web.UI.MasterPage
{
    myconnect myc = new myconnect();
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        myc.cnopen();
       
        qry = "select * from adm_mstr where email = '" + Session["email"].ToString() + "'";
        myc.cmd = new SqlCommand(qry, myc.cn);
        myc.dr = myc.cmd.ExecuteReader();

        if (myc.dr.HasRows)
        {
            myc.dr.Read();
            lblemail.Text = myc.dr["aname"].ToString();
            
        }
    }

    
}

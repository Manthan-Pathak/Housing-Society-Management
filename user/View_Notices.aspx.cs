using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_View_Notices : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        myconnect con = new myconnect();
        con.cnopen();
        string qry = "SELECT sub as Subject,dec as Description,date as Date_Time_of_Upload,nfile as FileName_if_Download FROM ntc_mstr";
        con.cmd = new SqlCommand(qry, con.cn);
        gv_Notices.DataSource = con.cmd.ExecuteReader();
        gv_Notices.DataBind();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    myconnect myc = new myconnect();
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        myc.cnopen();
        myc.da = new SqlDataAdapter("select * from mntnc_mstr where year = '" + ddl_year.SelectedValue + "' and month = '" + ddlmonth.SelectedValue + "'", myc.cn);
        myc.dt = new DataTable();
        myc.da.Fill(myc.dt);

        GridView1.DataSource = myc.dt;
        GridView1.DataBind();

        myc.cnclose();
    }
}
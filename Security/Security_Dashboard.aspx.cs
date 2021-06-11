using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Security_Security_Dashboard : System.Web.UI.Page
{

    myconnect myc = new myconnect();
    string qry;


    protected void Page_Load(object sender, EventArgs e)
    {
        ttlusr();
        ttlvstr();
    }

    public void ttlusr()
    {
        myc.cnopen();

        qry = "select * from usr_mstr";
        myc.cmd = new SqlCommand(qry, myc.cn);

        SqlDataAdapter OleDbDa = new SqlDataAdapter(myc.cmd);
        DataSet dsData = new DataSet();
        OleDbDa.Fill(dsData);

        myc.cnclose();

        lbl_ttlusr.Text = dsData.Tables[0].Rows.Count.ToString();
    }


    public void ttlvstr()
    {
        myc.cnopen();

        qry = "select * from vstr_mstr";
        myc.cmd = new SqlCommand(qry, myc.cn);

        SqlDataAdapter OleDbDa = new SqlDataAdapter(myc.cmd);
        DataSet dsData = new DataSet();
        OleDbDa.Fill(dsData);

        myc.cnclose();

        lbl_txtvstr.Text = dsData.Tables[0].Rows.Count.ToString();

    }


}
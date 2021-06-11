using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    myconnect myc = new myconnect();
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {

        ttlusr();
        ttlflat();
        ttlcmplnt();
        ttlntc();
       
         
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

    public void ttlflat()
    {
        myc.cnopen();

        qry = "select * from flat_mstr";
        myc.cmd = new SqlCommand(qry, myc.cn);

        SqlDataAdapter OleDbDa = new SqlDataAdapter(myc.cmd);
        DataSet dsData = new DataSet();
        OleDbDa.Fill(dsData);

        myc.cnclose();

        int ttlflat = dsData.Tables[0].Rows.Count;

        int totalflat = ttlflat * 4;

        lbl_ttlflat.Text = totalflat.ToString();
    }

    public void ttlcmplnt()
    {
        qry = "select * from cmplnt_mstr where ctype = 'Management'";
        myc.cmd = new SqlCommand(qry, myc.cn);

        SqlDataAdapter OleDbDa = new SqlDataAdapter(myc.cmd);
        DataSet dsData = new DataSet();
        OleDbDa.Fill(dsData);

        myc.cnclose();


        lbl_ttlcmplnt.Text = dsData.Tables[0].Rows.Count.ToString();
    }

    public void ttlntc()
    {
        qry = "select * from ntc_mstr";
        myc.cmd = new SqlCommand(qry, myc.cn);

        SqlDataAdapter OleDbDa = new SqlDataAdapter(myc.cmd);
        DataSet dsData = new DataSet();
        OleDbDa.Fill(dsData);

        myc.cnclose();


        lbl_ttlntc.Text = dsData.Tables[0].Rows.Count.ToString();
    }
}
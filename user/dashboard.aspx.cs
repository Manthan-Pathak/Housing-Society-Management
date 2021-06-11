using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_Default : System.Web.UI.Page
{
    myconnect myc = new myconnect();
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        getuid();
        flat_wing();
        ttlusr();
        ttlflat();
        ttlcmplnt();
        ttlntc();
        
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

    public void flat_wing()
    {
        myc.cnopen();
        qry = "select * from usr_mstr where email ='" + Session["email"].ToString() + "'";
        myc.cmd = new SqlCommand(qry, myc.cn);
        myc.dr = myc.cmd.ExecuteReader();
        if (myc.dr.HasRows)
        {
            myc.dr.Read();
            lblwing.Text = myc.dr["wid"].ToString();
            lblflat.Text = myc.dr["fid"].ToString();
        }
        myc.cnclose();
    }

    public void ttlcmplnt()
    {
        qry = "select * from cmplnt_mstr where uid = '" + lbluid.Text + "'";
        myc.cmd = new SqlCommand(qry, myc.cn);

        SqlDataAdapter OleDbDa = new SqlDataAdapter(myc.cmd);
        DataSet dsData = new DataSet();
        OleDbDa.Fill(dsData);

        myc.cnclose();


        lbl_cmplnt.Text = dsData.Tables[0].Rows.Count.ToString();
    }

    public void ttlntc()
    {
        qry = "select * from ntc_mstr";
        myc.cmd = new SqlCommand(qry, myc.cn);

        SqlDataAdapter OleDbDa = new SqlDataAdapter(myc.cmd);
        DataSet dsData = new DataSet();
        OleDbDa.Fill(dsData);

        myc.cnclose();


        lbl_ntc.Text = dsData.Tables[0].Rows.Count.ToString();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btn_allow_click(object sender, EventArgs e)
    {
    }

    protected void btn_deny_click(object sender, EventArgs e)
    {
    }
   
}
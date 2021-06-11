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
        ttlamt();
        ttlmnts();
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
            lbluid.Text = myc.dr["uid"].ToString() ;

        }
        myc.cnclose();
    }

    public void ttlamt()
    {
        myc.cnopen();

        qry = "select * from mntnc_mstr where uid =" + lbluid.Text;
        myc.cmd = new SqlCommand(qry, myc.cn);

        SqlDataAdapter OleDbDa = new SqlDataAdapter(myc.cmd);
        DataSet dsData = new DataSet();
        OleDbDa.Fill(dsData);

        myc.cnclose();

        int ttlamt = dsData.Tables[0].Rows.Count;

        int totalamt = ttlamt * 1422;

        lbl_ttlamt.Text = totalamt.ToString() + ".00 Rs/- " ;
    }

    public void ttlmnts()
    {
        myc.cnopen();

        qry = "select * from mntnc_mstr where uid =" + lbluid.Text;
        myc.cmd = new SqlCommand(qry, myc.cn);

        SqlDataAdapter OleDbDa = new SqlDataAdapter(myc.cmd);
        DataSet dsData = new DataSet();
        OleDbDa.Fill(dsData);

        myc.cnclose();

        lbl_ttlmnts.Text = dsData.Tables[0].Rows.Count.ToString() + " Months.";
    }
}
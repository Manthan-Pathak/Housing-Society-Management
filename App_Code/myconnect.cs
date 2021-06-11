using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for myconnect
/// </summary>
public class myconnect
{
    public SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|dataDirectory|\socManagement.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    public SqlCommand cmd = new SqlCommand();
    public SqlDataReader dr;
    public SqlDataAdapter da = new SqlDataAdapter();
    public DataTable dt = new DataTable();

	public myconnect()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void cnopen()
    {
        cn.Open();
    }

    public void cnclose()
    {
        cn.Close();
    }
}
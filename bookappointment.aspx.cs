using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class bookappointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAppointment_Click(object sender, EventArgs e)
    {
        string connString = WebConfigurationManager.ConnectionStrings["tattooConnectionString"].ToString();

        SqlConnection objConn = new SqlConnection(connString);

        try
        {
            objConn.Open();


            int intInsert;
            
            string customername = txtName.Text;
            string phoneno = txtPhoneno.Text;
            string servicename = ddlService.SelectedItem.ToString();
            string emailid = txtEmail.Text;
            
            
            string dateofappt = calDate.SelectedDate.ToShortDateString();
            string timingslot = ddlTimingslot.SelectedValue.ToString();
            string query = txtQuery.Text;
            


            String strInsertQry;

            strInsertQry = "insert into appointment(customername,phoneno,emailid,servicename,dateofappt,timingslot, query) values (@customername,@phoneno,@emailid,@servicename,@dateofappt,@timingslot,@query)";
            SqlCommand Cmdins = new SqlCommand(strInsertQry, objConn);
            

            Cmdins.Parameters.AddWithValue("@customername", customername);
            Cmdins.Parameters.AddWithValue("@phoneno", phoneno);
            
            Cmdins.Parameters.AddWithValue("@emailid", emailid);
            Cmdins.Parameters.AddWithValue("@servicename",servicename);
            Cmdins.Parameters.AddWithValue("@dateofappt",dateofappt);
            Cmdins.Parameters.AddWithValue("@timingslot",timingslot);
            Cmdins.Parameters.AddWithValue("@query",query);
            
            intInsert = Cmdins.ExecuteNonQuery();

            if (intInsert > 0)
                Response.Redirect("index.aspx");

        }
        catch (Exception ex) { 

            Response.Write(ex); 
        
        }




        

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtEmail.Text = "";
        txtName.Text = "";
        txtPhoneno.Text = "";
        txtQuery.Text = "";
        
    }
}
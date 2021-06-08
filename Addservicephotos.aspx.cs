
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Addsubservices : System.Web.UI.Page
{
    //int catid;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }


    }


    protected void AddServicePhotos_Click(object sender, EventArgs e)
    {
        Response.Write("reached 1");

        try
        {
            string servicename = ddlcatid.SelectedItem.ToString();
            Response.Write("reached 1");
            string product_name = txtName.Text;

            //string product_desc = txtdesc.Text;
            string product_price = txtPrice.Text;
        
            

            String folderpath = "~/images/servicephotos/";
     


            if (serviceimage.HasFile)
            {
                string filename = serviceimage.PostedFile.FileName.ToString();

                serviceimage.SaveAs(Server.MapPath(folderpath + filename));

            }
            Response.Write("2");

            string product_imgurl = folderpath + serviceimage.PostedFile.FileName;

            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["tattooConnectionString"].ToString());
            Response.Write("3");

            con.Open();

            SqlCommand cmd = con.CreateCommand();

            cmd.CommandText = @"insert into servicephotos(servicename,product_name,product_imgurl,product_price) values (@servicename,@product_name,@product_imgurl,@product_price)";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("servicename", @servicename);
            cmd.Parameters.AddWithValue("product_name", @product_name);
            //cmd.Parameters.AddWithValue("product_desc", @product_desc);
            
            cmd.Parameters.AddWithValue("product_imgurl", @product_imgurl);
            cmd.Parameters.AddWithValue("product_price", @product_price);
            cmd.ExecuteNonQuery();

            Response.Write("4");
            Response.Redirect("AdminHome.aspx");
        }
        catch (Exception ex)
        {
            
            Response.Write(ex);
        }
    }
    
}

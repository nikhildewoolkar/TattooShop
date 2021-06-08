
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class AddArtists : System.Web.UI.Page
{
    //int catid;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }


    }





    protected void btnAddArtist_Click(object sender, EventArgs e)
    {
        try
        {

            string artists_name = txtName.Text;
           
            string artists_email = txtEmail.Text;
            string artists_phone = txtMob.Text;
            string artists_areaofexpertise = txtExpertise.Text;


            String folderpath = "~/images/Artists/";
            // subcat=@"~\images\categoryproducts\breakfast\";


            if (artistsimage.HasFile)
            {
                string filename = artistsimage.PostedFile.FileName.ToString();

                artistsimage.SaveAs(Server.MapPath(folderpath + filename));

            }


            string artists_imgurl = folderpath + artistsimage.PostedFile.FileName;

            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["tattooConnectionString"].ToString());


            con.Open();

            SqlCommand cmd = con.CreateCommand();

            cmd.CommandText = @"insert into Artists(artists_name,artists_imgurl,artists_phone,artists_email,artists_areaofexpertise) values (@artists_name,@artists_imgurl,@artists_phone,@artists_email,@artists_areaofexpertise)";
            cmd.Connection = con;

            cmd.Parameters.AddWithValue("artists_name", @artists_name);
            cmd.Parameters.AddWithValue("artists_areaofexpertise", @artists_areaofexpertise);
            cmd.Parameters.AddWithValue("artists_email", @artists_email);
            cmd.Parameters.AddWithValue("artists_imgurl", @artists_imgurl);
            cmd.Parameters.AddWithValue("artists_phone", @artists_phone);
            cmd.ExecuteNonQuery();


            Response.Redirect("AdminHome.aspx");
        }
        catch (Exception ex)
        {
            Response.Write("hi");
            Response.Write(ex);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Subservices : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string servicename = Request.QueryString["servicename"];
        Response.Write(servicename);

    }
}
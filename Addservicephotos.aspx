<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Addservicephotos.aspx.cs" Inherits="Addsubservices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/><br/>
    <center><h2 style="background-color:purple;color:aqua" class="title-w3">Add New Service Photos</h2></center>
    <br/><br/>
    
    <center>


<table style="border: medium dashed blue; width:75%" align="center" cellpadding="5" cellspacing ="5">
    <tr><td>

        <span style="color:purple;font-size:medium"><b>Select Service Category :</b></span>&nbsp;<asp:DropDownList ID="ddlcatid" runat="server">
            <asp:ListItem>Tattoo Design</asp:ListItem>
            <asp:ListItem>Special Occassions</asp:ListItem>
            <asp:ListItem>Tattoo Removal</asp:ListItem>
        </asp:DropDownList>
        <br/>
        <br/>

&nbsp;<span style="color:purple;font-size:medium"><b>Photo Name :</b></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                            <br>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter name" ControlToValidate="txtName"></asp:RequiredFieldValidator>
             
        <%--                               <br>
	<span style="color:purple;font-size:medium"><b>	Sub-Service Description  :</b></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <br>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Service Field cannot be Empty" ControlToValidate="txtdesc"></asp:RequiredFieldValidator>
        --%>                         <br />
   <span style="color:purple;font-size:medium"><b> Price  :</b></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
    
                                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter your service price" ControlToValidate="txtprice">
         </asp:RequiredFieldValidator>

                                             <br>                       
                          
                          &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br>
                            <br>
                          <span style="color:purple;font-size:medium"><b>Upload Photo : </b> <asp:FileUpload ID="serviceimage" runat="server" /></span>
        	<center>						
    <asp:Button ID="AddServicePhotos" runat="server" Text="Add Service Photos" style="background-color:purple;color:aqua;font-size:medium" OnClick="AddServicePhotos_Click"
                 />
                </center>						
	                       </td></tr></table>
    
</center>

</asp:Content>


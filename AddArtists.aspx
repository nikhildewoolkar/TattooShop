<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddArtists.aspx.cs" Inherits="AddArtists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/><br/>
    <center><h2 style="background-color:purple;color:aqua" class="title-w3">Add New Artist</h2></center>
    <br/><br/>
      <center>

<table style="border: medium dashed blue; width:75%" align="center" cellpadding="5" cellspacing ="5">

    <br/>
                     <tr><td>
			
                                    
								
                                            <span style="color:purple;font-size:medium"><b>Artist Name :</b></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="txtName" runat="server" Width="190px" Height="25px" BackColor="#CCCCCC"></asp:TextBox>
                                            <br>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter name" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Name contains Only Characters" ControlToValidate="txtName" ValidationExpression="[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>
                                            <br>
									     <span style="color:purple;font-size:medium"><b>Expertise  :</b></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtExpertise" runat="server" Width="191px" Height="25px" BackColor="#CCCCCC" ></asp:TextBox><br>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Expertise Field cannot be Empty" ControlToValidate="txtExpertise"></asp:RequiredFieldValidator>
                                 <br>
                         <span style="color:purple;font-size:medium"><b>Mobile no  :</b></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtMob" runat="server" style="margin-right: 1px" Width="190px" Height="25px" BackColor="#CCCCCC"></asp:TextBox><br>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter your mobile no" ControlToValidate="txtMob"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Invalid Mobile No" ControlToValidate="txtMob" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                                             <br>                       
                          
                          <span style="color:purple;font-size:medium"><b>Email :</b></span>&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:TextBox ID="txtEmail" runat="server" Width="215px" Height="23px" BackColor="#CCCCCC"></asp:TextBox><br>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter your Emaild ID" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Invalid EmailID" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>       
                            <br>
                          <span style="color:purple;font-size:medium"><b>Upload Photo : <b></span> <asp:FileUpload ID="artistsimage" runat="server" />
        							

		
		<center>
        <asp:Button ID="btnAddArtist" runat="server" Text="Add Artist"  style="background-color:purple;color:aqua"
                onclick="btnAddArtist_Click" />
            </center>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                           </td></tr></table>
    
</center>
  
</asp:Content>


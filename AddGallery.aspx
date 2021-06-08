<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddGallery.aspx.cs" Inherits="AddGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center>
 
    <p>
        Image Name&nbsp; :&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br>
        <asp:FileUpload ID="ImageUpload1" runat="server" />
        <br>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />
&nbsp;&nbsp;
        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
  
</center>
</asp:Content>


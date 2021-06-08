<%@ Page Title="" Language="C#" MasterPageFile="masterpage.master" AutoEventWireup="true" CodeFile="Artists.aspx.cs" Inherits="Artists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tattooConnectionString %>" SelectCommand="SELECT * FROM [Artists]"></asp:SqlDataSource>
    <center>
    
        <center><h2 style="background-color:purple;color:aqua" class="title-w3">Our Artists</h2></center>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        RepeatColumns="3" RepeatDirection="Horizontal" CellSpacing="10" DataKeyField="artists_id">
        <ItemTemplate>
            <b><asp:image style="color:purple" ID="Label1" runat="server" imageurl='<%# Eval("artists_imgurl") %>' width="300" height="300" /></b>
<br />
                      
            <b><asp:Label style="color:purple" ID="artists_nameLabel" runat="server" Text='<%# Eval("artists_name") %>' /></b>
<br />
           
            <b><asp:Label style="color:purple" ID="artists_areaofexpertiseLabel" runat="server" Text='<%# Eval("artists_areaofexpertise") %>' /></b>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    
</center>
</asp:Content>


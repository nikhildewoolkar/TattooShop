<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="testimonials.aspx.cs" Inherits="testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:SqlDataSource ID="SqlDataSource1" 
                        runat="server" 
                        ConnectionString="<%$ ConnectionStrings:tattooConnectionString %>" 
                        SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
                   

<%--<asp:image ID="imageurlLabel" runat="server" imageurl='<%# Eval("imageurl") %>' style="border-color:maroon;border:2px maroon solid;" height="300" width="300"/>--%>
					<img id="Img1" runat="server" src='<%# Eval("imageurl") %>' />
					<h4><%#Eval("name")%>  </h4>
					<p style="color:Maroon;"><%#Eval("feedback") %></p>
				<center><h3 style="color:Purple">Testimonials</h3>

<asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" DataKeyField="id" DataSourceID="SqlDataSource1" 
        GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal">
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <ItemTemplate>
       
       
       
       
      <b>  <asp:image ID="imageurlLabel" runat="server" imageurl='<%# Eval("imageurl") %>' style="border-radius:50%;border-color:maroon;border:2px maroon solid;" height="300" width="300"/></b>

        <br />
      <b>  <asp:Label style="color:Purple" ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></b>
        <br />
       
        <b><asp:Label style="color:Purple" ID="FeedbackLabel" runat="server" Text='<%# Eval("Feedback") %>' /></b>
       
        <br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
</asp:DataList>
</center>				
</asp:Content>

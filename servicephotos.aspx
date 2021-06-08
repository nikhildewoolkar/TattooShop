<%@ Page Title="" Language="C#" MasterPageFile="masterpage.master" AutoEventWireup="true" CodeFile="servicephotos.aspx.cs" Inherits="Subservices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <br/><br/>
    <center><h2 style="background-color:purple;color:aqua" class="title-w3">Service Photos</h2></center>
    <br/><br/>
    
    <center>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tattooConnectionString %>" SelectCommand="SELECT * FROM [servicephotos] WHERE ([servicename] = @servicename)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="Tattoo Design" Name="servicename" QueryStringField="servicename" Type="string" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="product_id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
        <center>
             <img id="Img1" runat="server" style="border-radius:10%" src='<%# Eval("product_imgurl") %>' width="300" height="300" />

            <br>

         <%--   product_id:
            <asp:Label ID="product_idLabel" runat="server" Text='<%# Eval("product_id") %>' />
            <br />
            cat_id:
            <asp:Label ID="cat_idLabel" runat="server" Text='<%# Eval("cat_id") %>' />
            <br />
            product_name:
            <asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
            <br />
            product_imgurl:
            <asp:Label ID="product_imgurlLabel" runat="server" Text='<%# Eval("product_imgurl") %>' />
            <br />
            --%>
            <%--product_desc:--%>
            <%--<asp:Label ID="product_descLabel" runat="server" Text='<%# Eval("product_desc") %>' />--%>
            <br />
            <%--product_price:--%><p style="color:purple">Cost:Rs.
            <asp:Label ID="product_priceLabel" runat="server" Text='<%# Eval("product_price") %>' />
                </p>
            <br />

        </ItemTemplate>
    </asp:DataList>
<br />
</center>
    

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="adminmaster.master" AutoEventWireup="true" CodeFile="viewupdatedeleteservicephotos.aspx.cs" Inherits="viewsub" %>


    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/><br/>
    <center><h2 style="background-color:purple;color:aqua" class="title-w3">View/Update/Delete Service Photos</h2></center>
    <br/><br/>
    
    <center>


<asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged"  AutoGenerateColumns="false"
        OnRowCancelingEdit="gvImage_RowCancelingEdit" DataKeyNames="product_id" CellPadding="4"  
                OnRowEditing="gvImage_RowEditing" OnRowUpdating="gvImage_RowUpdating" OnRowDeleting="gvImage_RowDeleting" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:TemplateField HeaderText="Product id" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtproductid" runat="server" Text='<%# Eval("product_id") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblproductid" runat="server" Text='<%# Eval("product_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Servie Name" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtservicename" runat="server" Text='<%# Eval("servicename") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblsid" runat="server" Text='<%# Eval("servicename") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Service Name" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("product_name") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("product_name") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Service Image" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:Image ID="Image1" runat="server" imageurl='<%# Eval("product_imgurl") %>' Height="80px" Width="100px" />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" imageurl='<%# Eval("product_imgurl") %>' Height="80px" Width="100px"/>
                </ItemTemplate>
            </asp:TemplateField>

            <%--<asp:TemplateField HeaderText="Description" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtdesc" runat="server" Text='<%# Eval("product_desc") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbldesc" runat="server" Text='<%# Eval("product_desc") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>

            <asp:TemplateField HeaderText="Price" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtprice" runat="server" Text='<%# Eval("product_price") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblprice" runat="server" Text='<%# Eval("product_price") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>











            <asp:TemplateField HeaderStyle-Width="150px">  
                <ItemTemplate>  
                    <asp:LinkButton ID="LkB1" runat="server" CommandName="Edit">Edit</asp:LinkButton>  
                    <asp:LinkButton ID="LkB11" runat="server" CommandName="Delete">Delete</asp:LinkButton>  
                </ItemTemplate>  
                <EditItemTemplate>  
                    <asp:LinkButton ID="LkB2" runat="server" CommandName="Update">Update</asp:LinkButton>  
                    <asp:LinkButton ID="LkB3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>  
                </EditItemTemplate>  
            </asp:TemplateField>  





        </Columns>
        
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="purple" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>


<br />
<br/>
<table>
    
    <tr>
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </tr>
    
</table>






<br/><br />
<br />
<br/>
<table>
    
    <tr>
        <asp:Label ID="lblResult" runat="server" ></asp:Label>
    </tr>
    
</table>



</center>

    
</asp:Content>


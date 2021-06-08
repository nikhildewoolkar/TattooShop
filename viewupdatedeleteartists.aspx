<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="viewupdatedeleteartists.aspx.cs" Inherits="viewupdatedeleteartists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/><br/>
    <center><h2 style="background-color:purple;color:aqua" class="title-w3">View / Update  /Delete Artists</h2></center>
    <br/><br/>
    <center>
    
<asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged"  AutoGenerateColumns="false"
        OnRowCancelingEdit="gvImage_RowCancelingEdit" DataKeyNames="artists_id" CellPadding="4"  
                OnRowEditing="gvImage_RowEditing" OnRowUpdating="gvImage_RowUpdating" OnRowDeleting="gvImage_RowDeleting" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:TemplateField HeaderText="Artists id" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtid" runat="server" Text='<%# Eval("artists_id") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("artists_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Service Name" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("artists_name") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblcatname" runat="server" Text='<%# Eval("artists_name") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Artists Image" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:Image ID="Image1" runat="server" imageurl='<%# Eval("artists_imgurl") %>' Height="80px" Width="100px" />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" imageurl='<%# Eval("artists_imgurl") %>' Height="80px" Width="100px"/>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Phoneno" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtphone" runat="server" Text='<%# Eval("artists_phone") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("artists_phone") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>


             <asp:TemplateField HeaderText="Aritsts Emailid" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtemailid" runat="server" Text='<%# Eval("artists_email") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblemail" runat="server" Text='<%# Eval("artists_email") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

 <asp:TemplateField HeaderText="Area of Expertise" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtexpertise" runat="server" Text='<%# Eval("artists_areaofexpertise") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblexpertise" runat="server" Text='<%# Eval("artists_areaofexpertise") %>' ></asp:Label>
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
    </center>
<br />
<br/>
<table>
    
    <tr>
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </tr>
    
</table>






<br/><br />


<br/>
<br/>
        <asp:Label ID="lblResult" runat="server" ></asp:Label>



</center>

    
   

</asp:Content>


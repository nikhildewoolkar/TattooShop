<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="viewupdatedeleteappointment.aspx.cs" Inherits="viewupdatedeleteappointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/><br/>
    <center><h2 style="background-color:purple;color:aqua" class="title-w3">View / Update  /Delete Appointments</h2></center>
    <br/><br/>
    <center>
    
<br/><br />
<center>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:TemplateField HeaderText="customername" SortExpression="customername">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("customername") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("customername") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="phoneno" SortExpression="phoneno">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("phoneno") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("phoneno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="emailid" SortExpression="emailid">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("emailid") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("emailid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="servicename" SortExpression="servicename">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("servicename") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("servicename") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>


            <asp:TemplateField HeaderText="dateofappt" SortExpression="dateofappt">
                <EditItemTemplate>
                
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("dateofappt") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("dateofappt") %>'></asp:Label>
                
                </ItemTemplate>
            </asp:TemplateField>
            
            
            <asp:TemplateField HeaderText="timingslot" SortExpression="timingslot">
                <EditItemTemplate>
                    
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("timingslot") %>'></asp:TextBox>
                    
                </EditItemTemplate>
                <ItemTemplate>
                
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("timingslot") %>'></asp:Label>
                
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="query" HeaderText="query" SortExpression="query" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="purple" Font-Bold="True" ForeColor="aqua" />
        <PagerStyle ForeColor="purple" HorizontalAlign="Center" />
        <RowStyle BackColor="aqua" ForeColor="purple" />
        <SelectedRowStyle BackColor="aqua" Font-Bold="True" ForeColor="purple" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tattooConnectionString %>" DeleteCommand="DELETE FROM [appointment] WHERE [id] = @id" InsertCommand="INSERT INTO [appointment] ([customername], [phoneno], [emailid], [servicename], [dateofappt], [timingslot], [query]) VALUES (@customername, @phoneno, @emailid, @servicename, @dateofappt, @timingslot, @query)" SelectCommand="SELECT * FROM [appointment]" UpdateCommand="UPDATE [appointment] SET [customername] = @customername, [phoneno] = @phoneno, [emailid] = @emailid, [servicename] = @servicename, [dateofappt] = @dateofappt, [timingslot] = @timingslot, [query] = @query WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="customername" Type="String" />
            <asp:Parameter Name="phoneno" Type="String" />
            <asp:Parameter Name="emailid" Type="String" />
            <asp:Parameter Name="servicename" Type="String" />
            <asp:Parameter Name="dateofappt" Type="String" />
            <asp:Parameter Name="timingslot" Type="String" />
            <asp:Parameter Name="query" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="customername" Type="String" />
            <asp:Parameter Name="phoneno" Type="String" />
            <asp:Parameter Name="emailid" Type="String" />
            <asp:Parameter Name="servicename" Type="String" />
            <asp:Parameter Name="dateofappt" Type="String" />
            <asp:Parameter Name="timingslot" Type="String" />
            <asp:Parameter Name="query" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


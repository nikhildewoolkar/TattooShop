<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="bookappointment.aspx.cs" Inherits="bookappointment" %>


     <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
              <br><br>
              
           <center>    <h3 style="color:purple"><b>Book Appointment</b></h3> </center><br><br>
              <center>
              
              <table width="70%" style="background-color:pink;border: medium dashed purple">
               <tr>
               <td style="width: 392px"></td><td style="width: 423px">&nbsp;</td>
               </tr>
               <tr>
                   <td style="color:purple; width: 392px;">
                       YOUR NAME:</td>
                   <td style="width: 423px">
                       <asp:TextBox ID="txtName" runat="server" Width="251px" 
                           ></asp:TextBox>
                      </td>
               </tr>

               <tr>
                   <td style="height: 22px; width: 392px;">
                   </td>
                   <td style="height: 22px; width: 423px;">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                           ErrorMessage="*ENTER YOUR NAME" ControlToValidate="txtName" 
                           ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td style="color:purple;height: 22px; width: 392px;">
                       MOBILE NO.:</td>
                   <td style="width: 423px">
                       <asp:TextBox ID="txtPhoneno" runat="server" Width="251px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                           ErrorMessage="*ENTER MOBILE NO." ControlToValidate="txtPhoneno" 
                           ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                           ErrorMessage="*ENTER VALID MOBILE NUMBER" ControlToValidate="txtPhoneno" 
                           ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td style="height: 22px; width: 392px;color:purple">
                       EMAIL ID:</td>
                   <td style="height: 22px; width: 423px;">
                       <asp:TextBox ID="txtEmail" runat="server" Width="251px"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="height: 22px; width: 392px;">
                       &nbsp;</td>
                   <td style="height: 22px; width: 423px;">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                           ControlToValidate="txtEmail" ErrorMessage="*ENTER YOUR EMAIL ID" 
                           ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                           ControlToValidate="txtEmail" ErrorMessage="*ENTER A VALID EMAIL ID" 
                           ForeColor="Red" 
                           ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td style="color:purple; width: 392px;height: 22px;">
                       SELECT YOUR Service:</td>
                   <td style="width: 423px">
                       <asp:DropDownList ID="ddlService" runat="server">
                           <asp:ListItem>Select</asp:ListItem>
                                       <asp:ListItem>Tatoo Design</asp:ListItem>
                    <asp:ListItem>Special Occassion</asp:ListItem>
                    <asp:ListItem>Tatto Removal</asp:ListItem>
                           
                       </asp:DropDownList>
                   </td>
               </tr>
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                           ErrorMessage="*Select Event" ControlToValidate="ddlService" 
                           ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       &nbsp;</td>
               </tr>
               
               <tr>
                   <td style="color:purple; width: 392px;height: 22px;">
                       Specific Query if any </td>
                   <td style="width: 423px">
                       <asp:TextBox ID="txtQuery" runat="server" Width="253px" TextMode="MultiLine"></asp:TextBox>
                   </td>
               </tr>
               
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       &nbsp;</td>
               </tr>
               
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       &nbsp;</td>
               </tr>
               
               <tr>
                   <td style="color:purple; width: 392px;height: 22px;">
                       Timing Slot :</td>
                   <td style="width: 423px">
                       <asp:DropDownList ID="ddlTimingslot" runat="server">
                           <asp:ListItem>Select</asp:ListItem>
                           <asp:ListItem Value="Morning">Morning(7am to 11am)</asp:ListItem>
                           <asp:ListItem>Afternoon (12 noon to 4pm)</asp:ListItem>
                           <asp:ListItem Value="Evening">Evening(4pm to 9pm)</asp:ListItem>
                       </asp:DropDownList>
                   </td>
               </tr>
               
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                           ErrorMessage="*Please enter no of people" ControlToValidate="ddltimingslot" 
                           ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               

               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       &nbsp;</td>
               </tr>
               
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       &nbsp;</td>
               </tr>
               
               <tr>
                   <td style="color:purple; width: 392px;height: 22px;">
                       DATE OF Appointment:</td>
                   <td style="width: 423px">
                       <asp:Calendar ID="calDate" runat="server" BackColor="#FFFFCC" 
                           BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                           Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                           ShowGridLines="True" Width="220px">
                           <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                           <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                           <OtherMonthDayStyle ForeColor="#CC9966" />
                           <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                           <SelectorStyle BackColor="#FFCC66" />
                           <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                               ForeColor="#FFFFCC" />
                           <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                       </asp:Calendar>
                   </td>
               </tr>
               
             
               
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       &nbsp;</td>
               </tr>
               
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       &nbsp;</td>
               </tr>
               
               <tr>
                   <td style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                       &nbsp;</td>
               </tr>
               





               <tr>
                   <td colspan="1" style="width: 392px">
                       &nbsp;</td>
                   <td style="width: 423px">
                   <asp:Button ID="btnAppointment" runat="server" ForeColor="white" BackColor="purple"
                   Height="38px" Width="163px" Text="Book A Appointment" OnClick="btnAppointment_Click" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnReset" runat="server" ForeColor="white" BackColor="purple" Height="38px" Width="86px" 
                   Text="Reset" OnClick="btnReset_Click" />  
                       
                   </td>
                   </tr>
                  </table>
                  </center>
               



</asp:Content>


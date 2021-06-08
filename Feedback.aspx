<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <center>
				<h3 style="color:purple">Feedback Form</h3>
                    
<table border="2" width="50%" cellpadding="5" cellspacing ="5" style="border: medium dashed purple;">
                      <tr>

                <td>
                   
                    <asp:TextBox placeholder="Name"  class="form-control" ID="txtName" runat="server" Width="190px" Height="25px" 
                        BackColor="#CCCCCC" ForeColor="orangered"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Please Enter your First name" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Name contains Only Characters" ControlToValidate="txtName" 
                        ValidationExpression="[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>    
                                <br />
                                </td>
            </tr>
            
            <tr>
            <td><td>
            </tr>
            
            
            <tr>

                <td>
  <asp:TextBox placeholder="Mobile No" ID="txtphoneno"  class="form-control" runat="server" style="margin-right: 1px" Width="190px" Height="25px" BackColor="#CCCCCC" ForeColor="Maroon"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Please Enter your mobile no" ControlToValidate="txtphoneno"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ErrorMessage="Invalid Mobile No" ControlToValidate="txtphoneno" 
                        ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>

            <tr>
            <td><td>
            </tr>
            

            <tr>

    <td>
                 
                    <asp:TextBox placeholder="Email" ID="txtEmail" runat="server"  class="form-control"  Width="190px" Height="25px" 
                        ForeColor="Maroon" BackColor="#CCCCCC"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Please enter your Emaild ID" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ErrorMessage="Invalid EmailID" ControlToValidate="txtEmail" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> 
                    <br />
                </td>
            </tr> 

            <tr>
            <td><td>
            </tr>
            
            <tr>
            
            <td>
                
                <asp:TextBox placeholder="Feedback" ID="txtFeedback" runat="server" Width="191px"  class="form-control"  TextMode= "MultiLine" 
                    Height="80px" ForeColor="Maroon" BackColor="#CCCCCC" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Address Field cannot be Empty" ControlToValidate="txtFeedback"></asp:RequiredFieldValidator>
                <br />
                </td>
            </tr>
            
            <tr>
            <td><td>
            </tr>
            
            
            <tr>
            <td>
             Upload Photo : &nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="perosnimageurl"  class="form-control"  runat="server" /> 
                 <br />
                 </td>
            </tr>
           
           <tr>
                      <td>
                 
            <asp:Button  ID="btnRegSubmit" style="background-color:purple;color:orangered" runat="server"   Height="38px" Width="86px" Text="Submit" onclick="btnRegSubmit_Click" />
          
            <asp:Button ID="btnRegReset"  runat="server" Height="38px" Width="86px" style="background-color:purple;color:orangered" Text="Reset" />  
            </td>
            
            </tr>
            <tr>
            <td><td>
            </tr>
            
             </table>
             <br /><br />
             </center>  
             
			

			
			
</asp:Content>


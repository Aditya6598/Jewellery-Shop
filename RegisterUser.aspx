<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterUser.aspx.cs" Inherits="RegisterUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style>
type1{color: #FFFF; font-size: 30px; font-weight: bold; font-style: bold}
type2{color:  #660066; font-size: 20px; font-style: BOLDitalic}
type3{color: green; font-size: 18px; font-weight: bold; font-style: bold}
type4{color: green; font-size: 14px; font-weight: bold; font-style: bold}
type5{color: #002356; font-size: 16px;  font-style: italic}
type7{color: #eeeeff; font-size: 18px; font-weight: bold; font-style: bold}
type8{color: black; font-size: 16px; font-weight: bold; font-style: bold}
a{color:black;text-decoration:none;font:bold}
a:hover{color:blue}
td.menu{background:lightyellow}
table.menu
{
font-size:100%;
position:absolute;
visibility:hidden;
}
</style>
<script type="text/javascript">
function showmenu(elmnt)
{
document.getElementById(elmnt).style.visibility="visible"
}
function hidemenu(elmnt)
{
document.getElementById(elmnt).style.visibility="hidden"
}
</script>
   </head>
<body bgcolor="lavender">
<table  border="0">
        <tr>
          <td  bgcolor="white"><img src="reuse.jpg" width="150" height="120" align="bottom"/></td>
          <td width="686" valign="top" bgcolor="#BBBBBB" height="108"><div align="center"><br>
            <h3><type1>DEVELOPEMENT AND CLASSIFICATION OF REUSABLE COMPONENTS</type1></h3><br>
            </td>
            <td  bgcolor="white"><img src="reuse1.jpg"width="150" height="120" align="bottom" ></td>
        </tr>
    </table>

<marquee bgcolor="orange"><type5>Components with greater efficiency have been added into the repository </type5></marquee>
    <form id="form1" runat="server">
    
        <table width=100%>
 <tr bgcolor="33abab">
 <td onmouseover="showmenu('fairs')" onmouseout="hidemenu('fairs')">
   <a ><font color="black">HOME</a><br />
   <table class="menu" id="fairs" width="120">
   <tr><td class="menu"><a href="Home.aspx">HOME</a></td></tr>
   </table>
  </td>
  <td onmouseover="showmenu('trsch')" onmouseout="hidemenu('trsch')">
   <a ><font color="black">LOGIN</a><br />
   <table class="menu" id="trsch" width="120">
   <tr><td class="menu"><a href="LoginPage.aspx">LOGIN</a></td></tr>
    </table>
       </td>
   <td onmouseover="showmenu('cata')" onmouseout="hidemenu('cata')">
   <a ><font color="black">NEW REGISTRATION</a><br />
   <table class="menu" id="cata" width="120">
   <tr><td class="menu"><a href="RegisterUser.aspx">NEW REGISTRATION</a></td></tr>
      </table>
  </td> 
    <td onmouseover="showmenu('RES')" onmouseout="hidemenu('RES')">
   <a ><font color="black">ABOUT US</a><br />
   <table class="menu" id="RES" width="120">
   <tr><td class="menu"><a href="AboutUS.aspx">ABOUT US</a></td></tr>
      </table>
  </td> 
  </table>  <tr><br />
<BR><p align="center" style="line-height:100%; margin-top:6; margin-bottom:3; font-style: italic"><b><font color="green" >If you have not registered for this site  and would like to take advantage of the benefits of being a user of this site,

please complete the one time online registration form and create your own user name and password.  It is that easy! 
    <br /><br /><br />
        <tr><h3><CENTER>INSERT YOUR DETAILS</CENTER></h3>
        </tr>  
         <table align="center" width="700" border="0">                         
                <td  style="height:100%; width: 60%;">
                    &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label><br />
        <br />
        <table cellpadding=3 cellspacing=3 border=3 bordercolor="black" ALIGN="CENTER">
                 <Tbody>
                 <tr>
                <td >
       &nbsp; &nbsp; &nbsp; &nbsp; User Name :</td>
       <td>&nbsp;
        <asp:TextBox ID="txtUserName" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
            ErrorMessage="Enter User Name"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtUserName"  Display="Dynamic"
                ErrorMessage="Enter a valid User Name" ValidationExpression ="[A-Za-z]*" ></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
            <td>
        &nbsp; &nbsp; &nbsp; &nbsp; PassWord : </td>
        <td>&nbsp;
        <asp:TextBox ID="txtPassWord" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassWord"
            ErrorMessage="Enter Password"></asp:RequiredFieldValidator><br /></td>
            </tr>
            <tr>
            <td>
        &nbsp; &nbsp; &nbsp; &nbsp; FirstName :</td>
        <td> &nbsp;
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtFirstName"
            ErrorMessage="Enter First Name"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtFirstName"  Display="Dynamic"
                ErrorMessage="Enter a valid First Name" ValidationExpression ="[A-Za-z]*" ></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
        <td>
        &nbsp; &nbsp; &nbsp; &nbsp; LastName : </td>
        <td>&nbsp;
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtLastName"
            ErrorMessage="Enter Last Name"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtLastName"  Display="Dynamic"
                ErrorMessage="Enter a valid Last Name" ValidationExpression ="[A-Za-z]*" ></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
        <td>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Address1 :</td>
        <td> &nbsp;
        <asp:TextBox ID="txtAdress1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtAdress1"
            ErrorMessage="Enter The Address"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtAdress1"  Display="Dynamic"
                ErrorMessage="Enter a valid Address" ValidationExpression ="[A-Za-z0-9 :;/-]*" ></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
        <td>
        &nbsp; &nbsp; &nbsp; &nbsp; Address2&nbsp; :</td>
        <td> &nbsp;
        <asp:TextBox ID="txtAdress2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAdress2"
            ErrorMessage="Enter The Address"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtAdress2"  Display="Dynamic"
                ErrorMessage="Enter a valid Address" ValidationExpression ="[A-Za-z0-9-:; /]*" ></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
        <td>
        &nbsp; &nbsp; &nbsp; &nbsp; City &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; :</td>
        <td> &nbsp;
        <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtCity"
            ErrorMessage="Enter City Name"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtCity"  Display="Dynamic"
                ErrorMessage="Enter a valid Name" ValidationExpression ="[A-Za-z ]*" ></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
        <td>
        &nbsp; &nbsp; &nbsp; &nbsp; State &nbsp; &nbsp; &nbsp;&nbsp; : </td>
        <td>&nbsp;
        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtState"
            ErrorMessage="Enter State Name"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtState"  Display="Dynamic"
                ErrorMessage="Enter a valid Name" ValidationExpression ="[A-Za-z ]*" ></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
        <td>
        &nbsp; &nbsp; &nbsp; &nbsp; Country &nbsp; : </td>
        <td>&nbsp;&nbsp;
        <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCountry"
            ErrorMessage="Enter Country Name"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCountry"  Display="Dynamic"
                ErrorMessage="Enter a valid Name" ValidationExpression ="[A-Za-z ]*" ></asp:RegularExpressionValidator></td>
          </tr>
        <tr>
        <td>
        &nbsp; &nbsp; &nbsp; &nbsp; Email &nbsp; &nbsp; &nbsp; : </td>
        <td>&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail"
            ErrorMessage="Enter Email"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="emailreg" runat="server" ControlToValidate="txtEmail"  Display="Dynamic"
                ErrorMessage="Enter a valid email adress" ValidationExpression ="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
            <td>
        &nbsp; &nbsp; &nbsp; &nbsp; WebSite&nbsp; : </td>
        <td>&nbsp;
        <asp:TextBox ID="txtWebsite" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtWebsite" 
            ErrorMessage="Enter Web site Adress"></asp:RequiredFieldValidator><br /></td>
            </tr>
            <tr>
            <td>
        &nbsp; &nbsp; &nbsp; &nbsp; PhoneNumber :</td>
        <td>
        <asp:TextBox ID="txtPhNo" runat="server"></asp:TextBox>&nbsp;
                    
                    
                        <asp:RegularExpressionValidator
                            ID="regExTelephone" runat="server" ControlToValidate="txtPhNo" Display="Dynamic"
                            ErrorMessage="Please enter a valid Telephone Number" ValidationExpression="^[0-9]{7,10}$"></asp:RegularExpressionValidator>
                    </td>
<br />
       
        </tr>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <tr>
        <td><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
              </td> </tr> </table>
               </tbody> 
           
            <tr>
                <td colspan="2" style="height: 10%">
                </td>
            </tr>
        </table>
        
    </form>
</body>
</html>

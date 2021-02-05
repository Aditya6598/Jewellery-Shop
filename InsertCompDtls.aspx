<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="InsertCompDtls.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Insert component details</title>
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
    <form id="form1" runat="server">
    <table  border="0">
        <tr>
          <td  bgcolor="white"><img src="reuse.jpg" width="150" height="120" align="bottom"/></td>
          <td width="686" valign="top" bgcolor="#BBBBBB" height="108"><div align="center"><br>
            <type1>DEVELOPEMENT AND CLASSIFICATION OF REUSABLE COMPONENTS</type1><br></td>
                        <td  bgcolor="white"><img src="reuse1.jpg"width="150" height="120" align="bottom" ></td>
        </tr>
    </table>

<marquee bgcolor="orange"><type5>Components with greater efficiency have been added into the repository </type5>
</marquee>
    <table width=100%>
   <tr bgcolor="33abab">
 <td onmouseover="showmenu('fairs')" onmouseout="hidemenu('fairs')">
   <a ><font color="black">HOME</a><br />
   <table class="menu" id="fairs" width="120">
   <tr><td class="menu"><a href="Home.aspx">HOME</a></td></tr>
   </table>
  </td>
  <td onmouseover="showmenu('trsch')" onmouseout="hidemenu('trsch')">
   <a ><font color="black">SEARCH COMPONENT</a><br />
   <table class="menu" id="trsch" width="120">
   <tr><td class="menu"><a href="SearchCompDtls.aspx">SEARCH COMPONENT</a></td></tr>
    </table>
       </td>
   <td onmouseover="showmenu('cata')" onmouseout="hidemenu('cata')">
   <a ><font color="black">INSERT NEW COMPONENT</a><br />
   <table class="menu" id="cata" width="120">
   <tr><td class="menu"><a href="InsertCompDtls.aspx">INSERT NEW COMPONENT</a></td></tr>
      </table>
  </td> 
  <td onmouseover="showmenu('RULES')" onmouseout="hidemenu('RULES')">
   <a><font color="black">LOG OUT</a><br />
   <table class="menu" id="RULES" width="120">
   <tr><td class="menu"><a href="loginPage.aspx">LOG OUT</a></td></tr>
   

    </table>
  </td>
    <td onmouseover="showmenu('RES')" onmouseout="hidemenu('RES')">
   <a ><font color="black">ABOUT US</a><br />
   <table class="menu" id="RES" width="120">
   <tr><td class="menu"><a href="aboutuslogin.aspx">ABOUT US</a></td></tr>
      </table>
  </td>       
         <table width="700" border="0">


</table>
<tr><h5><CENTER><font color="green">INSERT THE COMPONENT DETAILS</font></CENTER></h5>
</tr>
                <table cellpadding=3 cellspacing=3 border=3 bordercolor="black" ALIGN=CENTER>
                 <Tbody>
                 <tr>
                <td >
                   Component Name <span style="color: #ff0033">*</span>:</td>
        <td><asp:TextBox ID="TxtCompName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Component Name" ControlToValidate="TxtCompName"></asp:RequiredFieldValidator><br />
            <br /></td></tr>
            <tr>
                <td >
                   Version <span style="color: #ff0033">*</span>:</td>
        <td><asp:TextBox ID="TxtCompVersion" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Component Name" ControlToValidate="TxtCompVersion"></asp:RequiredFieldValidator><br />
            <br /></td></tr>
            
        
        <tr>
        <td>
        Description <span style="color: #ff0033">*</span>:</td>
        <td><asp:TextBox ID="TxtDesc" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter COmponent description" ControlToValidate="TxtDesc"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;<br />
        <br /></td>
        </tr>
        
        <tr>
                <td >
                   Time Complexity <span style="color: #ff0033">*</span>:</td>
        <td><asp:TextBox ID="timecomp" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Time complexity" ControlToValidate="timecomp"></asp:RequiredFieldValidator><br />
            <br /></td></tr>
            
        <tr>
        <td>
        Inputs :</td>
        <td><asp:TextBox ID="TxtInputs" runat="server"></asp:TextBox><br />
        <br /></td>
        </tr>
        <tr>
        <td>
        OutPuts :</td>
        <td><asp:TextBox ID="TxtOutputs" runat="server"></asp:TextBox><br />
        <br /></td>
        </tr>
        <tr>
        <td>
        Language <span style="color: #ff0033">*</span>:</td>
        <td>&nbsp;<asp:DropDownList ID="DdlLanguage" runat="server">
        </asp:DropDownList>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DdlLanguage"
            ErrorMessage="Select a Lnguage" Operator="NotEqual" ValueToCompare="0"></asp:CompareValidator>
        <br />
        <br /></td>
        </tr>
        <tr>
        <td>
        Operating Syatem <span style="color: #ff0033">*</span>:</td>
        <td><asp:DropDownList ID="DdlOS" runat="server">
        </asp:DropDownList>&nbsp;
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="DdlOS"
            ErrorMessage="Select a OS" Operator="NotEqual" ValueToCompare="0"></asp:CompareValidator><br />
        <br /></td>
        </tr>
        <tr>
        <td>
        Category <span style="color: #ff0033">*</span>:</td>
        <td><asp:DropDownList ID="DdlCatg" runat="server">
        </asp:DropDownList>&nbsp;
        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="DdlCatg"
            ErrorMessage="Select a Category" Operator="NotEqual" ValueToCompare="0"></asp:CompareValidator><br />
        <br /></td>
        </tr>
        <tr>
        <td>
        Domain <span style="color: #ff0033">*</span>:</td>
        <td>&nbsp;<asp:DropDownList ID="DdlDomain" runat="server">
        </asp:DropDownList>
        <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="DdlDomain"
            ErrorMessage="Select a Domain" Operator="NotEqual" ValueToCompare="0"></asp:CompareValidator>
        <br />
        <br /></td>
        </tr>
        <tr>
        <td>
        Component File <span style="color: #ff0033">*:</td>
        <td></span><asp:FileUpload ID="FileComp" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Select a file to upload" ControlToValidate="FileComp"></asp:RequiredFieldValidator><br />
        <br /></td>
        </tr>
        <tr>
                <td >
                   Keywords : <span style="color: #ff0033">*</span>:</td>
        <td><asp:TextBox ID="TxtKeywords" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Keyword" ControlToValidate="TxtKeywords"></asp:RequiredFieldValidator><br />
            <br /></td></tr>
        
        </Tbody>
         </table>
        
        </tr>
        
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
   <asp:Button ID="Btnsubmit" runat="server"   Text="submit" OnClick="Btnsubmit_Click" />
            
            <tr>
                <td colspan="2" style="height: 10%">
                </td>
            </tr>
      
 
 </table>
    </form>
</body>
</html>

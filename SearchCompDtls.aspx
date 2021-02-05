<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchCompDtls.aspx.cs" Inherits="SearchCompDtls" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
   <a ><font color="black"></font>HOME</a><br />
   <table class="menu" id="fairs" width="120">
   <tr><td class="menu"><a href="HomeafterLogin.aspx">HOME</a></td></tr>
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
   <tr><td class="menu"><a href="AboutUspost.aspx">ABOUT US</a></td></tr>
      </table>
  </td>    
  </table>
<tr><h5><CENTER>INSERT THE COMPONENT DETAILS TO BE SEARCHED</CENTER></h5>
</tr>  
         <table width="700" border="0">
                <td style="height:100%; width: 60%;">
                   <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <table cellpadding=3 cellspacing=3 border=3 bordercolor="black" ALIGN=CENTER>
                 <Tbody>
                 <tr>
                <td >
         Category: </td> 
         <td>&nbsp;<asp:DropDownList ID="DdlCatg" runat="server">
        </asp:DropDownList>&nbsp;
        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="DdlCatg"
            ErrorMessage="Select a Category" ValueToCompare="0" Operator="NotEqual"></asp:CompareValidator><br />
        <br /></td>
        </tr>
        <tr>
        <td>
        KeyWord :</td>
        <td><asp:TextBox ID="TxtKeyWord" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtKeyWord"
            ErrorMessage="Enter a keyword"></asp:RequiredFieldValidator><br />
        <br />
         <cc1:AutoCompleteExtender ID="AutoCompleteExtender1"
         CompletionInterval="1000" EnableCaching="true" MinimumPrefixLength="1"
          TargetControlID="TxtKeyWord" ServiceMethod="GetKeyWords" ServicePath="MyService.asmx" runat="server">
        </cc1:AutoCompleteExtender></td>
        </tr>
        <tr>
        <td>
        Inputs : </td> 
        <td><asp:TextBox ID="TxtInput" runat="server"></asp:TextBox><br />
         <cc1:AutoCompleteExtender ID="AutoCompleteExtender2"
         CompletionInterval="1000" EnableCaching="true" MinimumPrefixLength="1"
          TargetControlID="TxtInput" ServiceMethod="GetInputs" ServicePath="MyService.asmx" runat="server">
        </cc1:AutoCompleteExtender>
        <br /></td>
        </tr>
        <tr>
        <td>
         OutPut :</td>
        <td><asp:TextBox ID="TxtOutPut" runat="server"></asp:TextBox><br />
        <cc1:AutoCompleteExtender ID="AutoCompleteExtender3"
         CompletionInterval="1000" EnableCaching="true" MinimumPrefixLength="1"
          TargetControlID="TxtOutPut" ServiceMethod="GetOuputs" ServicePath="MyService.asmx" runat="server">
        </cc1:AutoCompleteExtender>
        <br /></td>
        </tr>
        <tr>
        <td>
        Language :</td>
        <td><asp:DropDownList ID="DdlLanguage" runat="server">
        </asp:DropDownList>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Select a Language" ControlToValidate="DdlLanguage" SetFocusOnError="True" ValueToCompare="0" Operator="NotEqual"></asp:CompareValidator>
        <br /></td>
        </tr>
        <tr>
        <td>
        Operating System :</td>
        <td><asp:DropDownList ID="DdlOS" runat="server">
        </asp:DropDownList>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Select an OS" ControlToValidate="DdlOS" ValueToCompare="0" Operator="NotEqual"></asp:CompareValidator>
        <br /></td>
        </tr>
        
        <%--<tr>
        <td>
        Domain :</td>
        <td><asp:DropDownList ID="DdlDomain" runat="server">
        </asp:DropDownList>
        <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Select an Domain" ControlToValidate="DdlDomain" ValueToCompare="0" Operator="NotEqual"></asp:CompareValidator>
        <br /></td>
        </tr>
--%>        
        
        <tr >
       <td>
        <center><asp:Button ID="BtnSubmit" runat="server" Text="submit" OnClick="BtnSubmit_Click" /></center></td>
 
  </table>
      </Tboby>
                </td>
          </tr>
            <tr>
                <td colspan="2" style="height: 10%">
                </td>
            </tr>
       
     
    </form>

   
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeafterLogin.aspx.cs" Inherits="HomeafterLogin" %>

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
<tr><br />
<BR><p align="center" style="line-height:100%; margin-top:6; margin-bottom:3; font-style: italic"><b><font color="green" >This site seeks to lower the cost of software development while increasing both the speed at which applications 
can be developed and the quality of the ultimate application.</b><br><BR>
</tr><br>
<p align="center">By introducing reusable components to the development life cycle, which reduces the amount of software that must be built by an average of over 50 percent per application, developers can focus on customizing and integrating these components into a business solution</p>
<p align="center">The ability to develop new applications (In particular Web-based applications) in a short time is crucial to the 
success of software companies that need to compete aggressively in today’s market. Considering the fact that software technologies emerge very fast, change on a daily basis, this becomes an even more complicated task. For this reason it
 is vital to share and reuse the knowledge and the programming experiences in an efficient and productive manner</p>

</table>
        </table>
                
    </form>
</body>
</html>

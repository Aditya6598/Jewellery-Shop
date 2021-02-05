<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostSearch.aspx.cs" Inherits="PostSearch" %>

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
            <h3><type1>DEVELOPEMENT AND CLASSIFICATION OF REUSABLE COMPONENTS</type1></h3><br>
            </td>
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
    <td onmouseover="showmenu('RES')" onmouseout="hidemenu('RES')">
   <a ><font color="black">ABOUT US</a><br />
   <table class="menu" id="RES" width="120">
   <tr><td class="menu"><a href="AboutUspost.aspx">ABOUT US</a></td></tr>
      </table>
  </td>       
            <tr align=center>
            <td><h5><center>THE SEARCH RESULTS IN THESE COMPONENTS</center></h5></td>
            <tr align=center>
                <td style="height:100%; width: 60%;">
                  <asp:GridView AutoGenerateColumns="False" DataKeyNames="Comp_Name,Comp_Desc,Version"

             ID="GridView1" runat="server" Width="434px">

            <Columns>

                <asp:BoundField DataField="Comp_Name" HeaderText="Component Name" ></asp:BoundField>
                              
                <asp:BoundField DataField="Version" HeaderText="Version" ></asp:BoundField>
                 
                <asp:BoundField DataField="Comp_Desc" HeaderText="Component Description"></asp:BoundField>
                
                

                
                
                <asp:TemplateField ShowHeader="false">
                <ItemStyle HorizontalAlign="Center" />
                <ItemTemplate>
                   <asp:LinkButton id="DownLoad" Font-Underline="true" runat="server" BackColor="#E2F7B3" CommandArgument='<%#DataBinder.Eval(Container.DataItem, "Comp_Path")%>' OnCommand="DownLoadCompoNent">DownLoad</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
                

            </Columns>

        </asp:GridView>
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

              </tr>  
            </tr>
   </td>
            <tr>
                <td colspan="2" style="height: 10%">
                </td>
            </tr>
            </tr>
        </table>
        

    </form>
</body>
</html>

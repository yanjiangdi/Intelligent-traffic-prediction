<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ID_日期折线图（真实_预测对比）</title>
</head>

<body bgcolor="#CCCCCC">


<table height="200">
<tr bgcolor="#0B0000"width="300" >
<td width="300" height="200"><img src="index/label.png" width="200" height="100" /></td>
<td width="2000"  height="200" align="center"><font size="+4"  color="#FFFF00">智慧交通预测 </font><font size="+2" color="#FFFFFF">Smart Transportation 欢迎您的登陆：admin
 </font><font color="#FFFF00">|<a href="gly.jsp">浏览个人信息 </a>|<a  href="login1.jsp">退出登录</a></font></td>
</tr>
</table>
<table>
<tr height="600" width="280">
<td  width="280" height="10" align="center" border="1">

<table border="1" height="700" bgcolor="#0099FF" > 
<tr align="center" border="1">
<td align="center" border="1"> 
<font size="+1" color="#FFFFFF">ID_日期折线图（真实_预测对比）</font></a>
<br /><br /><br />
</td>

</tr>

<tr align="center">
<td align="center"> 
<a   color="#FFFF00" style="text-decoration:none"href="ac_all.jsp"><font size="+1" color="#FFFFFF">ID_日期折线图（全天变化）</font></a>
<br /><br /><br />
</td>

</tr>
<tr align="center">
<td align="center"> 
<a  color="#FFFF00"   style="text-decoration:none"href="3D_all.jsp"><font size="+1" color="#FFFFFF">3D图</font></a>

<br /><br /><br />
</td>

</tr>
<tr align="center">
<td align="center"> 
<a   color="#FFFF00" style="text-decoration:none"href="img_all.jsp"><font size="+1" color="#FFFFFF">ID_日期折线图（不同ID对比）</font></a>
<br /><br /><br />
</td>

</tr>

<tr align="center">
<td align="center"> 
<a color="#FFFF00"  style="text-decoration:none" href="gly.jsp"><font size="+1" color="#FFFFFF">管理员信息</font></a>
<br /><br />
</td>

</tr>


</table>


</td>
<td  width="1500" align="center">
<table height="100">
			<form action="zx.jsp">
				<p align="center"><font color="#D90D10"><font size="+2">ID：</font></font>


						<select name="id" size="1">
						<option value="4377906289869500416">4377906289869500416</option> 
						</select>
						<font color="#D90D10"><font size="+2">日期：</font></font>
						<select name="date" size="1">
						<option value="2016-06-13">2016-06-13</option>
						<option value="2016-04-30">2016-06-20</option>
						<option value="2016-05-23">2016-06-23</option>
						<option value="2016-06-10">2016-06-30</option>
						</select>
						<input type="submit" value="查询">
				
			</p>
			
			<br /><br /><br />
	</form>
  <tr align="center" width="1000" height="100">
	<td width="1000" height="100"><iframe src="index/4377906289869500416_2016-06-13-p_r.html" frameborder="0" width="1200" scrolling="False" height="550" leftmargin="0" topmargin="0"></iframe></td>
  </tr>
  </table>
 </td>
 </tr>
 </table>

<table>
<tr  height="30"><td width="2000" align="center" bgcolor="#333333"><font color="#FFFFFF" size="-1" >COPYRIGHT &copy; 2017-2018&nbsp;&nbsp;&nbsp;&nbsp;智慧交通预测 .燕江弟、王志强、于林涵、李嘉禾  版权所有&nbsp;&nbsp;&nbsp;&nbsp;禁止拷贝、复制，违者必究。</font>
</td>
</tr>
</table>
</body>
</html>

</body>
</html>

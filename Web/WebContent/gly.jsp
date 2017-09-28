<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>管理员信息</title>
   <SCRIPT language="JavaScript">     
   //鼠标点击选择行时候变色  
   function change1(change) {  
   	window.location.href='zx_all.jsp';
   	var oObj = window.event.srcElement;  
       //alert(change.tagName.toLowerCase());  
       if(oObj.tagName.toLowerCase() == "td"){     
           var oTr = oObj.parentNode;     
           for(var i=1; i<document.all.table1.rows.length; i++)   {     
               document.all.table1.rows[i].style.backgroundColor   =   "";     
               document.all.table1.rows[i].tag = false;     
           }  
           oTr.style.backgroundColor = "#000079";     
           oTr.tag = true;     
       }  
   }  
   function change2(change) {  
   	window.location.href='ac_all.jsp';
   	var oObj = window.event.srcElement;  
       //alert(change.tagName.toLowerCase());  
       if(oObj.tagName.toLowerCase() == "td"){     
           var oTr = oObj.parentNode;     
           for(var i=1; i<document.all.table1.rows.length; i++)   {     
               document.all.table1.rows[i].style.backgroundColor   =   "";     
               document.all.table1.rows[i].tag = false;     
           }  
           oTr.style.backgroundColor = "#000079";     
           oTr.tag = true;     
       }  
   }  
   function change3(change) {  
   	window.location.href='3D_all.jsp';
   	var oObj = window.event.srcElement;  
       //alert(change.tagName.toLowerCase());  
       if(oObj.tagName.toLowerCase() == "td"){     
           var oTr = oObj.parentNode;     
           for(var i=1; i<document.all.table1.rows.length; i++)   {     
               document.all.table1.rows[i].style.backgroundColor   =   "";     
               document.all.table1.rows[i].tag = false;     
           }  
           oTr.style.backgroundColor = "#000079";     
           oTr.tag = true;     
       }  
   }  
   function change4(change) {  
   	window.location.href='img_all.jsp';
   	var oObj = window.event.srcElement;  
       //alert(change.tagName.toLowerCase());  
       if(oObj.tagName.toLowerCase() == "td"){     
           var oTr = oObj.parentNode;     
           for(var i=1; i<document.all.table1.rows.length; i++)   {     
               document.all.table1.rows[i].style.backgroundColor   =   "";     
               document.all.table1.rows[i].tag = false;     
           }  
           oTr.style.backgroundColor = "#000079";     
           oTr.tag = true;     
       }  
   }  
   function change5(change) {  
   	window.location.href='gly.jsp';
   	var oObj = window.event.srcElement;  
       //alert(change.tagName.toLowerCase());  
       if(oObj.tagName.toLowerCase() == "td"){     
           var oTr = oObj.parentNode;     
           for(var i=1; i<document.all.table1.rows.length; i++)   {     
               document.all.table1.rows[i].style.backgroundColor   =   "";     
               document.all.table1.rows[i].tag = false;     
           }  
           oTr.style.backgroundColor = "#000079";     
           oTr.tag = true;     
       }  
   }  
   function change6(change) {  
		window.location.href='length.jsp';
		var oObj = window.event.srcElement;  
	    //alert(change.tagName.toLowerCase());  
	    if(oObj.tagName.toLowerCase() == "td"){     
	        var oTr = oObj.parentNode;     
	        for(var i=1; i<document.all.table1.rows.length; i++)   {     
	            document.all.table1.rows[i].style.backgroundColor   =   "";     
	            document.all.table1.rows[i].tag = false;     
	        }  
	        oTr.style.backgroundColor = "#000079";     
	        oTr.tag = true;     
	    }  
	}
	function change7(change) {  
		window.location.href='width.jsp';
		var oObj = window.event.srcElement;  
	    //alert(change.tagName.toLowerCase());  
	    if(oObj.tagName.toLowerCase() == "td"){     
	        var oTr = oObj.parentNode;     
	        for(var i=1; i<document.all.table1.rows.length; i++)   {     
	            document.all.table1.rows[i].style.backgroundColor   =   "";     
	            document.all.table1.rows[i].tag = false;     
	        }  
	        oTr.style.backgroundColor = "#000079";     
	        oTr.tag = true;     
	    }  
	}
      //鼠标点击另外一行时关闭已选行变色  
   function out() {  
       var oObj = event.srcElement;  
       if(oObj.tagName.toLowerCase() == "td"){  
           var oTr = oObj.parentNode;  
           if(!oTr.tag) oTr.style.backgroundColor = "";  
       }  
   }  
   //鼠标移动到选择行上时的行变色  
   function over(){     
       var oObj = event.srcElement;  
       if(oObj.tagName.toLowerCase() == "td"){     
       var oTr = oObj.parentNode;  
       if(!oTr.tag) oTr.style.backgroundColor = "#000079";  
       }  
   }  
   </SCRIPT>  

 <style type="text/css">
.grad {
  background: linear-gradient(to right, rgba(31,126,201,0.8), rgba(31,126,201,0.4),rgba(31,126,201,0.8)); /* 标准的语法 */
} 
</style>
 <style type="text/css">
.grad2 {
  background: linear-gradient(to right, rgba(31,126,201,1), rgba(31,126,201,0.5),rgba(31,126,201,1))
} 
</style>
   </head>

   <body class="grad">


   <table height="200">
   <tr  class="grad2"  width="300" >
   <td width="300" height="200"><img src="index/label.png" width="300" height="200" /></td>
   <td width="2000"  height="200" align="center"><font size="+4"  color="#FFFF00">智慧交通预测 </font><font size="+2" color="#FFFFFF">Smart Transportation 欢迎您的登陆：admin
    </font><font color="#FFFF00">|<a href="gly.jsp">浏览个人信息 </a>|<a  href="login1.jsp">退出登录</a></font></td>
   </tr>
   </table>
   <table>
   <tr height="600" width="300">
   <td  width="300" height="10" align="center" border="1">

  <table border="1" height="700" bgcolor="#0099FF" id="table1" width="300"> 
<tr align="center" border="1"  onMouseOver="over()"  onClick="change1()"  onMouseOut="out()">
<td align="center" border="1"> 
<a   color="#FFFF00" style="text-decoration:none"><font size="+1" color="#FFFFFF">ID_日期折线图（真实_预测对比）</font></a>
<br /><br /><br />
</td>

</tr>

<tr align="center" onMouseOver="over()"  onClick="change2()" onMouseOut="out()">
<td align="center"> 
<a   color="#FFFF00" style="text-decoration:none"><font size="+1" color="#FFFFFF">ID_日期折线图（全天变化）</font></a>
<br /><br /><br />
</td>

</tr>
<tr align="center" onMouseOver="over()"   onClick="change3()"  onMouseOut="out()">
<td align="center"> 
<a  color="#FFFF00"   style="text-decoration:none"><font size="+1" color="#FFFFFF">3D图</font></a>

<br /><br /><br />
</td>

</tr>
<tr align="center" onMouseOver="over()"   onClick="change4()"  onMouseOut="out()">
<td align="center"> 
<a   color="#FFFF00" style="text-decoration:none"><font size="+1" color="#FFFFFF">ID_日期折线图（不同ID对比）</font></a>
<br /><br /><br />
</td>

</tr>
<tr align="center" border="1"  onMouseOver="over()"  onClick="change6()"  onMouseOut="out()">
<td align="center" border="1"> 
<a   color="#FFFF00" style="text-decoration:none"><font size="+1" color="#FFFFFF">长度_通行时间柱状图</font></a>
<br /><br /><br />
</td>

</tr>

</tr>
<tr align="center" border="1"  onMouseOver="over()"  onClick="change7()"  onMouseOut="out()">
<td align="center" border="1"> 
<a   color="#FFFF00" style="text-decoration:none"><font size="+1" color="#FFFFFF">宽度_通行时间柱状图</font></a>
<br /><br /><br />
</td>

</tr>
<tr align="center" onMouseOver="over()"  onClick="change5()"  onMouseOut="out()">
<td align="center"> 
<a color="#FFFF00"  style="text-decoration:none"><font size="+1" color="#FFFFFF">管理员信息</font></a>
<br /><br />
</td>

</tr>


</table>

   </td>
<td height="680"  width="1200" align="center" >

	<p align="center">
    	<font size="+3" color="#000099">个       人    基     本      信     息</font> </p>
    	</br></br>
	<p align="center">
    	<font size="+2">&nbsp;&nbsp;用户名：&nbsp;&nbsp;</font> <font color="#0033FF" size="+3">admin</font>    </p>
	<p align="center">
    	<font size="+2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;账户余额：</font><input  name="mony" type="text" width="200" value="1800.0">
    </p>
    <p align="center">
   	<font size="+2">性别：&nbsp;&nbsp;</font> <font color="#09F1D1" size="+2">男</font><input type="radio" name="sex" width="20"checked="true">---<font color="#0C03E3" size="+2">女</font><input type="radio" name="性别">
    </p>
    <p align="center"> 
    <font size="+2">&nbsp;&nbsp;&nbsp;&nbsp;生日：&nbsp;&nbsp;</font> <input type="date" name="birth" height="30" width="200" value="javascript:return (new Date()).toString();">
    </p>
    <p align="center">
    	<font><font size="+2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email：&nbsp;&nbsp;</font> </font></font><input type="text" name="email" height="30" width="200" value="2229153423@qq.com">
    </p>
    <p align="center">
    	<font><font size="+2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;安全问题：&nbsp;&nbsp;</font> </font><input name="qu" type="text" width="200" height="30" value="admin">
    </p>
	    <p align="center">
    	<font><font size="+2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名：&nbsp;&nbsp;</font> </font><input type="text" name="un" width="200" height="30" value="yanjiangdi">
    </p>
	    <p align="center">
    	<font><font size="+2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：&nbsp;&nbsp;</font> </font><input name="tel" type="text" width="200" height="30" value="15702494595">
    </p>
	    <p align="center">
    	<font><font size="+2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;答案：&nbsp;&nbsp;</font></font><input  name="an" type="text" width="200" height="30" value="yes">
    </p>
	</td>
</table>
<table>
<tr  height="30"><td width="2000" align="center" bgcolor="#333333"><font color="#FFFFFF" size="-1" >COPYRIGHT &copy; 2017-2018&nbsp;&nbsp;&nbsp;&nbsp;智慧交通预测 .燕江弟、王志强、于林涵、李嘉禾  版权所有&nbsp;&nbsp;&nbsp;&nbsp;禁止拷贝、复制，违者必究。</font>
</td>
</tr>
</table>
</body>
</html>
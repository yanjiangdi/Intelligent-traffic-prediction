<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>3Dͼ</title>
   <SCRIPT language="JavaScript">     
   //�����ѡ����ʱ���ɫ  
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
      //���������һ��ʱ�ر���ѡ�б�ɫ  
   function out() {  
       var oObj = event.srcElement;  
       if(oObj.tagName.toLowerCase() == "td"){  
           var oTr = oObj.parentNode;  
           if(!oTr.tag) oTr.style.backgroundColor = "";  
       }  
   }  
   //����ƶ���ѡ������ʱ���б�ɫ  
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
  background: linear-gradient(to right, rgba(31,126,201,0.8), rgba(31,126,201,0.4),rgba(31,126,201,0.8)); /* ��׼���﷨ */
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
   <tr class="grad2" width="300" >
   <td width="300" height="200"><img src="index/label.png" width="300" height="200" /></td>
   <td width="2000"  height="200" align="center"><font size="+4"  color="#FFFF00">�ǻ۽�ͨԤ�� </font><font size="+2" color="#FFFFFF">Smart Transportation ��ӭ���ĵ�½��admin
    </font><font color="#FFFF00">|<a href="gly.jsp">���������Ϣ </a>|<a  href="login1.jsp">�˳���¼</a></font></td>
   </tr>
   </table>
   <table>
   <tr height="600" width="300">
   <td  width="300" height="10" align="center" border="1">

<table border="1" height="700" bgcolor="#0099FF" id="table1" width="300"> 
<tr align="center" border="1"  onMouseOver="over()"  onClick="change1()"  onMouseOut="out()">
<td align="center" border="1"> 
<a   color="#FFFF00" style="text-decoration:none"><font size="+1" color="#FFFFFF">ID_��������ͼ����ʵ_Ԥ��Աȣ�</font></a>
<br /><br /><br />
</td>

</tr>

<tr align="center" onMouseOver="over()"  onClick="change2()" onMouseOut="out()">
<td align="center"> 
<a   color="#FFFF00" style="text-decoration:none"><font size="+1" color="#FFFFFF">ID_��������ͼ��ȫ��仯��</font></a>
<br /><br /><br />
</td>

</tr>
<tr align="center" onMouseOver="over()"   onClick="change3()"  onMouseOut="out()">
<td align="center"> 
<a  color="#FFFF00"   style="text-decoration:none"><font size="+1" color="#FFFFFF">3Dͼ</font></a>

<br /><br /><br />
</td>

</tr>
<tr align="center" onMouseOver="over()"   onClick="change4()"  onMouseOut="out()">
<td align="center"> 
<a   color="#FFFF00" style="text-decoration:none"><font size="+1" color="#FFFFFF">ID_��������ͼ����ͬID�Աȣ�</font></a>
<br /><br /><br />
</td>

</tr>
<tr align="center" border="1"  onMouseOver="over()"  onClick="change6()"  onMouseOut="out()">
<td align="center" border="1"> 
<a   color="#FFFF00" style="text-decoration:none"><font size="+1" color="#FFFFFF">����_ͨ��ʱ����״ͼ</font></a>
<br /><br /><br />
</td>

</tr>

</tr>
<tr align="center" border="1"  onMouseOver="over()"  onClick="change7()"  onMouseOut="out()">
<td align="center" border="1"> 
<a   color="#FFFF00" style="text-decoration:none"><font size="+1" color="#FFFFFF">���_ͨ��ʱ����״ͼ</font></a>
<br /><br /><br />
</td>

</tr>
<tr align="center" onMouseOver="over()"  onClick="change5()"  onMouseOut="out()">
<td align="center"> 
<a color="#FFFF00"  style="text-decoration:none"><font size="+1" color="#FFFFFF">����Ա��Ϣ</font></a>
<br /><br />
</td>

</tr>


</table>


   </td>
<td  width="1500" align="center">
<table height="100">
			<form action="3D.jsp">
				<p align="center"><font color="#D90D10"><font size="+2">ID��</font></font>


						<select name="id" size="1">
						<option value="3377906288228510514">3377906288228510514</option> 
						<option value="4377906289041600514">4377906289041600514</option> 
						</select>
					<font color="#D90D10"><font size="+2">����1��</font></font>
						<select name="date1" size="1">
						<option value="2016-03-01">2016-03-01</option>
						<option value="2016-04-24">2016-04-30</option>
						</select>
				  <font color="#D90D10"><font size="+2">����2��</font></font>
						<select name="date2" size="1">
						<option value="2016-03-07">2016-03-07</option>
						<option value="2016-04-30">2016-04-30</option>
						</select>
						<input type="submit" value="��ѯ">
				
			</p>
			
			<br /><br /><br />
	</form>
  <tr align="center" width="1000" height="100">
	<td width="1000" height="100"><iframe src="index/3377906288228510514_2016-03-01_2016-03-07.html"" frameborder="0" width="1200" scrolling="False" height="550" leftmargin="0" topmargin="0"></iframe></td>
  </tr>
  </table>
 </td>
 </tr>
 </table>

<table>
<tr  height="30"><td width="2000" align="center" bgcolor="#333333"><font color="#FFFFFF" size="-1" >COPYRIGHT &copy; 2017-2018&nbsp;&nbsp;&nbsp;&nbsp;�ǻ۽�ͨԤ�� .�཭�ܡ���־ǿ�����ֺ�����κ�  ��Ȩ����&nbsp;&nbsp;&nbsp;&nbsp;��ֹ���������ƣ�Υ�߱ؾ���</font>
</td>
</tr>
</table>
</body>
</html>

</body>
</html>

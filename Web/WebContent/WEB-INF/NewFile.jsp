<%@ page language="java" contentType="text/html; charset=gb2312" 
pageEncoding="gb2312"import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<div align="center"><strong>分页显示数据库记录</strong></div>
<br><hr>
<table width="800" border="1" align="center">
<tr>
    <td>用户名</td>
    <td>性别</td>
    <td>电话</td>
    <td>E-Mail</td>
</tr>
<%
try
{
//驱动程序名
String driverName="com.mysql.jdbc.Driver";
//连接字符串

//加载驱动程序
Class.forName(driverName).newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bar","root","123456");
//DriverManager.getConnection(ConnStr)
//创建执行语句
String sql="select * from bar.users";
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet rs=stmt.executeQuery(sql);
int intPageSize;      //一页显示的记录数
int intRowCount;      //记录的总数
int intPageCount;     //总页数
int intPage;         //待显示的页码
String strPage;
int i;
//设置一页显示的记录数
intPageSize=2;
//取得待显示的页码
strPage=request.getParameter("page");
//判断strPage是否等于null,如果是，显示第一页数据
if(strPage==null)
{
intPage=1;
}else{
//将字符串转换为整型
intPage=java.lang.Integer.parseInt(strPage);
}
if(intPage<1)
{
intPage=1;
}
//获取记录总数
rs.last();
intRowCount=rs.getRow();
//计算机总页数
intPageCount=(intRowCount+intPageSize-1)/intPageSize;
//调整待显示的页码
if(intPage>intPageCount) intPage=intPageCount;
if(intPageCount>0)
{
//将记录指针定位到待显示页的第一条记录上
rs.absolute((intPage-1)*intPageSize+1);
}
//下面用于显示数据
i=0;
while(i<intPageSize && !rs.isAfterLast())
{
%>
<tr>
    <td><%=rs.getString("uname")%></td>
    <td><%=rs.getString("sex")%></td>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("pwd")%></td>
</tr>
<%
rs.next();
i++;
}
//关闭连接、释放资源
rs.close();
stmt.close();
conn.close();
%>

共<%=intRowCount%>个记录，分<%=intPageCount%>页显示，当前页是：第<%=intPage%>页
<%
for(int j=1;j<=intPageCount;j++)
{
out.print("&nbsp;&nbsp;<a href='NewFile.jsp?page="+j+"'>"+j+"</a>");
}
%>

<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</table>
</body>
</html>
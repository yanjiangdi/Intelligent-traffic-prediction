<%@ page language="java" contentType="text/html; charset=gb2312" 
pageEncoding="gb2312"import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<div align="center"><strong>��ҳ��ʾ���ݿ��¼</strong></div>
<br><hr>
<table width="800" border="1" align="center">
<tr>
    <td>�û���</td>
    <td>�Ա�</td>
    <td>�绰</td>
    <td>E-Mail</td>
</tr>
<%
try
{
//����������
String driverName="com.mysql.jdbc.Driver";
//�����ַ���

//������������
Class.forName(driverName).newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/bar","root","123456");
//DriverManager.getConnection(ConnStr)
//����ִ�����
String sql="select * from bar.users";
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet rs=stmt.executeQuery(sql);
int intPageSize;      //һҳ��ʾ�ļ�¼��
int intRowCount;      //��¼������
int intPageCount;     //��ҳ��
int intPage;         //����ʾ��ҳ��
String strPage;
int i;
//����һҳ��ʾ�ļ�¼��
intPageSize=2;
//ȡ�ô���ʾ��ҳ��
strPage=request.getParameter("page");
//�ж�strPage�Ƿ����null,����ǣ���ʾ��һҳ����
if(strPage==null)
{
intPage=1;
}else{
//���ַ���ת��Ϊ����
intPage=java.lang.Integer.parseInt(strPage);
}
if(intPage<1)
{
intPage=1;
}
//��ȡ��¼����
rs.last();
intRowCount=rs.getRow();
//�������ҳ��
intPageCount=(intRowCount+intPageSize-1)/intPageSize;
//��������ʾ��ҳ��
if(intPage>intPageCount) intPage=intPageCount;
if(intPageCount>0)
{
//����¼ָ�붨λ������ʾҳ�ĵ�һ����¼��
rs.absolute((intPage-1)*intPageSize+1);
}
//����������ʾ����
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
//�ر����ӡ��ͷ���Դ
rs.close();
stmt.close();
conn.close();
%>

��<%=intRowCount%>����¼����<%=intPageCount%>ҳ��ʾ����ǰҳ�ǣ���<%=intPage%>ҳ
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
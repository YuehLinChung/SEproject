<%@ page language="java" contentType="text/html;charset=big5"%>
<%@ page import="defult.UserInfoBean"%>
<%@ page import="defult.DBController"%>
<%@ page import="java.util.ArrayList"%>
<jsp:useBean id="userInfo" class="defult.UserInfoBean" scope="session" />
<%	DBController dbc = new DBController();
	ArrayList<UserInfoBean> temp = dbc.getData();
%>
<html>
<head>
<title>board</title>
<style>
input[type="button"] {
	border: 1px #7878FF solid;
	cursor: pointer;
	font-family: Microsoft JhengHei;
	font-weight: bold;
}

input[type="submit"] {
	border: 1px #7878FF solid;
	cursor: pointer;
	font-family: Microsoft JhengHei;
	font-weight: bold;
}

input[type="text"] {
	padding: 1px #7878FF solid;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}

input[type="password"] {
	padding: 1px #7878FF solid;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}

input[type="date"] {
	padding: 1px #7878FF solid;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}
input[type="email"] {
	padding: 1px #7878FF solid;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}
.demo1 {
	padding-top: 50px;
	text-align: center
}
</style>

</head>
<body bgcolor="#FFFAF2">
	<table style="width: 750px;">
	<tr>
						<td>
							<form method="post" action="main">
								<span style="float: left;"> <input type="button"
									value="��d" name="GetCardButton"> <input type="button"
									value="�ӤH���" name="Profile"> <input type="button"
									value="���p�]�w" name="Secrecy">
								</span>
							</form>
						</td>
						<td>
							<form method="post" action="main">
								<span style="float: right;"> <input type="button"
									value="����" name="HomePage"> <input type="button"
									value="���i��" name="Board"> <input type="button"
									value="�a�ڭ�" name="Family"><input type="hidden" name="action" value="logout">
									 <input type="submit" value="�n�X" name="logoutButton">
								</span>
							</form>
						</td>
					</tr>
				</table>
	<table boarder=2 style="width: 750px;">
		<b><font size="6" face="�L�n������">���i��</font></b>
				<tr>
					<td width="40%" valign="bottom">
							<form method="post" action="main">
								<span style="float: right;">
								<input type="button" value="�o���峹" name="post article">
								<input type="button" value="�o���s�i" name="post AD">
								</span>
							</form>
					</td>
					<td width="60%" align="left" >
						<textarea name="Content"  style="width:400px;height:100px;"
							placeholder="�o���ʺA"></textarea>
					</td>
				</tr>
				<tr>
					<td valign="bottom" colspan=2>
							<form method="post" action="main">
								<input type="button" value="�Ҧ��Z�ŬݪO" name="post article">
								<input type="button" value="�|��u�T" name="post AD">
								<input type="button" value="�N��Ʈw���ݪO�W�ٶ�i��" name="post AD">
							</form>
					</td>
				</tr>
		</table>
		<table border=1 style="width: 750px;">
				<tr>
					<td width="20%" align="left" >
						<b><font size="2" face="�L�n������">�@��</font></b>
					</td>
					<td width="60%" align="left">
						<b><font size="2" face="�L�n������">�K��</font></b>
					</td>
					<td width="20%" align="left">
						<b><font size="2" face="�L�n������">�峹�v��(EX:���D�B�s�i)</font></b>
						<br>
						<input type="button" value="heart" name="Heart">
						<input type="button" value="comment" name="Comment">
					</td>
				</tr>
				<tr>
					<td width="20%" align="left" >
						<b><font size="2" face="�L�n������">�@��</font></b>
					</td>
					<td width="60%" align="left">
						<b><font size="2" face="�L�n������">�K��</font></b>
					</td>
					<td width="20%" align="left">
						<b><font size="2" face="�L�n������">�峹�v��(EX:���D�B�s�i)</font></b>
						<br>
						<input type="button" value="heart" name="Heart">
						<input type="button" value="comment" name="Comment">
					</td>
				</tr>
				<tr>
					<td width="20%" align="left" >
						<b><font size="2" face="�L�n������">�@��</font></b>
					</td>
					<td width="60%" align="left">
						<b><font size="2" face="�L�n������">�K��</font></b>
					</td>
					<td width="20%" align="left">
						<b><font size="2" face="�L�n������">�峹�v��(EX:���D�B�s�i)</font></b>
						<br>
						<input type="button" value="heart" name="Heart">
						<input type="button" value="comment" name="Comment">
					</td>
				</tr>
		</table>
</body>
</html>
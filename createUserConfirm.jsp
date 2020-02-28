<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/button.css">
<link rel="stylesheet" href="./css/detail.css">
<link rel="stylesheet" href="./css/error.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/table1.css">
<link rel="stylesheet" href="./css/title.css">
<title>ユーザー情報確認</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="header"></div>

	<h1>ユーザー情報入力確認画面</h1>



	<table class="vertical-list-table">
		<tr>
			<th scope="row"><label>姓</label></th>
			<td><s:property value="familyName" /></td>
		</tr>
		<tr>
			<th scope="row"><label>名</label></th>
			<td><s:property value="firstName" /></td>
		</tr>
		<tr>
			<th scope="row"><label>姓ふりがな</label></th>
			<td><s:property value="familyNameKana" escape="false" /></td>
		</tr>
		<tr>
			<th scope="row"><label>名ふりがな</label></th>
			<td><s:property value="firstNameKana" escape="false" /></td>
		</tr>
		<tr>
			<th scope="row"><label>性別</label></th>
			<td><s:property value="sex" /></td>
		</tr>
		<tr>
			<th scope="row"><label>メールアドレス</label></th>
			<td><s:property value="email" escape="false" /></td>
		</tr>

		<tr>
			<th scope="row"><label>ユーザーID</label></th>
			<td><s:property value="userId" escape="false" /></td>
		</tr>

		<tr>
			<th scope="row"><label>パスワード</label></th>
			<td><s:property value="password" escape="false" /></td>
		</tr>
	</table>

	<div class="button-box">
		<s:form action="CreateUserCompleteAction">
			<tr>
				<td><s:submit value="登録" class="submit_btn" /></td>
			</tr>
		</s:form>
		<s:form action="CreateUserAction">
			<tr>
				<td><s:submit value="戻る" class="submit_btn" /></td>
				<s:hidden id="backFlg" name="backFlg" value="1" />
			</tr>
		</s:form>
	</div>

</body>
</html>
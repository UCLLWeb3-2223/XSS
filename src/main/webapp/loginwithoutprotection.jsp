<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/sample.css">
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Login Form without protection against XSS</title>
</head>
<body>
	<header role="banner">
		<img alt="Toscane" src="images/toscaneRibbon.jpg">
	</header>
	<main>
	<article>
		<script>
			document.cookie = "user=John";
		</script>
		<p>This form is not protected against XSS. </p>
		<p>Write following code in input field:<code style="background-color: #d9edf7; border-radius: 5px; ">">&lt;script&gt;alert("Hoi");&lt;/script&gt;</code>.</p>

		<form method="post" action="">
			<fieldset>
				<legend>Login</legend>
				<p>
					<label for="username">Username</label>
					<input type="text" id="username" name="username" value="${param.username}">
				</p>
			</fieldset>
			<p>
				<input type="submit" id="save" value="Log in">
			</p>
		</form>
	</article>
	</main>
</body>
</html>
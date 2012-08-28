# coding: utf-8
def jqapp_html
jqapp_html = <<EOF
<!DOCTYPE HTML>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>Sample Title</title>
	<link rel="stylesheet" href="css/jquery.mobile-1.1.1.min.css" />
	<!-- <link rel="stylesheet" href="http://dev.jtsage.com/cdn/datebox/latest/jquery.mobile.datebox.min.css" /> -->
	<link rel="stylesheet" href="css/custom.css" />
	<script src="js/jquery-1.7.1.min.js"></script>
	<script src="js/config.js"></script>
	<script src="js/jquery.mobile-1.1.1.min.js"></script>
	<script src="js/custom.js"></script>
</head>
<body>
	<div data-role="page" id="p-top">
		<div data-role="header">
			<h1>header</h1>
		</div>
		<div data-role="content">
			<p>contents</p>
		</div>
		<div data-role="footer">
			<h4>footer</h4>
		</div>
	</div>
</body>
</html>
EOF
end

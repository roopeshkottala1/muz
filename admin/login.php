
<html>
<head>
<title>..:: Login :Muzirisfarms ::..</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
body,td,th,input,select, textarea {
	font-family: Tahoma;
	font-size: 11px;
}
body {
	background-color: #FFFFFF;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:auto;
}
body, textarea {
	scrollbar-3dlight-color:#a1a1a1;
	scrollbar-arrow-color:#66BB00;
	scrollbar-base-color:#dddddd;
	scrollbar-darkshadow-color:#bfbfbf;
	scrollbar-face-color:#dddddd;
	scrollbar-highlight-color:#dddddd;
	scrollbar-shadow-color:#737373;
}
#menuTable { text-align: center; }
a { color:#545454; text-decoration:none; }
img  { border:none; }
.dot { margin-bottom: 1px; margin-right:7px }
#menuTable a { padding: 13px 18px 0px; width:100%; height:37px; vertical-align:middle }
a:hover { color:#000000; }
.logo { margin: 0px 20px; }
.foot { color:#999999; text-align:center; }
.tinygray { font-size:10px; color:#999999; }
#bodyCell { height:300px; text-align:center; vertical-align:middle; padding:5px 0px; }
.error { color:#CC0000; }
input, textarea { border: 1px solid #BBBBBB; }
* html input { padding:1px 5px; }
form, textarea { margin: 0px; }
.tright { text-align:right; }
.existing { border:1px solid #BBBBBB; background-color:#f3f3f3; }
table.leftPad td { padding: 0px 10px; }
table.tinyPad td { padding: 0px 3px; }
#theTabs td { padding: 0px; }
#theTabs td.leftPad { padding: 0px 10px; }
* html textarea { border-right: none; }
select.existing { padding: 0px; border:2px inset; }
* html .existing { padding:1px 5px; }
* html select.existing { border:1px solid #BBBBBB; }
-->
</style></head>
<body>
<table width="740" border="0" align="center" cellpadding="0" cellspacing="0" id="topTable">
	<tr>
		<td background="./images/top_01.jpg" height="92"><a href="./" class="logo"><strong>Muzirisfarms </strong></a></td>
	</tr>
	<tr>
		<td background="./images/top_02.jpg" height="37">&nbsp;</td>
	</tr>
	<tr>
		<td background="./images/top_03.jpg" height="7"></td>
	</tr>
	<tr>
		<td id="bodyCell">
		&nbsp;<span class="error"><?= $err; ?></span>&nbsp;<br /><br />
		<table border="0" cellspacing="0" cellpadding="0" align="center">
          <tr>
            <td width="228" height="123" background="images/box.jpg"><form action="./index.php?login" method="post" enctype="multipart/form-data">
			<table border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="70" height="25">Username:</td>
                <td><input name="username" type="text" id="username" value="<?= $_POST['username']; ?>"></td>
              </tr>
              <tr>
                <td width="70" height="25">Password:</td>
                <td><input name="password" type="password" id="password"></td>
              </tr>
              <tr>
                <td height="25">&nbsp;</td>
                <td align="right"><input type="submit" name="Submit" value="Submit"></td>
              </tr>
            </table></form></td>
          </tr>
        </table><br /><br />&nbsp;</td>
	</tr>
	<tr>
		<td height="51" background="./images/foot.jpg" class="foot">Copyright &copy;2017,Muzirisfarms.</td>
	</tr>
</table>

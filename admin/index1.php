
<html>
<head>
<title>..:: Admin :ATHIRA Driving School ::..</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script src="scripts/yahoo-min.js" language="javascript"></script><script src="scripts/dom-min.js" language="javascript"></script>
<script src="scripts/event-min.js" language="javascript"></script><script src="scripts/connection-min.js" language="javascript"></script>
<script src="scripts/container.js" language="javascript"></script>
<script type="text/javascript" src="scripts/calendar.js"></script>
<script type="text/javascript" src="scripts/calendar-setup.js"></script>
<script type="text/javascript" src="scripts/lang/calendar-en.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="skins/aqua/theme.css" title="Green" />
<link type="text/css" rel="stylesheet" href="scripts/assets/container.css">
<style type="text/css">
<!--
body,td,th,input,select, textarea {
	font-family: Tahoma;
	font-size: 12px;
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
#menuTable a { padding: 13px 13px 0px; width:100%; height:37px; vertical-align:middle }
a:hover { color:#000000;text-decoration:underline; }
.logo { margin: 0px 20px; }
.foot { color:#999999; text-align:center; }
.tinygray { font-size:10px; color:#999999; }
#bodyCell { height:200px; text-align:center; vertical-align:middle; padding:5px 0px; }
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
.w55 { width:55px; }
* html .w55 { width:auto; }
* html .existing { padding:1px 5px; }
* html select.existing { border:1px solid #BBBBBB; }
tr.innerContent td { vertical-align:top; padding-top:10px; padding-bottom:2px; }
table.picTbl td { padding: 0px; }
.HeadingBG
{
 background-image: url(images/HeadingBGGrad.jpg);
 background-repeat: repeat-x;
 height: 34px;
 padding-left: 21px;
 font-family: Tahoma, Arial;
 font-size: 11px;
 font-weight: bold;
 color: #5b9fc7;
 margin-top: 12px;
 border: 1px solid #d5d5d5;
}


.HeadingBG_text
{
 
 padding-left: 21px;
 font-family: Tahoma, Arial;
 font-size: 11px;
 font-weight: bold;
 color: #5b9fc7;
 margin-top: 12px;
 
}
-->
</style></head>
<body>

<table width="1250" border="0" align="center" cellpadding="0" cellspacing="0" id="topTable">
	<tr>
		<td background="./images/top_01.jpg" height="92"><table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
    <td><strong>Athira Driving School</strong></td>
    <td width="200" align="center" style="line-height:16px; color:#888888">You are logged in as:<br /><strong><?= (($_acc == '1')?'<a href=./?admin='.$_uid.'&edit>'.$_name.'</a>':$_name); ?></strong> <span class="tinygray">(<a href="./?logout">Logout</a>)</span></td>
  </tr>
</table>
</td>
	</tr>
	<tr>
		<td background="./images/top_02.jpg" height="37" style="padding-left:5px;"><table border="0" cellpadding="0" cellspacing="0" id="menuTable">
		<tr><?

		 $sects = array('Regs'=>array(1,2),'Payments'=>array(1,2),'Admins'=>array(1));
		foreach($sects as $key=>$val) {
			if (!in_array($_acc, $val)) continue;
			
            	if($key=='Data'){
					echo '<td><a href="./?datas">'.$key.'</a></td><td><img src="./images/delim.jpg"></td>';
				}elseif($key=='Admins'){
					echo '<td><a href="./?users">'.$key.'</a></td><td><img src="./images/delim.jpg"></td>';
				}	
				else{
					echo '<td><a href="./?'.strtolower($key).'">'.$key.'</a></td><td><img src="./images/delim.jpg"></td>';
				}
		}
			
		?>
	
		  </tr>
        </table></td>
	</tr>
	<tr>
		<td background="./images/top_03.jpg" height="7"></td>
	</tr>
	<tr>
		<td id="bodyCell"><?	
		if ( $q == '' )
			$q ='entries'; 
		include("./includes/$q.php");	?></td>
	</tr>
	<tr>
	  <td height="51" background="./images/foot.jpg" class="foot">Copyright &copy;2011,Athira.</td>
  </tr>
</table>
</body>
</html>
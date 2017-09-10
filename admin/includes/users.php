<?
$parr = array("status!='100'");
if ( $s == 'search' ) {
	$temp = trim($_POST['name']?$_POST['name']:$_GET['name']);
	if ( $temp != '' ) { $sarr['name'] = "name=".$temp; $parr['name'] = "name LIKE '%".$temp."%'"; $tarr['name'] = '<a href="./?'.$q.'=search&'.$sarr['name'].'">'.$temp.'</a> in name'; $farr['filenum'] = $temp; }
	$temp = trim($_POST['username']?$_POST['username']:$_GET['username']);
	if ( $temp != '' ) { $sarr['username'] = "username=".$temp; $parr['username'] = "username LIKE '%".$temp."%'"; $tarr['username'] = "<a href='./?$q=search&".$sarr['username']."'>".$temp."</a> in username"; $farr['username'] = $temp; }
	$temp = trim($_POST['level']?$_POST['level']:$_GET['level']);
	if ( $temp != '' ) { $sarr['level'] = "level=".$temp; $parr['level'] ="level='$temp'"; $tarr['level'] = "<a href='./?$q=search&".$sarr['level']."'>".$levels [$temp]."</a> in level"; $farr['level'] = $temp; }
}
?>

<table width="900" height="360" border="0" cellpadding="0" cellspacing="0" align="center">
  <tr>
    <td width="210" height="100%" valign="top"><table width="210px" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="34" background="./images/search.png">&nbsp;</td>
        </tr>
        <tr>
          <td height="5"></td>
        </tr>
        <tr>
          <td background="./images/bbg.jpg" height="2"><img src="./images/bbg.jpg"></td>
        </tr>
        <tr>
          <td valign="top" style="border:1px solid #d5d5d5; padding:5px;" height="100%"><form action="./index.php?users=search" enctype="multipart/form-data" method="post">
              <table border="0" align="center" cellpadding="0" cellspacing="2">
                <tr>
                  <td width="70" height="25">Name:</td>
                  <td><input name="name" type="text" id="name" value="<?= $_POST['name']?$_POST['name']:$_GET['name']; ?>" /></td>
                </tr>
                <tr>
                  <td width="70" height="25">Username:</td>
                  <td><input name="username" type="text" id="username" value="<?= $_POST['username']?$_POST['username']:$_GET['username']; ?>" /></td>
                </tr>
                <? if ($_acc == '1') { ?>
                <tr>
                  <td width="70" height="25">Access:</td>
                  <? $level = $_POST['level']?$_POST['level']:$_GET['level']; ?>
                  <td><select name="level" id="level" style="width:121px">
                      <option value="">Any</option>
                      <? foreach($levels as $key=>$val) { ?>
                      <option value="<?= $key; ?>"<?= ($level == $key)?' selected':''; ?>>
                      <?= $val; ?>
                      </option>
                      <? } ?>
                    </select></td>
                </tr>
                <? } ?>
                <tr>
                  <td width="70" height="25">&nbsp;</td>
                  <td align="right" style="padding-right:2px"><input type="submit" name="Submit" value="Submit" /></td>
                </tr>
              </table>
            </form></td>
        </tr>       
        <tr>
          <td background="./images/bgrad.jpg" height="5"><img src="./images/bgrad.jpg"></td>
        </tr>
        <tr>
          <td height="5"></td>
        </tr>
        <tr>
          <td height="34" class="HeadingBG">NEW USER</td>
        </tr>
        <tr>
          <td height="5"></td>
        </tr>
        <tr>
          <td background="./images/bbg.jpg" height="2"><img src="./images/bbg.jpg"></td>
        </tr>
        <tr>
          <td height="44" align="center" style="border:1px solid #d5d5d5; padding:5px;"><a href="#" onclick="userAdd(); return false;">Click here to add a new user.</a> </td>
        </tr>
        <tr>
          <td background="./images/bgrad.jpg" height="5"><img src="./images/bgrad.jpg"></td>
        </tr>
      </table></td>
    <td width="10">&nbsp;</td>
    <td  height="100%" valign="top"><table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr style="padding:0;">
		<td height="34" align="left" class="HeadingBG" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
		   <tr>
		     <td class="HeadingBG_text">USERS</td>
			  <td align="right"><?
$temp = trim($_GET['sort']);
$sortBy = 'name';
$sortDir = 'asc';
if ( $temp != '' ) {
	$sortBy = $temp;
	$temp = trim($_GET['dir']);
	$sortDir = ($temp == 'desc')?"desc":"asc";
}
$sarr['sort'] = "sort=".$sortBy;
$sarr['dir'] = "dir=".$sortDir;
 //print("SELECT id, name, username, level, status FROM adminusers WHERE  ".implode(' AND ', $parr)." ORDER BY $sortBy $sortDir");
$result = query("SELECT id, name, username, level, status FROM adminusers WHERE  ".implode(' AND ', $parr)." ORDER BY $sortBy $sortDir");
$inpage = 10;
$all = $result->num_rows;
$pnum = ceil($all/$inpage);
$pst = array();
$page = $_GET['page'] ? $_GET['page'] : $_POST['page'];
if ( $page == '' ) { $page = 1; }
if ( $page > $pnum ) { $page = $pnum; }
$a = max($page - 2,1);
$b = min($page + 2,$pnum);
$a = max(min($a,$b-4),1);
$b = min(max($b,$a+4),$pnum);
$srch = implode('&',$sarr);
unset($sarr['sort'],$sarr['dir']);
$srci = implode('&',$sarr);
if ( $page > 1) { $pst[] = "<a href='./?$q".(($s != '') ? '='.$s : '').(($srch!='')?'&'.$srch:'')."&page=".($page-1)."' style='color: #A29CC9;'>Prev</a>"; }
if ( $a > 2 )  { $pst[] = '&hellip;'; } elseif ( $a == 2 ) { $a = 1; }
for ( $i=$a; $i<=$b; $i++) {
	if ( $i != $page ) {
		$pst[] = "<a href='./?$q".(($s != '') ? '='.$s : '').(($srch!='')?'&'.$srch:'')."&page=$i'>$i</a>";
	} else {
		$pst[] = "<span style='text-decoration:underline; color:#b5b5b5'>$i</span>";
	}
}
if ( $pnum > $b + 1 ) { $pst[] = '&hellip;'; } elseif ( $pnum == $b + 1 ) { $pst[] = "<a href='./?$q".(($s != '') ? '='.$s : '').(($srch!='')?'&'.$srch:'')."&page=$pnum'>$pnum</a>"; }
if ( $page < $pnum ) { $pst[] = "<a href='./?$q".(($s != '') ? '='.$s : '').(($srch!='')?'&'.$srch:'').'&page='.($page+1)."'>Next</a>"; }
if ($pnum > 1)
	echo '<span style="color:#888888; margin-right:20px;">Pages: '.join($pst,"&nbsp;").'</span>';
//$asg = split(',',$_COOKIE['assignments']);
?></td></tr></table>
          </td>
        </tr>
        <tr>
          <td height="5"></td>
        </tr>
        <tr>
          <td background="./images/bbg.jpg" height="2"><img src="./images/bbg.jpg"></td>
        </tr>
        <tr>
          <td height="100%" valign="top" style="border:1px solid #d5d5d5; padding:5px;"><table width="100%" border="0" cellspacing="2" cellpadding="0" class="leftPad">
				<? if ($s == 'search' && $tarr !='') { ?>
                <tr><td colspan="4" style="padding-bottom:20px;"><a style="float:right;margin-left:100px" href="./?<?= $q; ?>">Clear Results</a>Search Results having:&nbsp;<span class="results"><? $temp = array_pop($tarr); echo (count($tarr)?join(', ', $tarr).' and ':'').$temp; ?>.</span></td></tr>
                <? } ?>	 
              <tr style="background:url(./images/dots.jpg); background-repeat:repeat-x; background-position:bottom left">
                <td height="25"><?= makeHeader('Name', 'name'); ?>&nbsp;|&nbsp;<?= makeHeader('UserName', 'username'); ?></td>
                <td width="70">&nbsp;&nbsp;<?= makeHeader('Access', 'level'); ?></td>
                <td width="40" align="center"><?= makeHeader('Status', 'status'); ?></td>
                <td width="45" align="center" style="color:#888888">Action</td>
              </tr>
              <?
			if($result->num_rows >0 ) {
			$i = $inpage * ($page - 1);
			$result->data_seek($i);
			$cnt = 0;
			while(($row = $result->fetch_array(MYSQLI_NUM)) && ($cnt++ < min($inpage,$all-$i))) {
				$bg = ($bg=='')?' bgcolor="#F3F3F3"':'';
				$obg = ($row[4] == 2)?(($bg=='')?' bgcolor="#FFF0F0"':' bgcolor="#F4EAEA"'):''; ?>                
                <tr<?= $obg?$obg:$bg; ?>>
                <td  style="padding-top:6px; padding-bottom:5px;"><?= $row[1]; ?><br />
				<span class="tinygray"><?= $row[2]; ?></span></td>
                <td width="70" valign="top"  style="padding-top:6px; padding-bottom:5px;" ><span class="tinygray"><?= $slevels[$row[3]]; ?></span></td>
                <td width="40" align="center"  valign="top" style="padding-top:6px;color:b5b5b5">Active</td>
                <td width="45" align="center" valign="top" style="padding-top:6px;color:b5b5b5">
                  <a onclick="userEdit(<?= $row[0]; ?>, '<?= addslashes($row[1]); ?>'); return false;" href="#">Edit</a>&nbsp;<? if ((($row[0] != $_uid) && ( $_acc ==1)) || (($row[0] != $_uid) && ($_acc < $row[3])) ){ ?>|&nbsp;<a href="./?users=del&del=<?= $row[0]; ?>" onClick="return confirm('Are you sure you want to delete \'<?= preg_replace("'","\'", $row[1]); ?>\' from the users list?')">Del</a>
                  <? } ?></td>
              </tr>
              <? }}else {?>
            <tr>
                <td colspan="4" class="tinygray" align="center">

                No Users Found.</td>
            </tr>
        <? }?>
          </table></td>
        </tr>
        <tr>
          <td background="./images/bgrad.jpg" height="5"><img src="./images/bgrad.jpg"></td>
        </tr>
      </table></td>
  </tr>
</table>
<div id="userDiv" style="display:<?='none'?>">
  <div class="hd" align="left" height="30px" style="vertical-align:text-top"><img src="../images/bull.png" style="margin:1px 5px"></div>
  <div class="bd" style="height:300px">
    <form action="#" action="" onsubmit="return false;" enctype="multipart/form-data" method="post" name="userForm">
        <table width="100%" border="0" cellspacing="2" cellpadding="0" class="tinyPad">
            <tr>
                <td width="70" height="25" bgcolor="#F3F3F3" style="padding-left:5px;padding-top:6px">Name:</td>
                <td bgcolor="#F3F3F3"><input name="name" type="text" id="name" value="" /></td>
            </tr>
            <tr>
                <td width="70" height="25" style="padding-left:5px;padding-top:6px">Username:</td>
                <td><input name="username" type="text" id="username" value="" /></td>
            </tr>
            <tr>
                <td width="70" height="25" bgcolor="#F3F3F3" style="padding-left:5px;padding-top:6px">eMail:</td>
                <td bgcolor="#F3F3F3"><input name="email" type="text" id="email" value="" /></td>
            </tr>         
            <tr>
                <td width="70" height="25" bgcolor="#F3F3F3" style="padding-left:5px;padding-top:6px">Level:</td>
                <td bgcolor="#F3F3F3">
				<? if ($_acc == 1) { ?>
                    <select name="level" id="level" style="width:121px">
                    <option value="">Select Level</option>
                        <? for($l=2;$l<=count($levels);$l++) { ?>
                            <option value="<?= $l; ?>"><?= $levels[$l]; ?></option>
                        <? }?>
                    </select>
                <? } else if ($_acc == 2 ) {?>
                    <select name="level" id="level" style="width:121px">
                    <? for($i=2;$i<=count($levels);$i++) { ?>
                        <option value="<?= $keys[$i-1]; ?>"><?= $levels[$i]; ?></option>
                    <? } ?>
                    </select>
                    <input name="level" type="text" id="level" value="User" class="existing" readonly="readonly" />
                <? } else if ($_acc == 3 ) {?>
                    <select name="level" id="level" style="width:121px">
                    <? for($i=3;$i<=count($levels);$i++) { ?>
                        <option value="<?= $keys[$i-1]; ?>"><?= $levels[$i]; ?></option>
                    <? } ?>
                    </select>
                    <input name="level" type="text" id="level" value="User" class="existing" readonly="readonly" />
					<? }?>
				</td>
            </tr>
            <tr>
                <td height="5" colspan="2" background="./images/dots.jpg" style="background-position:center; background-repeat:repeat-x;">&nbsp;</td>
            </tr>
            <tr>
                <td width="70" height="25" bgcolor="#F3F3F3">Password:</td>
                <td bgcolor="#F3F3F3"><input name="pass" type="password" id="pass" value="" /></td>
            </tr>
            <tr>
                <td width="70" height="25">Confirm:</td>
                <td><input name="cpass" type="password" id="cpass" value="" /> <input name="id" type="hidden" id="id" value="" /></td>
            </tr>
            <tr>                  
                <td height="25" colspan="2" align="center"><input name="submit" type="submit" id="submit" value="Submit" onclick="userSubmit(); return false;" style="padding:0px; padding-left:2px; width:65px" /></td>
            </tr>
        </table>
    </form>
  </div>
</div>
<div id="waitDiv" style="display:none">
  <div class="hd" align="left">Communicating...</div>
  <div class="bd" align="center">Please wait, communicating with server.</div>
</div>
<div id="dummDiv" style="display:none">
  <div class="hd" align="left">Dummy</div>
  <div class="bd" align="center">Dummy</div>
</div>
<div id="passDiv" style="display:none">
  <div class="hd" align="left">Change Password</div>
  <div class="bd">
    <form action="#" onsubmit="return false;" enctype="multipart/form-data" method="post" name="passForm">
      <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="tinyPad">
              <tr>
                <td width="70" height="25" bgcolor="#F3F3F3">Old Pass:</td>
                <td bgcolor="#F3F3F3"><input name="opass" type="password" id="opass" value="" /></td>
              </tr>
              <tr>
                <td height="25" colspan="2" background="./images/dots.jpg" style="background-position:center; background-repeat:repeat-x;">&nbsp;</td>
              </tr>
              <tr>
                <td width="70" height="25" bgcolor="#F3F3F3">New Pass:</td>
                <td bgcolor="#F3F3F3"><input name="pass" type="password" id="pass" value="" /></td>
              </tr>
              <tr>
                <td width="70" height="25">Confirm:</td>
                <td><input name="cpass" type="password" id="cpass" value="" /></td>
              </tr>
              <tr>
                <td width="70" height="25"></td>
                <td height="25"><input name="submit" type="submit" id="submit" value="Submit" onclick="passSubmit(); return false;" style="padding:0px; padding-left:2px; width:65px" /></td>
              </tr>
            </table></td>
        </tr>
        <input name="id" type="hidden" id="id" value="" />
      </table>
    </form>
  </div>
</div>
<script>
YAHOO.namespace("users");

function init() {
	YAHOO.util.Dom.get('dummDiv').style.display = '';
	YAHOO.users.dumm = new YAHOO.widget.Dialog("dummDiv", { width : "210px", height : "70px", 
															  fixedcenter : true, 
															  visible : false,  
															  constraintoviewport : true,
															  draggable : false,
															  modal : true,
															  close : false
															 } );
	YAHOO.users.dumm.render();YAHOO.users.dumm.hide();
	YAHOO.util.Dom.get('waitDiv').style.display = '';
	YAHOO.users.wait = new YAHOO.widget.Dialog("waitDiv", { width : "210px", height : "70px", 
															  fixedcenter : true, 
															  visible : false,  
															  constraintoviewport : true,
															  draggable : false,
															  modal : true,
															  close : false
															 } );
	YAHOO.users.wait.render();
	YAHOO.util.Dom.get('userDiv').style.display = '';
	YAHOO.users.reg = new YAHOO.widget.Dialog("userDiv", { width : "250px", height : "300px", 
															  fixedcenter : true, 
															  visible : false,  
															  constraintoviewport : true,
															  modal : true,
															  zIndex : 99999
															 } );
	YAHOO.users.reg.render();
	YAHOO.util.Dom.get('passDiv').style.display = '';
	YAHOO.users.pass = new YAHOO.widget.Dialog("passDiv", { width : "210px", height : "155px", 
															  fixedcenter : true, 
															  visible : false,  
															  constraintoviewport : true,
															  draggable : false,
															  modal : true,
															  zIndex : 9999
															 } );
	YAHOO.users.pass.render();
	YAHOO.users.wait.hide();YAHOO.users.reg.hide();YAHOO.users.pass.hide();
}
YAHOO.util.Event.addListener(window, "load", init);
function userAdd() { 
	YAHOO.users.reg.setHeader('New User');
	form = document.userForm;
	for (i in form.elements)
		if (form.elements[i] && form.elements[i].tagName && form.elements[i].tagName == 'INPUT') {
			form.elements[i].style.borderColor = '';
			form.elements[i].style.color = '';
		}
	form.reset();
	YAHOO.users.reg.show();
}
function userSubmit() {
	YAHOO.users.wait.show();
	YAHOO.users.reg.hide();
	YAHOO.util.Connect.setForm(document.userForm); 
	var request = YAHOO.util.Connect.asyncRequest('POST', "./index.php?user&nohtml="+Math.random(), userHandle);
}
function value(root, node) {
	return root.getElementsByTagName(node)[0].hasChildNodes?root.getElementsByTagName(node)[0].firstChild.nodeValue:'';
}
var userSuccess = function(o){
	if(o.responseText !== undefined){
		YAHOO.users.wait.hide();
		var root = o.responseXML.documentElement;
		if (root.nodeName == 'error') {
			form = document.userForm;
			YAHOO.users.reg.show();
			for (i in form.elements)
				if (form.elements[i] && form.elements[i].tagName && form.elements[i].tagName == 'INPUT' && (form.elements[i].type == 'text' || form.elements[i].type == 'password')) {
					color = (root.getElementsByTagName(form.elements[i].id).length == 0)?'':'red';
					form.elements[i].style.borderColor = color;
					form.elements[i].style.color = color;
				}
			var err = new Array();
			//for (i in root.childNodes) {
			for (i = 0; i < root.childNodes.length; i++) {
				if (root.childNodes[i].nodeName != '#text' && root.childNodes[i].hasChildNodes)
					err.push(root.childNodes[i].firstChild.nodeValue);
			}
			alert("There were errors in the details you submitted:\n\n"+err.join("\n"));
		} else {
			alert(root.firstChild.nodeValue);
			document.location.href = document.location.href;
		}
	}
}
var genFailure = function(o){
	if(o.responseText !== undefined){
		alert("Error interacting with server.\n\nHTTP status: " + o.status + "\nStatus code message: " + o.statusText);
	} else
		alert("Error interacting with server.");
}
var userHandle =
{
  success:userSuccess,
  failure:genFailure
};
function userEdit(x) {
	YAHOO.users.wait.show();
	var request = YAHOO.util.Connect.asyncRequest('GET', "./index.php?user="+x+"&nohtml="+Math.random(), editHandle);
}
var editSuccess = function(o){
	if(o.responseText !== undefined){
		YAHOO.users.wait.hide();
		var root = o.responseXML.documentElement;
		form = document.userForm;
		if (root.nodeName == 'error') {
			alert(root.firstChild.nodeValue);
			document.location.href = document.location.href;
		} else {
			for (i in form.elements)
				if (form.elements[i] && form.elements[i].tagName && form.elements[i].tagName == 'INPUT' && (form.elements[i].type == 'text' || form.elements[i].type == 'password')) {
					color = '';
					form.elements[i].style.borderColor = color;
					form.elements[i].style.color = color;
				}
			//for (i in root.childNodes) {
			for (i = 0; i < root.childNodes.length; i++) {
				if (root.childNodes[i].nodeName != '#text' && root.childNodes[i].firstChild) {
					eval("document.userForm."+root.childNodes[i].nodeName).value = root.childNodes[i].firstChild.nodeValue;
					//if (root.childNodes[i].nodeName == 'id')
						
				}
			}
			if (form.level.tagName == 'INPUT')
				form.level.value = 'User';
			YAHOO.users.reg.setHeader('Edit User');
			YAHOO.users.reg.show();
		}
	}
}
var editHandle =
{
  success:editSuccess,
  failure:genFailure
}
function passAct() { 
	form = document.passForm;
	for (i in form.elements)
		if (form.elements[i] && form.elements[i].tagName && form.elements[i].tagName == 'INPUT') {
			form.elements[i].style.borderColor = '';
			form.elements[i].style.color = '';
		}
	form.reset();
	YAHOO.users.pass.show();
};
function passSubmit() {
	YAHOO.users.wait.show();
	YAHOO.users.pass.hide();
	YAHOO.util.Connect.setForm(document.passForm); 
	var request = YAHOO.util.Connect.asyncRequest('POST', "./index.php?password&nohtml="+Math.random(), passHandle);
}
var passSuccess = function(o){
	if(o.responseText !== undefined){
		YAHOO.users.wait.hide();
		var root = o.responseXML.documentElement;
		if (root.nodeName == 'error') {
			form = document.passForm;
			YAHOO.users.pass.show();
			for (i in form.elements)
				if (form.elements[i] && form.elements[i].tagName && form.elements[i].tagName == 'INPUT' && (form.elements[i].type == 'text' || form.elements[i].type == 'password')) {
					color = (root.getElementsByTagName(form.elements[i].id).length == 0)?'':'red';
					form.elements[i].style.borderColor = color;
					form.elements[i].style.color = color;
				}
			var err = new Array();
			//for (i in root.childNodes) {
			for (i = 0; i < root.childNodes.length; i++) {
				if (root.childNodes[i].nodeName != '#text' && root.childNodes[i].hasChildNodes)
					err.push(root.childNodes[i].firstChild.nodeValue);
			}
			alert("There were errors in the details you submitted:\n\n"+err.join("\n"));
		} else {
			alert(root.firstChild.nodeValue);
			document.location.href = "./?logout";
		}
	}
}
var passHandle =
{
  success:passSuccess,
  failure:genFailure
}
</script>

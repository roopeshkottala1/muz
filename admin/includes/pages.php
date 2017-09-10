<?
$parr = array("1=1");
if ( $s == 'search' ) {
	$temp = trim($_POST['title']?$_POST['title']:$_GET['title']);
	if ( $temp != '' ) { $sarr['title'] = "title=".$temp; $parr['title'] = "title LIKE '%".$temp."%'"; $tarr['title'] = '<a href="./?'.$q.'=search&'.$sarr['title'].'">'.$temp.'</a> in title'; $farr['title'] = $temp; }

    $temp = trim($_POST['id']?$_POST['id']:$_GET['id']);
    if ( $temp != '' ) { $sarr['id'] = "id=".$temp; $parr['id'] = "id LIKE '%".$temp."%'"; $tarr['id'] = '<a href="./?'.$q.'=search&'.$sarr['id'].'">'.$temp.'</a> in id'; $farr['id'] = $id; }


}
?>

<table width="1200" height="360" border="0" cellpadding="0" cellspacing="0" align="center">
  <tr>
    <td width="210" height="100%" valign="top"><table width="210px" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="34" class="HeadingBG">SEARCH</td>
        </tr>
        <tr>
          <td height="5"></td>
        </tr>
        <tr>
          <td background="./images/bbg.jpg" height="2"><img src="./images/bbg.jpg"></td>
        </tr>
        <tr>
          <td valign="top" style="border:1px solid #d5d5d5; padding:5px;" height="100%"><form action="./?pages=search" enctype="multipart/form-data" method="post">
              <table border="0" align="center" cellpadding="0" cellspacing="2">
                <tr>
                  <td width="70" height="25">Title:</td>
                  <td><input name="title" type="text" id="title" value="<?= $_POST['title']?$_POST['title']:$_GET['title']; ?>" /></td>
                </tr>
                <tr>
                  <td width="70" height="25">ID:</td>
                  <td><input name="id" type="text" id="id" value="<?= $_POST['id']?$_POST['id']:$_GET['id']; ?>" style="width: 80px" /></td>
                </tr>
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
          <td height="34" class="HeadingBG">&nbsp;</td>
        </tr>
        <tr>
          <td height="5"></td>
        </tr>
        <tr>
          <td background="./images/bbg.jpg" height="2"><img src="./images/bbg.jpg"></td>
        </tr>
        <tr>
          <td height="44" align="center" style="border:1px solid #d5d5d5; padding:5px;">&nbsp; </td>
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
		     <td class="HeadingBG_text">PAGES</td>
			  <td align="right"><?
$temp = trim($_GET['sort']);
$sortBy = 'id';
$sortDir = 'asc';
if ( $temp != '' ) {
	$sortBy = $temp;
	$temp = trim($_GET['dir']);
	$sortDir = ($temp == 'desc')?"desc":"asc";
}
$sarr['sort'] = "sort=".$sortBy;
$sarr['dir'] = "dir=".$sortDir;
$result = query("SELECT id, title FROM pages WHERE  ".implode(' AND ', $parr)." ORDER BY $sortBy $sortDir");
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
                <td width="7%" align="center"><?= makeHeader('Id', 'id'); ?></td>
                <td width="86%" ><?= makeHeader('Title', 'title'); ?></td>
                <td width="7%" align="center" style="color:#888888">Action</td>
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
                <td  style="padding-top:6px; padding-bottom:5px;" width="200"><?= $row[0]; ?></td>
                <td width="250" valign="top"  style="padding-top:6px; padding-bottom:5px;" ><?= $row[1]; ?></td>

                <td width="45" align="center" valign="top" style="padding-top:6px;color:b5b5b5">
                  <a  href="./?page=<?=$row[0]?>">Edit</a>
                 </td>
              </tr>
              <? }}else {?>
            <tr>
                <td colspan="4" class="tinygray" align="center">

                No Pages Found.</td>
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


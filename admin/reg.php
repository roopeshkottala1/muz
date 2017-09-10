<?
include("config.php");
$parr = array("status!='0'");

	
	$temp = trim($_POST['id']?$_POST['id']:$_GET['id']);
	if ( $temp != '' ) { $sarr['id'] = "id=".$temp; $parr['id'] = "id LIKE '%".eregi_replace(" ",'%',addslashes($temp))."%'"; $tarr['id'] = '<a href="./?'.$q.'=search&'.$sarr['id'].'">'.$temp.'</a> in Reg ID'; $farr['id'] = $temp; }					
	
	
	$temp = trim($_POST['phone']?$_POST['phone']:$_GET['phone']);
	
	if ( $temp != '' ) { $sarr['phone'] = "phone=".$temp; $parr['phone'] = "( phone1 LIKE '%".eregi_replace(" ",'%',addslashes($temp))."%' OR phone2 LIKE '%".eregi_replace(" ",'%',addslashes($temp))."%')"; $tarr['phone'] = '<a href="./?'.$q.'=search&'.$sarr['phone'].'">'.$temp.'</a> in Phone'; $farr['phone'] = $temp; }
	
	
	$temp = trim($_POST['name']?$_POST['name']:$_GET['name']);
	if ( $temp != '' ) { $sarr['name'] = "name=".$temp; $parr['name'] = "name LIKE '%".eregi_replace(" ",'%',addslashes($temp))."%'"; $tarr['nam'] = "<a href='./?$q=search&".$sarr['nanme']."'>".$temp."</a> in Name"; $farr['name'] = $temp; }	
	
	
	$temp = trim($_POST['fee']?$_POST['fee']:$_GET['fee']);
	if ( $temp != '' ) { $sarr['fee'] = "fee=".$temp; $parr['fee'] = "total_fee = '".eregi_replace(" ",'%',addslashes($temp))."'"; $tarr['fee'] = "<a href='./?$q=search&".$sarr['fee']."'>".$temp."</a> in Total Fee"; $farr['fee'] = $temp; }	
	
	$temp = trim($_POST['place']?$_POST['place']:$_GET['place']);
	if ( $temp != '' ) { $sarr['place'] = "place=".$temp; $parr['place'] = "place LIKE '%".eregi_replace(" ",'%',addslashes($temp))."%'"; $tarr['nam'] = "<a href='./?$q=search&".$sarr['nanme']."'>".$temp."</a> in place"; $farr['place'] = $temp; }	
	
	

	
	
	$temp = trim($_POST['start']?$_POST['start']:$_GET['start']);
	if ( $temp != '' ) { 
		$parr['start'] = "updated >='".date("Y-m-d",strtotime($temp))."  00:00:00'  ";
		$s_t = date("Y-m-d",strtotime($temp));
	}else{
		$parr['start'] = "updated >='".date("Y-m-d",$time)."  00:00:00'  ";
		$s_t = date("Y-m-d",$time);
	}
	
	$temp = trim($_POST['end']?$_POST['end']:$_GET['end']);
	if ( $temp != '' ) { 
		$parr['end'] = "updated <='".date("Y-m-d",strtotime($temp))."  23:59:59'  ";
		$e_t = date("Y-m-d",strtotime($temp));
	}else{
		$parr['end'] = "updated <='".date("Y-m-d",$time)."  23:59:59'  ";
		$e_t = date("Y-m-d",$time);
	}
	


$temp = trim($_GET['sort']);
$sortBy = 'date';
$sortDir = 'desc';
if ( $temp != '' ) {
	$sortBy = $temp;
	$temp = trim($_GET['dir']);
	$sortDir = ($temp == 'asc')?"asc":"desc";
}
$sarr['sort'] = "sort=".$sortBy;
$sarr['dir'] = "dir=".$sortDir;


$result = query("SELECT id, name, phone1, address, place,  UNIX_TIMESTAMP(updated) AS date, total_fee, (select sum(amount) from payments where rid=regs.id  limit 1) as paid  FROM regs WHERE  ".implode(' AND ', $parr)." ORDER BY $sortBy $sortDir");
$all = $result->num_rows;

$page = $_GET['page'] ? $_GET['page'] : $_POST['page'];

?>


<html>
<head>
<title>..:: Athira::..</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
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
-->
</style></head>
<body>
<table width="100%" border="0" cellspacing="2" cellpadding="0" class="leftPad">

<tr >
                <td width="61" colspan="7">
                <br>
               &nbsp;&nbsp; <a href="javascript:" style="color:#FF0000" onClick="window.print();"><strong>PRINT</strong></a>
                <br><br>
                </td>
                
  </tr>
  
  <tr >
                <td width="61" colspan="7">
                <br>
                <strong>Registration <?=$s_t?> - <?=$e_t?></strong>
                <br><br>
                </td>
                
  </tr>

				
              <tr style="background:url(./images/dots.jpg); background-repeat:repeat-x; background-position:bottom left">
                <td width="61"><?= makeHeader('Reg Id', 'id'); ?></td>
                <td width="99" height="25"><?= makeHeader('Name', 'name'); ?></td>
                <td width="93">Phone</td>
                <td width="173">Address</td>
                <td width="165" align="center"><?= makeHeader('Date', 'date'); ?></td>
                <td width="76" align="center"><?= makeHeader('Total Fee', 'total_fee'); ?></td>
                <td width="64" align="center"><?= makeHeader('Paid', 'paid'); ?></td>
  </tr>
              <?
			
			$cnt = 0;
			$_total_fee =  $_total_paid  = 0;
			if($result->num_rows >0 ) {
			while($row = $result->fetch_array(MYSQLI_ASSOC) ) {
				$bg = ($bg=='')?' bgcolor="#F3F3F3"':'';
				$obg = ($row[4] == 2)?(($bg=='')?' bgcolor="#FFF0F0"':' bgcolor="#F4EAEA"'):'';                 
                $_total_fee += $row['total_fee'];
                $_total_paid += $row['paid'];?>
                <tr<?= $obg?$obg:$bg; ?>>
                  <td  style="padding-top:6px; padding-bottom:5px;"><?= $row['id']; ?></td>
                <td  style="padding-top:6px; padding-bottom:5px;"><?= $row['name']; ?> <br><span style="color:#CCCCCC; font-size:10px"><?= $row['place']; ?></span>               </td>
                <td width="93" valign="top"  style="padding-top:6px; padding-bottom:5px;" ><?=$row['phone1']; ?></td>
                <td width="173" valign="top"  style="padding-top:6px; padding-bottom:5px;" ><?=cropString($row['address'],50); ?></td>
                <td width="165" align="center"  valign="top" ><?=date('D, d F, Y', $row['date'] )?></td>
                <td width="76" align="center"  valign="top" ><?=round($row['total_fee'],2)?></td>
                <td width="64" align="center"  valign="top" ><?=round($row['paid'],2)?></td>
  </tr>
              <? }
			  ?>
              
              <tr style="background:url(./images/dots.jpg); background-repeat:repeat-x; background-position:top left">
                <td width="61">&nbsp;</td>
                <td width="99" height="25">&nbsp;</td>
                <td width="93">&nbsp;</td>
                <td width="173">&nbsp;</td>
                <td width="165" align="center">Total</td>
                <td width="76" align="center" style="color:#FF0000"><strong> <?=round($_total_fee,2);?></strong></td>
                <td width="64" align="center" style="color:#FF0000"> <strong><?=round($_total_paid,2);?></strong></td>
  </tr>
              <?
			  
			  }else {?>
            <tr>
                <td height="26" colspan="7" align="center" class="tinygray">No Regs Found.</td>
            </tr>
        <? }?>
          </table>

</body>
</html>
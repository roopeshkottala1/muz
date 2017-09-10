<?
include("config.php");

$parr = array("regs.status!='0'");

	
	$temp = trim($_POST['id']?$_POST['id']:$_GET['id']);
	if ( $temp != '' ) { $sarr['id'] = "id=".$temp; $parr['id'] = "regs.id LIKE '%".eregi_replace(" ",'%',addslashes($temp))."%'"; $tarr['id'] = '<a href="./?'.$q.'=search&'.$sarr['id'].'">'.$temp.'</a> in Reg ID'; $farr['id'] = $temp; }					
	
	
	$temp = trim($_POST['phone']?$_POST['phone']:$_GET['phone']);
	if ( $temp != '' ) { $sarr['phone'] = "phone=".$temp; $parr['phone'] = "( phone1 LIKE '%".eregi_replace(" ",'%',addslashes($temp))."%' OR phone2 LIKE '%".eregi_replace(" ",'%',addslashes($temp))."%')"; $tarr['phone'] = '<a href="./?'.$q.'=search&'.$sarr['phone'].'">'.$temp.'</a> in Phone'; $farr['phone'] = $temp; }
	
	
	$temp = trim($_POST['name']?$_POST['name']:$_GET['name']);
	if ( $temp != '' ) { $sarr['name'] = "name=".$temp; $parr['name'] = "regs.name LIKE '%".eregi_replace(" ",'%',addslashes($temp))."%'"; $tarr['nam'] = "<a href='./?$q=search&".$sarr['nanme']."'>".$temp."</a> in Name"; $farr['name'] = $temp; }	
	
	
	$temp = trim($_POST['fee']?$_POST['fee']:$_GET['fee']);
	if ( $temp != '' ) { $sarr['fee'] = "fee=".$temp; $parr['fee'] = "total_fee = '".eregi_replace(" ",'%',addslashes($temp))."'"; $tarr['fee'] = "<a href='./?$q=search&".$sarr['fee']."'>".$temp."</a> in Total Fee"; $farr['fee'] = $temp; }	
	

	
	
	
	

	$temp = trim($_POST['start']?$_POST['start']:$_GET['start']);
	if ( $temp != '' ) { 
		$parr['start'] = "regs.added >='".date("Y-m-d",strtotime($temp))."  00:00:00'  ";
		$s_t = date("Y-m-d",strtotime($temp));
	}else{
		$parr['start'] = "regs.added >='".date("Y-m-d",$time)."  00:00:00'  ";
		$s_t = date("Y-m-d",$time);
	}
	
	$temp = trim($_POST['end']?$_POST['end']:$_GET['end']);
	if ( $temp != '' ) { 
		$parr['end'] = "regs.added <='".date("Y-m-d",strtotime($temp))."  23:59:59'  ";
		$e_t = date("Y-m-d",strtotime($temp));
	}else{
		$parr['end'] = "regs.added <='".date("Y-m-d",$time)."  23:59:59'  ";
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

$result = query("SELECT regs.id as id, regs.name as name, payments.remarks as remarks, payments.amount as amount, UNIX_TIMESTAMP(payments.added) AS date  FROM payments join regs on payments.rid=regs.id WHERE  ".implode(' AND ', $parr)." ORDER BY $sortBy $sortDir");


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
                <strong>Payments <?=$s_t?> - <?=$e_t?></strong>
                <br><br>
                </td>
                
  </tr>

              <tr style="background:url(./images/dots.jpg); background-repeat:repeat-x; background-position:bottom left">
                <td width="118"><?= makeHeader('Reg Id', 'id'); ?></td>
                <td width="190" height="25"><?= makeHeader('Name', 'name'); ?></td>
                <td width="333">Remarks</td>
                <td width="190" align="center"><?= makeHeader('Date', 'date'); ?></td>
                <td width="97" align="center"><?= makeHeader('amount', 'amount'); ?></td>
              </tr>
              <?
			if($result->num_rows >0 ) {
			
			$_total_amount  = 0;
			while(($row = $result->fetch_array(MYSQLI_ASSOC)) ) {
				$bg = ($bg=='')?' bgcolor="#F3F3F3"':'';
				$obg = ($row[4] == 2)?(($bg=='')?' bgcolor="#FFF0F0"':' bgcolor="#F4EAEA"'):'';                 
               
                $_total_amount += $row['amount'];?>
                <tr<?= $obg?$obg:$bg; ?>>
                  <td  style="padding-top:6px; padding-bottom:5px;"><?= $row['id']; ?></td>
                <td  style="padding-top:6px; padding-bottom:5px;"><?= $row['name']; ?>      </td>
                <td width="333" valign="top"  style="padding-top:6px; padding-bottom:5px;" ><?=cropString($row['remarks'],30); ?></td>
                <td width="190" align="center"  valign="top" ><?=date('D, d F, Y', $row['date'] )?></td>
                <td width="97" align="center"  valign="top" ><?=round($row['amount'],2)?></td>
              </tr>
              <? }
			  ?>
              
              <tr style="background:url(./images/dots.jpg); background-repeat:repeat-x; background-position:top left">
                <td width="118">&nbsp;</td>
                <td width="190" height="25">&nbsp;</td>
                <td width="333">&nbsp;</td>
                <td width="190" align="center">Total</td>
                <td width="97" align="center" style="color:#FF0000"> <strong><?=round($_total_amount,2);?></strong></td>
              </tr>
              <?
			  
			  }else {?>
            <tr>
                <td height="26" colspan="5" align="center" class="tinygray">No Payments Found.</td>
            </tr>
        <? }?>
          </table>

</body>
</html>
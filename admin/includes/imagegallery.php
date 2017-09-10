<?
if ($s) {
    $res = query("SELECT *   FROM imagegallery WHERE id='$s' LIMIT 1") ;
    $row = $res->fetch_array(MYSQLI_ASSOC);
    foreach ($row as $key => $val) {
        eval("$$key = htmlspecialchars(trim('".addslash($val)."'));");
    }

}
?>
<form method="post" action="./?<?=$q?>" enctype="multipart/form-data">
  <input type="hidden" name="id" value="<?=$id?>">
  <table width="800" height="360" border="0" cellpadding="0" cellspacing="0" align="center">
    <tbody>
      <tr>

        <td width="10">&nbsp;</td>
        <td height="100%" valign="top">
          <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
              <tr style="padding:0;">
                <td height="34" align="left" class="HeadingBG">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                      <tr>
                        <td class="HeadingBG_text">ADD NEW IMAGE</td>
                        <td align="right"></td>
                      </tr>
                    </tbody>
                  </table>
                </td>
              </tr>
              <tr>
                <td height="5"></td>
              </tr>
              <tr>
                <td background="./images/bbg.jpg" height="2"><img src="./images/bbg.jpg"></td>
              </tr>
              <tr>
                <td height="100%" valign="top" style="border:1px solid #d5d5d5; padding:5px;"
                    align="center">
                  <table width="100%" border="0" cellspacing="2" cellpadding="0" class="tinyPad">
                    <tr>

                      <td style="color: red" colspan="2">
                          <? if (count($err)) {
                              echo "Some required details are missing  <br>";
                              echo implode("<br>", $err);
                          }
                          ?>

                      </td>
                    </tr>
                    <tr>
                      <td width="70" height="25" bgcolor="#F3F3F3"
                          style="padding-left:5px;padding-top:6px">Title:
                      </td>
                      <td bgcolor="#F3F3F3"><input name="title" type="text" id="title"
                                                   value="<?= $title ?>" style="width: 250px"/></td>
                    </tr>
                    <tr>
                      <td width="70" height="25" style="padding-left:5px;padding-top:6px">
                        Price
                      </td>
                      <td><input name="image" type="file" value="<?= $price ?>" style="width: 70px">
                      </td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="25">
                        <input name="submit" type="submit" id="submit" value="Submit"
                               style="padding:0px; padding-left:2px; width:65px"/>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td background="./images/bgrad.jpg" height="5"><img src="./images/bgrad.jpg"></td>
              </tr>
            </tbody>
          </table>
        </td>
      </tr>
    </tbody>
  </table>
</form>


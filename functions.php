<?

function addslash($str)
{
    return addslashes($str);
    //return eregi_replace("'", "\'", $str);
}

function remslash($str)
{
    return stripslashes($str);
    //return stripslashes(eregi_replace("\\\'","'", htmlspecialchars($str, ENT_COMPAT)));
}

function cropString($str, $len)
{
    if ($str != '') {
        $str = array_shift(preg_split("#\n#", $str));
        if (strlen($str) > $len) {
            $pos = strrpos(substr($strs, 0, $len), ' ');
            return (($pos === false) ? substr($str, 0, $len) . '&hellip;' : substr($str, 0, $pos) . '&nbsp;&hellip;');
        } else
            return $str;
    } else
        return $str;
}


if ( count($_POST) && $_POST['name']) {
    foreach ($_POST as $key => $val) {
        ${$key} = get_magic_quotes_gpc() ? html_entity_decode(utf8_encode(trim(urldecode($val))), ENT_QUOTES) : addslashes(html_entity_decode(trim(urldecode($val)), ENT_QUOTES));
    }
    if ( $name == '' ) { die("Name may not be empty");}
    query("insert into contact (`name`, `phone`, `email`, `productname`, `quantity`, `message`) values ('$name', '$phone', '$email', '$productname', '$quantity', '$message')");
    header("Location: index.php");

}
?>
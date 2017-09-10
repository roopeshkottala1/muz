<?
header("Pragma: public");
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("Cache-Control: private", false);
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

if ($q == 'logout') {
    query("DELETE FROM sessions WHERE sid='$_sid'");
    header("HTTP/1.1 303 See Other");
    header("Location: ./");
    header("Connection: close");
    die;
}
query("DELETE FROM sessions WHERE time < FROM_UNIXTIME(" . ($time - 4200) . ")");
function makeHeader($name, $sorter)
{
    global $q;
    global $s;
    global $srci;
    global $sortBy;
    global $sortDir;
    return (($sortBy == $sorter) ? '<img src="./images/sr' . (($sortDir == 'asc') ? 'dn' : 'up') . '.png" style="margin-right:2px; margin-bottom:2px;" align="absmiddle" />' : '') . '<a href="./?' . $q . (($s != '') ? '=' . $s : '') . (($srci != '') ? '&' . $srci : '') . "&sort=" . $sorter . "&dir=" . (($sortDir == 'asc' && $sortBy == $sorter) ? "desc" : "asc") . '">' . $name . '</a>';
}

if ($_sid != '') {
    $result = query("SELECT name, uid, level FROM sessions WHERE sid='$_sid' LIMIT 1");
    if ($result->num_rows == 1) {
        $row = $result->fetch_array(MYSQLI_NUM);
        $_uid = intval($row[1]);
        $_acc = intval($row[2]);
        $_name = $row[0];
        query("UPDATE sessions SET time=FROM_UNIXTIME($time) WHERE sid='$_sid' LIMIT 1");
    } else {
        $_sid = '';
    }
}
if ($q == 'login') {
    foreach ($_POST as $key => $val) {
        ${$key} = get_magic_quotes_gpc() ? html_entity_decode(utf8_encode(trim(urldecode($val))), ENT_QUOTES) : addslashes(html_entity_decode(trim(urldecode($val)), ENT_QUOTES));
    }

    if (count($_POST) != 0) {

        $result = query("SELECT id, level, username, status FROM adminusers WHERE username!='' AND username='" . strtolower($username) . "' AND pass='" . md5($password) . "' AND status!='0'  AND (level='1' OR level='2' OR level='3') LIMIT 1");
        if ($result->num_rows == 1) {
            $row = $result->fetch_array(MYSQLI_NUM);
            $_uid = intval($row[0]);
            $_acc = intval($row[1]);
            $_name = $row[2];
            query("DELETE FROM sessions WHERE uid='$_uid'");
            do {
                $_sid = md5(uniqid(microtime()));
                $result = query("SELECT uid FROM sessions WHERE sid='$_sid' LIMIT 1");
            } while ($result->num_rows > 0);
            query("INSERT INTO sessions VALUES('$_sid', '$_name', '$_uid', '$_acc','1', FROM_UNIXTIME($time))");
            //setcookie("asession",$_sid,$time+10000,"",$host);
            setcookie("asession", $_sid, $time + 10000);
            header("HTTP/1.1 303 See Other");
            header("Location: ./?products");
            header("Connection: close");
            die;
        } else {
            $_uid = -1;
            $err = "Invalid username or password.";
        }
    }
    if (count($_POST) == 0 || $_uid == -1) {
        require("./login.php");
        die;
    }
}
if ($_sid == '') {
    header("HTTP/1.1 303 See Other");
    header("Location: ./?login");
    header("Connection: close");
    die;
} else {
    //setcookie("asession","$_sid",$time+1200,"",$host);
    setcookie("asession", "$_sid", $time + 1200);
}
$access = array('admins' => array(1), 'admin' => array(1, 2, 3, 4, 5, 6), 'medias' => array(1, 2), 'media' => array(1, 2), 'folders' => array(1, 2), 'folder' => array(1, 2));

if (in_array($q, array('user')) && count($_POST)) {
    header('Content-type: text/xml');

    $err = array();
    foreach ($_POST as $key => $val) {
        ${$key} = get_magic_quotes_gpc() ? html_entity_decode(utf8_encode(trim(urldecode($val))), ENT_QUOTES) : addslashes(html_entity_decode(trim(urldecode($val)), ENT_QUOTES));
    }
    $result = query("SELECT username, level FROM adminusers WHERE id='$id'" . (($_acc == 3) ? "AND company='$_cmp'" : '') . " LIMIT 1");
    $row = $result->fetch_array(MYSQLI_NUM);
    if ($id && $result->num_rows == 0)
        die("<error><msg>" . $row[1] . " Your access level prohibits you from editing this user.</msg></error>");
    switch ($_acc) {
        case '4':
            die("<error><msg>" . $row[1] . " Your access level prohibits you from editing this user.</msg></error>");
        case '3':
            $level = $id ? $row[1] : '4';
        case '2':    //$company = $_cmp;
            if ($level == 1) $err['level'] = "Invalid level selected.";
            $username = $id ? '' : addslashes($username);
            $name = addslashes($name);
            $email = $id ? '' : $email;
    }
    if ($name == '') $err["name"] = "The name field may not be blank.";
    if ($username == '' && $id == "") $err["username"] = "The username field may not be blank.";
    elseif ($username != '' && !id && query("SELECT id FROM adminusers WHERE username='$username' AND status!='0' LIMIT 1")->num_rows > 0) $err["username"] = "This username has already been taken.";
    elseif ($username != '' && id && query("SELECT id FROM adminusers WHERE username='$username' AND id!='$id' AND status!='0' LIMIT 1")->num_rows > 0) $err["username"] = "This username has already been taken.";
    if ($email == '' && $id == "") $err["email"] = "The email field may not be blank.";
    elseif ($email != '' && !preg_match('/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,})$/', $email)) $err['email'] = "The email you provided is not valid.";
    elseif ($email != '' && !id && query("SELECT id FROM adminusers WHERE email='$email' AND id!='$id' AND status!='0' LIMIT 1")->num_rows > 0) $err["email"] = "A user has already been registered with this email.";
    if ($level == '') $err["level"] = "No access level selected.";
    if ($pass == '' && $id == "") $err["pass"] = "You did not provide a password.";
    elseif (($pass != '' || $cpass != '') && strlen($pass) < 4) $err["pass"] = "For user's security, it is required to have a password not shorter than 4 characters.";
    elseif (($pass != '' || $cpass != '') && $pass != $cpass) $err["cpass"] = "The passwords you entered do not match.";
    if (count($err) > 0) {
        echo "<error>\n";
        foreach ($err as $key => $val)
            echo "<$key>$val</$key>\n";
        echo "</error>";
        die;
    }
    if ($id) {
        query("UPDATE adminusers SET name='$name'" . (($username) ? ", username='" . strtolower($username) . "'" : '') . (($email) ? ", email='" . strtolower($email) . "'" : '') . (($level) ? ", level='$level'" : '') . ($pass ? ", pass='" . md5($pass) . "'" : '') . " WHERE id='$id' LIMIT 1");
        echo "<result>User '" . $row[0] . "' updated successfully.</result>";
    } else {
        $result = query("INSERT INTO adminusers (`id`, `name`, `email`, `username`, `pass`, `status`, `level`, `created`, `updated`) values (null, '$name', '$email', '$username', '" . md5($pass) . "' , '1', '$level', FROM_UNIXTIME($time),  FROM_UNIXTIME($time) )");
        //die("INSERT INTO adminusers (`id`, `name`, `email`, `username`, `pass`, `status`, `level`, `created`, `updated`) values (null, '$name', '$email', '$username', '".md5($pass)."' , '1', '$level', FROM_UNIXTIME($time),  FROM_UNIXTIME($time) )");
        echo "<result>User '" . remslash($username) . "' created successfully.</result>";
    }
    die;
}

if (in_array($q, array('user'))) {
    header('Content-type: text/xml');
    $result = query("SELECT id, name, username, email, level FROM adminusers WHERE id='" . intval($s) . "' AND status!='0' LIMIT 1");
    if ($result->num_rows > 0) {
        $row = $result->fetch_array(MYSQLI_ASSOC);
        if (($row['level'] == 1 && $_acc != 1))
            die("<error>Your access level prohibits you from editing the requested information.</error>");
        echo "<result>";
        foreach ($row as $key => $val)
            echo "<$key>" . $val . "</$key>";
        echo "</result>";
        die;
    } else
        die("<error>No user found with your critiria.</error>");
}

if (in_array($q, array('users')) && $s == 'del') {
    $del = trim($_GET['del']);
    $result = query("SELECT level FROM adminusers WHERE id='$del' AND id!='$_uid' LIMIT 1");
    $row = $result->fetch_array(MYSQLI_NUM);
    if (($id == '1'))
        die("Your access level prohibits you from editing the requested information.");
    query("UPDATE adminusers SET status='0' WHERE id='$del' LIMIT 1");
    header("HTTP/1.1 303 See Other");
    header("Location: ./?$q");
    header("Connection: close");
    die;
}

if (in_array($q, array('users')) && $s == 'status') {
    $status = trim($_GET['status']);
    if (($id == '1') || ($_acc == '3'))
        die("Your access level prohibits you from editing the requested information.");
    //$usts = array_shift(query("SELECT status FROM adminusers WHERE id='$status' AND id!='$_uid' LIMIT 1")->fetch_array(MYSQLI_NUM));
    list($usts) = query("SELECT status FROM adminusers WHERE id='$status' AND id!='$_uid' LIMIT 1")->fetch_array(MYSQLI_NUM);
    query("UPDATE adminusers SET status='" . (($usts == 1) ? 2 : 1) . "' WHERE id='$status' LIMIT 1");
    header("HTTP/1.1 303 See Other");
    header("Location: ./?$q");
    header("Connection: close");
    die;
}


if (in_array($q, array('products')) && $s == 'del') {
    $del = trim($_GET['del']);
    query("DELETE from  products WHERE id='$del' LIMIT 1");
    query("DELETE from  product_images WHERE pid='$del' LIMIT 1");
    header("HTTP/1.1 303 See Other");
    header("Location: ./?$q");
    header("Connection: close");
    die;
}


if (in_array($q, array('product')) && count($_POST)) {
    $err = array();
    foreach ($_POST as $key => $val) {
        ${$key} = get_magic_quotes_gpc() ? html_entity_decode(utf8_encode(trim(urldecode($val))), ENT_QUOTES) : addslashes(html_entity_decode(trim(urldecode($val)), ENT_QUOTES));
    }
    $file_ext = array_pop(explode(".", $_FILES["image"]["name"]));
    if ($name == '') {
        $err['name'] = "Name may not be empty";
    }

    if (!is_numeric($price)) {
        $err['price'] = "Price is not valid";
    }

    if (!is_numeric($qty)) {
        $err['qty'] = "Qty is not valid";
    }

    if (!in_array($file_ext, array('jpg', 'jpeg', 'png', 'gif'))) {
        $err['qty'] = "Product image is not valid";
    }


    if (!count($err)) {

        do {
            $filename = uniqid() . ".$file_ext";
            $result = query("SELECT id FROM product_images WHERE filename='$filename' LIMIT 1");
        } while ($result->num_rows > 0);
        $target_file = "../pimages/" . $filename;
        if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
        } else {
            die("Something went wrong while uploading file. Contact admin");
        }
        if ($id) {
            $result = query("update products set name='$name', short_desc = '$short_desc', long_desc = '$long_desc', price =  '$price', qty = '$qty' where id='$id' limit 1");
            query("delete from product_images where pid='$id'");
            query("insert into product_images(`id`, `pid`, `filename`) values (NULL, '$id' , '$filename')");
        } else {
            $result = query("INSERT INTO products VALUES(NULL, '$name', '$short_desc', '$long_desc', '$price', '$qty' , FROM_UNIXTIME($time), FROM_UNIXTIME($time), '$uid' , 1)");
            $pid = $mysqli->insert_id;
            query("insert into product_images(`id`, `pid`, `filename`) values (NULL, '$pid' , '$filename')");
        }
        header("Location: ./?products");
    }

}
if (in_array($q, array('page')) && count($_POST)) {
    $err = array();
    foreach ($_POST as $key => $val) {
        ${$key} = get_magic_quotes_gpc() ? html_entity_decode(utf8_encode(trim(urldecode($val))), ENT_QUOTES) : addslashes(html_entity_decode(trim(urldecode($val)), ENT_QUOTES));
    }
    //DIE("update pages set content='$content' where id='$id' limit 1");
    $result = query("update pages set content='$content' where id='$id' limit 1");
    header("Location: ./?pages");

}

if (in_array($q, array('imagegallery')) && count($_POST)) {
    $err = array();
    $file_ext = array_pop(explode(".", $_FILES["image"]["name"]));
    foreach ($_POST as $key => $val) {
        ${$key} = get_magic_quotes_gpc() ? html_entity_decode(utf8_encode(trim(urldecode($val))), ENT_QUOTES) : addslashes(html_entity_decode(trim(urldecode($val)), ENT_QUOTES));
    }
    if ($title == '') {
        $err['title'] = "Title may not be empty";
    }
    if (!in_array($file_ext, array('jpg', 'jpeg', 'png', 'gif'))) {
        $err['qty'] = "image is not valid";
    }

    if ( !count($err) )   {

        do {
            $filename = "si_".uniqid() . ".$file_ext";
            $result = query("SELECT id FROM imagegallery WHERE image='$filename' LIMIT 1");
        } while ($result->num_rows > 0);
        $target_file = "../pimages/" . $filename;
        if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
        } else {
            die("Something went wrong while uploading file. Contact admin");
        }

       // die("insert into imagegallery (`title`,`image`) values ('$title','$filename')");
        $result = query("insert into imagegallery (`title`,`image`) values ('$title','$filename')");
        header("Location: ./?imagegallerys");
    }
}

if (in_array($q, array('imagegallerys')) && $s == 'del') {
    $del = trim($_GET['del']);
    query("DELETE from  imagegallery WHERE id='$del' LIMIT 1");
    header("HTTP/1.1 303 See Other");
    header("Location: ./?$q");
    header("Connection: close");
    die;
}

if (in_array($q, array('contacts')) && $s == 'del') {
    $del = trim($_GET['del']);
    query("DELETE from  contact WHERE id='$del' LIMIT 1");
    header("HTTP/1.1 303 See Other");
    header("Location: ./?$q");
    header("Connection: close");
    die;
}

?>
<?

$mysql_username = "root";
$mysql_pssword = "";
$db_name = "muzirisfarms";
$mysql_host = "localhost";

$mysql_username = "mysqldbuser@muziris-mysqldbserver";
$mysql_pssword = "Kerala@1234";
$db_name =  'muziris';
$mysql_host = "muziris-mysqldbserver.mysql.database.azure.com";
/*
$mysql_username = "muz-user-root";
$mysql_pssword = "muz-pass-root";
$db_name =  'muzirisfarms';
$mysql_host = "muzirisfarms.com";
*/

error_reporting(0);

$mysqli = null;
$_sec = str_replace('\\', '/', $_SERVER['DOCUMENT_ROOT'])."/secure/";
function query($query, $act = true) {
	global $mysqli, $mysql_username, $mysql_pssword, $db_name, $mysql_host;
	try {
		if (!$mysqli) {
			class SQLException extends Exception {
			   public function __construct($message, $code = 0) {
				   parent::__construct($message, $code);
			   }
			   public function __toString() {
				   return "(".__CLASS__.") {$this->message}\n";
			   }
			}
			$mysqli = new mysqli( $mysql_host , $mysql_username, $mysql_pssword, ($act?$db_name:NULL));
			if (mysqli_connect_errno())
			   throw new SQLException("Connect failed: ".mysqli_connect_error());
		}
		if ($act)
			return $mysqli->query($query);
	} catch (Exception $ex) {
		echo array_key_exists('nohtml', $_GET)?("<error>".$ex."</error>"):$ex;
		die;
	}
}
list($p,) = explode("&",$_SERVER['QUERY_STRING']);
list($q,$s) = explode("=",$p,2);
$q = rawurldecode($q);
function throwError($msg) {
	if (array_key_exists('nohtml', $_GET)) {
		header('Content-type: text/xml');
		echo "<error><msg>$msg</msg></error>"; 
	} else 
		echo $msg;
	die;
}
$levels = array(1=>"Super Administrator", 2=>"Administrator");
$slevels = array(1=>"SuperAdmin", 2=>"Admin");
$_uid = 0;
$_acc = 0;
$_name = '';
$_page = array();
$time = time();
$time_start = microtime(true);
$_sid = $_COOKIE['asession'];
if (!defined(SQL_ONLY)) {
	require('functions.php');
}	
?>
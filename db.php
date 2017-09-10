<?
echo "starts>>>..v9";

$mysql_username = "root";
$mysql_pssword = "";
$db_name = "muzirisfarms_test";
$mysql_host = "localhost";

$mysql_username = "mysqldbuser@muziris-mysqldbserver";
$mysql_pssword = "Kerala@1234";
$db_name =  'muziris';
$mysql_host = "muziris-mysqldbserver.mysql.database.azure.com";


error_reporting(255);

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
			if (mysqli_connect_errno()) {
				print("Connect failed: ".mysqli_connect_error());
			   throw new SQLException("Connect failed: ".mysqli_connect_error());
			}
		}
		if ($act){
			try{
				return $mysqli->query($query) ;
			}catch (Exception $ex) {
				echo "ee>>>".$ex;		
			}	
			
		}
	} catch (Exception $ex) {
		echo "Erorr>".$ex;
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
echo "start query <br>";

query("CREATE TABLE  `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(56) NOT NULL,
  `productname` varchar(256) NOT NULL,
  `quantity` int(3) NOT NULL,
  `message` text NOT NULL,
  `added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ");

$result = query("show tables");
$row = $result->fetch_array(MYSQLI_NUM);

print_r($row);

echo "ok......>v1";


?>
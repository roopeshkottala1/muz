<?
echo "starts>>>..v11";

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




query("CREATE TABLE IF NOT EXISTS `imagegallery` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `image` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
)");



query("INSERT INTO `imagegallery` (`id`, `title`, `image`) VALUES
(4, 'gallery Image 1', 'si_59574fcccc295.jpg'),
(5, 'Land image', 'si_59574fe080149.jpg');");


query("CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
)");


query("INSERT INTO `pages` (`id`, `title`, `content`) VALUES
(1, 'home-aboutus-section', '<p>Muziries <span class=\"\\\"\\\\\"highlightNode\\\\\"\\\"\">farms</span> Pvt Ltd is a kerala based organization dealing with Food Products and producing organic products like as basmati rice for last 8 years in India. We are one of the largest producer and supplier of organic foods products in India and abroad. The brand is an outcome of more than 8 years of organic food research and development and we presents you an enormous ..</p>'),
(2, 'home-contactus-section', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id sem purus. Proin ut posuere leo, non porta lectus. Nulla egestas, turpis quis luctus ultricies, massa neque mattis dolor, lacinia sagittis neque velit eu erat. Nulla convallis et tellus a ullamcorper. Maecenas viverra lobortis erat, non commodo augue volutpat vel. Pellentesque eget risus eros.Â </p>'),
(3, 'contact', '<p>lorem ipsum Private Limited <br /> lorem ipsum <br /> </p>\r\n<p><abbr title=\"Phone\">Tel</abbr>:  91 3338524380</p>\r\n<p><abbr title=\"fax\">Fax</abbr>: 91 3393390</p>\r\n<p><abbr title=\"Email\">Email</abbr>: <a href=\"mailto:support@lorem.com\">support@lorem.com</a></p>'),
(4, 'about', '<p>Cancer had existed long back in India.The Ayurveda rishis had prescribed certain diets to fight cancer. one of them is <strong>Rakthashali</strong> rice(A type of brown rice) which contains all essential minerals and abundant Oryzanol which has the property of Anti-carcinogenetic effect to inhibit tumor growth,can prevent cancers such as breast, liver lungs and colorectal cancer.While this rice was extinct an enterprising farmer in south India has started cultivating and harvesting this variety. All you have to do is have about 80 grams of this rice cook like a poridge and take it for dinner ... Rakthashali variety, is a rare red rice. Have medical benefits in Ayurvedic Medicine (traditional medicine of India) and has been used since 3000 years ago. This rice is believed to have benefits in slow the aging process. Results of the study found that this kind of rice is rich in antioxidants, calcium, Zinc, iron and other minerals. contact us for franchise india and abroad  91 8330848300</p>'),
(5, 'about-top-section', '<h1>What we do</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, ipsam, eligendi, in quo sunt possimus non incidunt odit vero aliquid similique quaerat nam nobis illo aspernatur vitae fugiat numquam repellat.</p>'),
(6, 'home-products-section', '<p>The Ayurveda rishis had prescribed certain diets to fight cancer. one of them is <strong>Rakthashali</strong> rice which contains all essential minerals and abundant Oryzanol which has the property of Anti-carcinogenetic effect to inhibit tumor growth</p>'),
(7, 'contact-map', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d250436.87944409173!2d75.67038190941932!3d11.255801803994567!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba65938563d4747:0x32150641ca32ecab!2sKozhikode, Kerala!5e0!3m2!1sen!2sin!4v1498895062956\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>'),
(8, 'gallery', 'gallery comes here'),
(9, 'awards', 'awards comes here');");


query("CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `short_desc` text NOT NULL,
  `long_desc` text NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `uid` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
)");

query("INSERT INTO `products` (`id`, `name`, `short_desc`, `long_desc`, `price`, `qty`, `added`, `updated`, `uid`, `status`) VALUES
(1, 'test product', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', '<p>Test long dec</p>', 100.5, 10, '2017-05-29 00:00:00', '2017-05-30 00:00:00', 1, 1),
(5, 'Test produt1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', '<ul>\r\n<li>sdas</li>\r\n<li>asd</li>\r\n<li>asd</li>\r\n</ul>', 12, 1, '2017-06-20 17:39:11', '2017-06-20 17:39:11', 0, 1),
(6, 'test product', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', '', 300, 24, '2017-07-01 12:53:19', '2017-07-01 12:53:19', 0, 1),
(7, 'test product 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', '', 200, 12, '2017-07-01 12:53:55', '2017-07-01 12:53:55', 0, 1),
(8, 'Sample pro', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', '', 75.5, 22, '2017-07-01 12:54:33', '2017-07-01 12:54:33', 0, 1),
(9, 'samle 221', 'This is sample Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500', '', 400, 22, '2017-07-01 12:57:22', '2017-07-01 12:57:22', 0, 1);");



query("CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `filename` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ");


query("CREATE TABLE IF NOT EXISTS `sessions` (
  `sid` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `uid` bigint(20) UNSIGNED DEFAULT NULL,
  `level` varchar(2) DEFAULT NULL,
  `multi` varchar(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ");

query("CREATE TABLE IF NOT EXISTS `sessions` (
  `sid` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `uid` bigint(20) UNSIGNED DEFAULT NULL,
  `level` varchar(2) DEFAULT NULL,
  `multi` varchar(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ");

$result = query("show tables");
while ( $row = $result->fetch_array(MYSQLI_NUM) ) {
	print("......<br>");
	print_r($row);
}



echo "ok......>v1";


?>
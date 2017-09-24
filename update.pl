system("rm -rf geolocation-php-logger");
system("rm -rf update");
system("git clone https://github.com/xRtos/geolocation-php-logger.git");
system("cd geolocation-php-logger; rm -rf index.php;rm -rf visitors.html;mv update ../");
system("rm -rf geolocation-php-logger");
my $filename = 'update';
open(my $fh, '<:encoding(UTF-8)', $filename); 
my $row = <$fh>;
system("clear");
if ($row == 1) {
	print color 'bold white';
	print "Update Found!\n";
	sleep(1);
	system("rm -rf geolocation-php-logger");
	system("git clone https://github.com/xRtos/geolocation-php-logger.git");
	system("rm -rf menu.pl");
	system("cd geolocation-php-logger; rm -rf index.php;rm -rf visitors.html;rm -rf update;mv menu.pl ../");
	system("rm -rf geolocation-php-logger");
	system("clear");
	print "Update Finished!\n";
} else {
	print "No Update Found!\n";
sleep(1);
system("perl menu.pl");	
}

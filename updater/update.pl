my $filename = 'update';
open(my $fh, '<:encoding(UTF-8)', $filename); 
my $row = <$fh>;
system("clear");
if ($row == 1) {
	print color 'bold white';
	print "Update Found!\n";
	sleep(1);
	system("rm -rf menu.pl");
	system("wget https://raw.githubusercontent.com/xRtos/geolocation-php-logger/master/menu.pl");
	print "Update Finished!\n";
	system("clear");
} else {
	system("wget https://raw.githubusercontent.com/xRtos/geolocation-php-logger/master/current/menu.pl");
	print "No Update Found! Restored to current version!\n";
sleep(1);
system("perl menu.pl");	
}

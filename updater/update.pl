my $filename = 'update';
open(my $fh, '<:encoding(UTF-8)', $filename); 
my $row = <$fh>;
system("clear");
if ($row == 1) {
	print color 'bold white';
	print "Update Found!\n";
	sleep(1);
	system("rm -rf menu.pl");
	print "Update Finished!\n";
} else {
	print "No Update Found!\n";
sleep(1);
system("perl menu.pl");	
}
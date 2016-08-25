#!/usr/bin/perl
use warnings; 
use strict;
use DBI;

my ($dbname, $host, $username, $pass)  = ("boards",
					  "127.0.0.1",
					  "postgres",
					  "f");

my $dbh = DBI->connect("dbi:Pg:dbname=$dbname;host=$host;",
		    "$username","$pass");

my $drop = $dbh->prepare("DELETE FROM board_000000");
$drop->execute();

$drop = $dbh->prepare("DELETE FROM board_000001");
$drop->execute();
$drop = $dbh->prepare("DELETE FROM board_000010");
$drop->execute();
$drop = $dbh->prepare("DELETE FROM board_000011");
$drop->execute();
$drop = $dbh->prepare("DELETE FROM coincidences");
$drop->execute();
print "Completed clearing tables\n";

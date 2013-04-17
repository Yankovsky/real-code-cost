#!/usr/bin/perl

my $file_name = $ARGV[0];
if ($file_name eq '') {
	die("please pass perl file name as command line arg");
}

open FILE, $file_name or die $!;
my $cost = 0;
while (<FILE>) {
	my @matches = $_ =~ /(\$)/g;
	$cost += scalar(@matches);
 }
 close (FILE);
 
 print "This code costs $cost\$!\n";

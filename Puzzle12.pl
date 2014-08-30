#Problem: Project Euler #12
#Author: B. Eugene Smith

use v5.18.2;
use strict;
use warnings;
use Benchmark;

my $start = Benchmark->new;
sub NumDivisors {
	my $num = shift;
	my $tot;
	for my $factor ( 1..sqrt($num) ) {
		if ( $num % $factor != 0) {
			next;
		} else {
			$tot+=2;
		}
	}
	$tot;
}

my $friend;
my $TriNum;
my $count = 1;
while ( NumDivisors($TriNum) < 501 ) {
	$TriNum += $count;
	$count += 1;
	say "$TriNum has " . NumDivisors($TriNum) . " factors.";
	$friend = $TriNum;
}
say $friend; #76576500
my $end = Benchmark->new;

my $tot_time = timediff($end, $start);
say "the code took: " . timestr($tot_time); 
	#the code took: 17 wallclock secs (17.30 usr +  0.07 sys = 17.37 CPU)





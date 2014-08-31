# Project Euler #14
# Author: B. Eugene Smith

use v5.18.2;
use strict;
use warnings;
use diagnostics;
use Benchmark;

my $start = Benchmark->new;
sub collatz_even {
	my $n = shift;
	$n/2;
}

sub collatz_odd {
	my $n = shift;
	( 3 * $n ) + 1;
}

sub collatz {
	my $n = shift;
	my $count = 1;
	while ($n != 1) {
		if ( $n * -1 > 0 || $n == 0) { die "Invalid number!"; } #not necessary
		if ( $n % 2 == 0 ){
			$n = collatz_even( $n );
		}
		elsif ( $n % 2 == 1) {
			$n = collatz_odd( $n );
		}
		$count++;
	}
	$count;
}

my $max = 1 ;
for ( 1..999999 ) {
	my $val = collatz($_);
	if ( $val > $max ) {
		$max = $val; 
		say "$_ : $max"; # We should expect the last value to be the maximum number AND collatz count 837799 : 525
	}
	else { next; }
}
my $end = Benchmark->new;
my $time_diff = timediff($end, $start);
say "That code took: " . timestr($time_diff); # That code took: 103 wallclock secs (102.56 usr +  0.07 sys = 102.63 CPU)

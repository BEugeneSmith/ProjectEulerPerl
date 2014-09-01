#Project Euler #16
#Author B. Eugene Smith

use v5.18.2;
use warnings;
use strict;
use bigint;
use Benchmark;

my $start = Benchmark->new;
my $tot = sum(
	grep $_ =~ /\d/, 
	(split "", 2**1000)
	);

sub sum {
	my @array = @_;
	my $total;
	for my $n (@array){
		$total += $n;
	}
	return $total;
}
say $tot; #returns 1366
my $end = Benchmark->new;

my $time_diff = timediff($end, $start);
say "The code took: " . timestr($time_diff);
	#returns The code took:  0 wallclock secs ( 0.01 usr +  0.00 sys =  0.01 CPU)



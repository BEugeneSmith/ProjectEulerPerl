use warnings;
use strict;
use v5.18.2;

my @vals = qw/1 2/;
my $total = 2;
while ($vals[-1] < 4000000) {
	my $newval = $vals[-1] + $vals[-2];
	$total+=$newval if ($newval % 2==0);
	push @vals, $newval;	
}

say $total;

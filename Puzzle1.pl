use warnings;
use strict;
use diagnostics;
use v5.18.2;

print "Pick an upper limit: ";
chomp(my $limit = <STDIN> -1);
my $NaturalSum;
for (1..$limit) {
	when ($_%5==0) {$NaturalSum+=$_}
	when ($_%3==0) {$NaturalSum+=$_}
}
say "Sum: $NaturalSum";

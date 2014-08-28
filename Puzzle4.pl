use 5.018002;
use strict;
use warnings;

my $number = 1000000;
my @array;
sub num_producer {
	my $limit = sqrt($number);
	my @array1 = 1..$limit;
	my @array2 = 1..$limit;
	my $count = 1;
	for my $val1 (@array1) {
		for my $val2 (@array2) {
			my $prod = $val1 * $val2;
			if ($prod eq reverse($prod) and length($val1)==3 and length($val2)==3) {
				push @array, $prod;
			}
			$count++;
		}
	}
	my $max = (sort { $b <=> $a } @array)[0];
	return $max;
}

say num_producer();


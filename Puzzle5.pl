#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

use v5.18.2;
use strict;
use warnings;

sub divide_11_to_20{
  my ( $divided ) = @_;
  foreach (11..20)
  {
     return 0 if ($divided % $_);
  }
 
  return 1;
}
 
my $main_count = 2520; 
while ( !divide_11_to_20($main_count) ){
	$main_count += 2520;
}
 
say $main_count;

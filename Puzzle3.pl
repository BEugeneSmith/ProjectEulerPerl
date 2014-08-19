use strict;
use warnings;
use v5.18.2;

my $limit = 600851475143;

my @final_nums = grep isprime($_),   #pushes factor to final list if it is prime
      grep $limit % $_ == 0, #gets factors
	    2..(sqrt($limit)); #original list

sub isprime {
  my $num = shift;
  if ($num < 2) {return 0;}
  if ($num == 2) {return 1;}
  else {
	    for (my $i = 3; $i < sqrt($num); $i+=2) { 
		  return 0 if ($num % $i == 0);
	    }
      }
  return 1;
}

say $final_nums[-1];
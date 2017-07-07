#!/usr/bin/perl

sub swap {
	my $tmp = $inputArray[$_[1]];
	$inputArray[$_[1]] = $inputArray[$_[0]];
	$inputArray[$_[0]] = $tmp;
}

sub InsertionSort {
	for (my $i = 0; $i <= @inputArray-1; $i++) {
		my $j = $i;
		while ($j > 0 && $inputArray[$j-1] > $inputArray[$j]) {
			swap($j-1,$j);
			$j = $j-1;
		}
	}
}

my $str = <STDIN>;
chomp $str;
@inputArray = split(' ', $str);
InsertionSort(0,@inputArray-1);
print("@inputArray\n");
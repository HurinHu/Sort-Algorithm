#!/usr/bin/perl

sub swap {
	my $tmp = $inputArray[$_[1]];
	$inputArray[$_[1]] = $inputArray[$_[0]];
	$inputArray[$_[0]] = $tmp;
}

sub Partition {
	my $pivot = $inputArray[$_[1]];
	my $i = $_[0]-1;
	for (my $j = $_[0]; $j <= $_[1]; $j++) {
		if ($inputArray[$j] <= $pivot) {
			$i ++;
			if ($i != $j) {
				swap($i,$j);
			}
		}
	}
	return $i;
}

sub QuickSort {
	if ($_[0] < $_[1]) {
		$p = Partition($_[0],$_[1]);
		QuickSort($_[0],$p-1);
		QuickSort($p+1,$_[1]);
	}
}

my $str = <STDIN>;
chomp $str;
@inputArray = split(' ', $str);
QuickSort(0,@inputArray-1);
print("@inputArray\n");
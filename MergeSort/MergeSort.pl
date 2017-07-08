#!/usr/bin/perl

sub Merge {
	@tmp = @inputArray;
	my $i = $_[0];
	my $j = $_[1]+1;
	my $k = $_[0];
	while ($i <= $_[1] && $j <= $_[2]){
		if($tmp[$i] <= $tmp[$j]){
			$inputArray[$k] = $tmp[$i];
			$i = $i+1;
		}else{
			$inputArray[$k] = $tmp[$j];
			$j = $j+1;
		}
		$k = $k+1;
	}
	while ($i <= $_[1]){
		$inputArray[$k] = $tmp[$i];
		$k = $k+1;
		$i = $i+1;
	}
}

sub MergeSort {
	if ( $_[0] < $_[1] ){
		my $center = int(($_[0]+$_[1])/2);
		MergeSort($_[0], $center);
		MergeSort($center+1, $_[1]);
		Merge($_[0], $center, $_[1]);
	}
}

my $str = <STDIN>;
chomp $str;
@inputArray = split(' ', $str);
MergeSort(0,@inputArray-1);
print("@inputArray\n");
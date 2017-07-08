<?php
class MergeSort{
	
	protected $Array;
	
	public function __construct($Array){
		$this->Array = $Array;
	}
	
	private function Merge($lo, $center, $hi){
		$tmp = $this->Array;
		$i = $lo;
		$j = $center+1;
		$k = $lo;
		while($i <= $center && $j <= $hi){
			if($tmp[$i] <= $tmp[$j]){
				$this->Array[$k] = $tmp[$i];
				$i++;
			}else{
				$this->Array[$k] = $tmp[$j];
				$j++;
			}
			$k++;
		}
		while($i <= $center){
			$this->Array[$k] = $tmp[$i];
			$k++;
			$i++;
		}
	}
	
	public function MergeSort($lo, $hi){
		if($lo < $hi){
			$center = ($lo + $hi)/2;
			$this->MergeSort($lo, $center);
			$this->MergeSort($center+1, $hi);
			$this->Merge($lo, $center, $hi);
		}
	}
	
	public function getSort(){
		return implode(" ",$this->Array);
	}
}
$input = readline();
$Array = array_map('intval', explode(' ', $input));
$obj = new MergeSort($Array);
$obj->MergeSort(0, sizeof($Array)-1);
print_r($obj->getSort());
?>
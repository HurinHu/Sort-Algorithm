<?php
class QuickSort{
	
	protected $Array;
	
	public function __construct($Array){
		$this->Array = $Array;
	}
	
	private function swap($i, $j){
		$tmp = $this->Array[$j];
		$this->Array[$j] = $this->Array[$i];
		$this->Array[$i] = $tmp;
	}

	private function Partition($lo, $hi){
		$pivot = $this->Array[$hi];
		$i = $lo-1;
		for($j = $lo; $j <= $hi; $j ++){
			if($this->Array[$j] <= $pivot){
				$i++;
				if($i != $j){
					$this->swap($i, $j);
				}
			}
		}
		return $i;
	}

	public function QuickSort($lo, $hi){
		if($lo < $hi){
			$p = $this->Partition($lo, $hi);
			$this->QuickSort($lo, $p-1);
			$this->QuickSort($p+1, $hi);
		}
	}
	
	public function getSort(){
		return implode(" ",$this->Array);
	}
}

$input = readline();
$Array = array_map('intval', explode(' ', $input));
$obj = new QuickSort($Array);
$obj->QuickSort(0, sizeof($Array)-1);
print_r($obj->getSort());
?>
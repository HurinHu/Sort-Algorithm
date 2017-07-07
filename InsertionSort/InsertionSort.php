<?php
class InsertionSort{
	
	protected $Array;
	
	public function __construct($Array){
		$this->Array = $Array;
	}
	
	private function swap($i, $j){
		$tmp = $this->Array[$j];
		$this->Array[$j] = $this->Array[$i];
		$this->Array[$i] = $tmp;
	}
	public function Sort(){
		for($i = 0; $i < sizeof($this->Array); $i ++){
			$j = $i;
			while($j > 0 && $this->Array[$j-1] > $this->Array[$j]){
				$this->swap($j-1, $j);
				$j = $j-1;
			}
		}
	}
	
	public function getSort(){
		return implode(" ",$this->Array);
	}
}
$input = readline();
$Array = array_map('intval', explode(' ', $input));
$obj = new InsertionSort($Array);
$obj->Sort();
print_r($obj->getSort());
?>
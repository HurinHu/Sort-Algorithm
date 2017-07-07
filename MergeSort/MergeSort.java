import java.util.Scanner;
import java.util.Arrays;

class MergeSort {
	
	private int[] Array;
	private int[] tmp;
	
	public int[] Sort(int[] inputArray){
		this.Array = inputArray;
		this.tmp = new int[inputArray.length];
		MergeSort(0, inputArray.length-1);
		return this.Array;
	}
	
	private void MergeSort(int lo, int hi){
		if(lo < hi){
			int center = (lo + hi)/2;
			MergeSort(lo, center);
			MergeSort(center+1, hi);
			Merge(lo, center, hi);		
		}
	}
	
	private void Merge(int lo, int center, int hi){
		tmp = Array.clone();
		int i = lo;
		int j = center+1;
		int k = lo;
		while(i <= center && j <= hi){
			if(tmp[i] <= tmp[j]){
				Array[k] = tmp[i];
				i++;
			}else{
				Array[k] = tmp[j];
				j++;
			}
			k++;
		}
		while(i <= center){
			Array[k] = tmp[i];
			k++;
			i++;
		}
	}
	
	public String ArrayToString(int[] array){
		String input = "";
		for(int i = 0; i < array.length; i ++){
			input += array[i];
			if(i != array.length-1){
				input += " ";
			}
		}
		return input;
	}
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String[] input = sc.nextLine().split("\\s+");
		int[] inputArray = new int[input.length];
		for(int i = 0; i < input.length; i ++){
			inputArray[i] = Integer.parseInt(input[i]);
		}
		MergeSort obj = new MergeSort();
		inputArray = obj.Sort(inputArray);
		System.out.println(obj.ArrayToString(inputArray));
	}
}
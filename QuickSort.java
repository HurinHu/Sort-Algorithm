import java.util.Scanner;
import java.util.Arrays;

class QuickSort {
	private static int[] inputArray;
	
	private static int Partition(int lo, int hi){
		int pivot = inputArray[hi];
		int i = lo-1;
		int tmp;
		for(int j = lo; j <= hi; j ++){
			if(inputArray[j] <= pivot){
				i ++;
				if(i != j){
					tmp = inputArray[j];
					inputArray[j] = inputArray[i];
					inputArray[i] = tmp;
				}
			}
		}
		return i;
	}
	
	private static void QuickSort(int lo, int hi){
		if(lo < hi){
			int p = Partition(lo, hi);
			QuickSort(lo, p-1);
			QuickSort(p+1, hi);
		}
	}
	
	private static String ArrayToString(int[] array){
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
		inputArray = new int[input.length];
		for(int i = 0; i < input.length; i ++){
			inputArray[i] = Integer.parseInt(input[i]);
		}
		QuickSort(0, inputArray.length-1);
		System.out.println(ArrayToString(inputArray));
	}
}
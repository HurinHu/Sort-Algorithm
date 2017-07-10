import java.util.Scanner;
import java.util.Arrays;

class BubbleSort {
	
	private int[] array;
	
	private void swap(int i, int j){
		int tmp = array[i];
		array[i] = array[j];
		array[j] = tmp;
	}
	
	public BubbleSort(int[] array){
		this.array = array;
		int n = array.length;
		for(int i = 0; i < n; i ++){
			for(int j = 1; j < n-i; j ++){
				if(array[j-1]>array[j]){
					swap(j-1, j);
				}
			}
		}	
	}
	
	public int[] Sort(){
		return array;
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
		int[] inputArray = new int[input.length];
		for(int i = 0; i < input.length; i ++){
			inputArray[i] = Integer.parseInt(input[i]);
		}
		BubbleSort obj = new BubbleSort(inputArray);
		inputArray = obj.Sort();
		System.out.println(ArrayToString(inputArray));
	}
}
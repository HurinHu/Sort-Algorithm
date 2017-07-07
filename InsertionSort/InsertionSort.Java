import java.util.Scanner;
import java.util.Arrays;

class InsertionSort {

	public int[] InsertionSort(int[] array){
		int j;
		int tmp;
		for(int i = 0; i < array.length; i++){
			j = i;
			while(j > 0 && array[j-1] > array[j]){
				tmp = array[j];
				array[j] = array[j-1];
				array[j-1] = tmp;
				j --;
			}
		}
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
		InsertionSort obj = new InsertionSort();
		inputArray = obj.InsertionSort(inputArray);
		System.out.println(ArrayToString(inputArray));
	}
}
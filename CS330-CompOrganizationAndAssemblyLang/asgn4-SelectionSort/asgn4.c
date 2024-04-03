#include<stdio.h>
#include<math.h>

int main(){
    int input[5];
    int i, j;
    //Prompts user to enter values to be stored in an array of length 5.
    printf("Enter values to be stored in an array: \n");
    for(i=0; i<5; i++){
        scanf("%d,", &(input[i]));
    }
    //Prints out old array from user input.
    printf("Old array: ");
    for(j=0; j<5; j++){
        if(j==4){
            printf("%d\n", input[j]);
        }else{
            printf("%d, ", input[j]);
        }
    }

    int n = sizeof(input) / sizeof(input[0]);

    //Comment out each function call to test the functions sorting ability.
    insertionSort(input, n);
    printf("Insertion sort sorted array: ");
    printArray(input, n);

    selectionSort(input, n);
    printf("Selection sort sorted array: ");
    printArray(input, n);

}

/*
    Function used to print array by looping through
    each element and printing value for each.
*/
void printArray(int input[], int n){
    int i; 
    for(i = 0; i < n; i++){
        printf("%d, ", input[i]);
    }
    printf("\n");
}
/*
    Used to sort an array the same way you sort a deck of cards, 
    start from the leftmost element and sort as you traverse to the right.
    Accepts int array and value for size of array.
    Returns void.
*/
void insertionSort(int input[], int n){
    int i, j;
    int target;

    for(i = 1; i < n; i++){
        target = input[i];
        j = i-1;
        /*
            Push elements that are greater than the
            target ahead by one position.
        */
        while(j >= 0 && input[j] > target){
            input[j+1] = input[j];
            j = j-1;
        }
        input[j+1] = target;
    }
}
/*
    Sorts an array by scanning each element to the right if that element
    is less than the value of the current element, then you swap them. 
    Accepts an int n and an integer array.
    Returns void.

*/
void selectionSort(int input[], int n){
    int i, j;
    int min;
    for(i = 0; i < n; i++){
        min = i;
        for(j = i+1; j < n; j++){
            if(input[j] < input[min]){
                min = j;
            }
        swap(&input[min], &input[i]);
        }
    }
}

/*
    Function used to swap the first location with the 
    minimum value in the array.
*/
void swap(int *ptr1, int *ptr2){
    int temp = *ptr1;
    *ptr1 = *ptr2;
    *ptr2 = temp;
}
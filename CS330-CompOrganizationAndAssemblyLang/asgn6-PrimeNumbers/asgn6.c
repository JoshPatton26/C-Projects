#include <stdio.h>
#include <stdbool.h>

//Declaring my functions
bool calcPrimes(int);

int main(){
    //Initialzing my variables, n for user input, i for for loop.
    int n, i;
    //Get user input & store it with scan statement.
    printf("\nEnter a positive integer: ");
    scanf("%d", &n);
    //Function call to determine whether a number is prime.
    calcPrimes(n);
    //Loops from 0 to user input printing every number that is prime from 2 to n.
    for(i = 0; i <= n; i++){
        if(calcPrimes(i)){
            printf("\n%d", i);
        }
    }
    //Adds extra line for better clarity.
    printf("\n");

    return 0;
}
/*
    Spoke with John (The TA) and he said it was
    okay to use a boolean return value.

    Function that accepts an integer and determines
    wether that integer is prime. Returns a
    boolean value.
*/
bool calcPrimes(int n){
    //Base cases for 1 and 2.
    if(n <= 1)
        return false;
    else if(n == 2)
        return true;
    //Not sure why but my function kept reading 4 as prime.
    //Adding this base case fixed that issue.
    else if(n == 4)
        return false;   
    int i;
    //Iterates through 3 to n testing wether n is prime or not.
    for(i = 3; i < n; i++){
        if(n % i == 0){
            return false;
        }
    }
    return true;
}

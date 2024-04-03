#include <stdio.h>
#include <math.h>
#include <stdbool.h>

//function declarations
void cubeOfOdd(int);
void introToCS330(int);
void printHello(int);
bool powerOf2(int);
float paintGallons(float, float, float);
void grader(float, float, int);


/*Main function
    Contains all function calls and all user input
*/
int main(){
    int input, att;
    float exam, hw, l, w, h;

    //Get user input for cubeOfOdd function
    printf("\n Enter an integer: ");
    scanf("%d", &input);
    cubeOfOdd(input);

    //Get user input for introToCS330 function
    printf("\n Enter a positive integer: ");
    scanf("%d", &input);
    introToCS330(input);

    //Get user input for printHello function
    printf("\n Enter a positive integer: ");
    scanf("%d", &input);
    printHello(input);

    //Get user input for paintGallons function
    printf("\n Enter the length of the room in sq/ft: ");
    scanf("%f", &l);
    printf("\n Enter the width of the room in sq/ft: ");
    scanf("%f", &w);
    printf("\n Enter the height of the room in sq/ft: ");
    scanf("%f", &h);
    float totalPaint = paintGallons(l, w, h);
    double result = ceil(totalPaint);
    printf("\n %.2f Gallons of paint ", result);

    //Get user input for grader function
    printf("\n Enter your exam average: ");
    scanf("%f", &exam);
    printf("\n Enter your homework average: ");
    scanf("%f", &hw);
    printf("\n Enter your attendance: ");
    scanf("%d", &att);
    grader(exam, hw, att);   
    return 0;
}
/*Accepts int
    Prints every odd number cubed <= n
    Returns void
*/
void cubeOfOdd(int n){
    int i = 1;
    while(i < n){ 
        int cube = (i * i * i);      
        printf("\n %d", cube);
        i = i + 2;
    }
    return;
}
/*Accepts integer
    Prints according to critera below
    Returns void
*/
void introToCS330(int n){
    if(n <= 0){
        printf("\n This is not a postive number. Please enter a positive integer: \n");
        n = scanf("%d", &n);
    }else if(n % 3 == 0){
        printf("\n CS");
    }else if(n % 7 == 0){
        printf("\n UAB");
    }else if(n % 3 == 0 && n % 7 == 0){
        printf("\n UAB CS 330");
    }else if(n % 2 == 0){
        printf("\n Go Blazers");
    }else{
        int cube = (n*n*n);
        printf("\n %d", cube);
    }
    return;
}

/*Accepts an integer
    Prints HELLO for every power of 2 <= n
    Returns void
*/
void printHello(int n){
    int i;
    for(i = 0; i <= n; i++){
        if(powerOf2(i)){
            printf("HELLO");
        }else{
            printf("%d", i);
        }
    }
    return;
}

/*Finds powers of two and gets the amount of 0's
    accepts int 
    returns boolean
*/
bool powerOf2(int n){
    if (n==0){
        return false;
    }
    while(n != 1){
        if(n % 2 != 0){
        return false;
        }
        n = n/2;
    }
    return true;
}

/*Accepts two floats and an integer 
    calculates how much pain is required
    returns float
*/
float paintGallons(float l, float w, float h){
    int wall1 = (l * h) * 2;
    int wall2 = (w * h) * 2;
    int ceil = (l * w);
    int area = (wall1 + wall2 + ceil);
    float total = area / 400;
    return total;
}

/*Accepts two floats and an integer
    Calculates students grades
    Returns void
*/
void grader(float avg_exams, float avg_hw, int attendance){
    if(attendance < 20){
        printf("\n FAIL \n");
    }
    while(attendance >= 20){
        if((avg_exams > 70 && avg_hw > 70) && (avg_exams > 85 || avg_hw > 85)){
            printf("\n PASS \n");
        }else{
            printf("\n FAIL \n");
        }
        break;
    }

return;
}
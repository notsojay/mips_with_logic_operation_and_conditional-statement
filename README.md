# logic_operation_and_conditional-statement
1. Complete swap_bits function which swaps bits at odd and even positions of an integer (32 bits). In other words, every odd position bit is swapped with the adjacent bit on the right side, and every even position bit is swapped with the adjacent on the left side. For instance, bits 0 and 1 are swapped, bits 2 and 3 are swapped, ..., and bits 30 and 31 are swapped. It is NOT recommended to use loops or conditional statements for this part.
Example: if the given number is 23 (00010111), it should be converted to 43 (00101011). Note this example, we only use the lower 8 bits of a number, but your program will work on 32-bit numbers. 
 Your input is in the function argument register, $a0. Place the result in the function return register, $v0, at the end of your function.


2. Complete triple_range function. This function takes three parameters,  it finds the smallest and the largest numbers and multiplies their sum by three and returns the result.
Example: if the given numbers are 30, -999 and 999. -999 would be the smallest, and 999 the largest. The result would be 3*(999-999), then 0.
Your inputs are in the function argument registers, $a0, $a1, and $a2. Place the result in the function return register, $v0, at the end of your function.

3.Complete determinant function. You are given a 2x2 matrix, and each element {a, b, c, d} is a 16-bit signed integer. The elements, a and b, are placed individually in higher and lower 16 bits of the function argument register, $a0. And the elements, c and d, are in $a1. (See the following figure.)
![image](https://user-images.githubusercontent.com/71242774/219775806-b5ca067e-124c-4667-a9b6-352fe6af0856.png)
![image](https://user-images.githubusercontent.com/71242774/219775886-800b6bb3-8473-45b4-8cb7-58531b5de0e7.png)
![image](https://user-images.githubusercontent.com/71242774/219775930-b6668bcc-9687-4d89-a13f-626df37eb790.png)
Calculate the determinant of the given 2x2 matrix. 
For example, ![image](https://user-images.githubusercontent.com/71242774/219775982-fe635357-4d2f-4023-907b-2575aa49fe13.png)
, det A = (1)*(4)-(2)*(3) = -2
Your inputs are in the function argument registers, $a0 and $a1. Place the result in the function return register, $v0, at the end of your function.

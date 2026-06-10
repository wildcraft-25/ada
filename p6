#include <stdio.h>
void main()
{
 int n, i,j, W;
 
 printf("Enter the number of items: ");
 scanf("%d", &n);
 
 int w[n], v[n];
 
 printf("Enter the items weights: ");
 for (i = 0; i < n; i++)
 scanf("%d", &w[i]);
 printf("Enter the items values or profits: ");
 for (i = 0; i < n; i++)
 scanf("%d", &v[i]);
 printf("Enter the maximum capacity: ");
 scanf("%d", &W);
 int V[n+1][W+1];
 for (i = 0; i <= n; i++)
 {
 for (j = 0; j <= W; j++)
 {
 if (i == 0 || j == 0)
 V[i][j] = 0;
 else if ((j-w[i-1])>=0) 
 V[i][j] = (v[i-1] + V[i-1][j-w[i-1]] > V[i-1][j]) ? (v[i-1] + V[i-1][j-w[i- 1]]) V[i-1][j];
 else
 V[i][j] = V[i-1][j];
 }
}
 printf("The maximum value or profit is: %d\n", V[n][W]);
}
Output:
Enter the number of items: 4
Enter the items weights: 1 3 5 7
Enter the items values or profits: 2 4 7 10
Enter the maximum capacity: 8
The maximum value or profit is: 12

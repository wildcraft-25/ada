#include <stdio.h>
void main() 
{
 int i, j, n, source, count, min, u = 0;
 int cost[10][10];
 int dist[10];
 int visited[10];
 
 printf("enter no. of vertices\n");
 scanf("%d", &n);
 
 printf("enter cost matrix\n");
 for (i = 0; i <n; i++)
 for (j = 0; j <n; j++)
 scanf("%d", &cost[i][j]);
 
 printf("enter source node\n");
 scanf("%d", &source);
 
 for (i = 0; i <n; i++)
 dist[i] = cost [source][i];
 
 for (i = 1; i <= n; i++)
 visited[i] = 0;
 
 dist[source] = 0;
 visited[source] = 1;
 count = 1;
 
 while (count != n) 
{
 min = 999;
 for (i = 0; i < n; i++) 
 {
 if (dist[i] < min && visited[i] != 1) 
 {
 min = dist[i];
 u =i;
 }
 }
 visited[u] = 1;
 count++;
 for( j = 0; j < n; j++)
 {
 if (min + cost[u][j] < dist[j] && visited[j] != 1)
 dist[j] = min + cost[u][j];
 }
 }
 
 printf("Shortest distance is\n");
 for (i = 0; i< n; i++)
 printf("%d---->%d the distance is%d\n", source, i, dist[i]);
 
}
Output:
 
Enter no. of vertices
6
Enter cost matrix
0 3 999 8 999 999
3 0 999 5 6 999
999 999 0 999 9 3
8 5 999 0 3 2 
999 6 9 3 0 1
999 999 3 2 1 0
Enter source node
0
Shortest distance is
0---->0 the distance is0
0---->1 the distance is3
0---->2 the distance is13
0---->3 the distance is8
0---->4 the distance is9
0---->5 the distance is10

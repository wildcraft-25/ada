# include<stdio.h>
int count =0, d,i,n,total;
int w[10], x[10];
void subset(int wt, int k,int total)
{
 x[k]=1;
 if(wt+w[k]==d)
 {
 printf("\n Subset %d \n", ++count);
 for(i=0;i<=k;i++)
 {
 if(x[i]==1)
 printf("%d \t", w[i]);
 }
 }
 else if( wt+w[k]+w[k+1] <=d )
 subset(wt+w[k],k+1, total-w[k]);
 
if((wt+total-w[k]>=d) && (wt+w[k]<=d))
 { 
 x[k]=0;
 subset(wt,k+1,total-w[k]);
 }
 } 
 
 
void main()
{
 
 printf("\n Enter the number of items");
 scanf("%d",&n);
 
 printf("\n Enter the elements of the set ");
 for (i=0;i<n;i++)
 scanf("%d", &w[i]);
 
 printf("\n Enter the sum d");
 scanf("%d",&d);
 
 for(i=0;i<n;i++)
 x[i]=0;
 
 for(i=0;i<n;i++)
 total=total+w[i];
 
 if(total < d)
 printf("\n solution not possible");
 else
 {
 subset(0,0,total);
 if(count==0)
 printf("\n solution not possible");
 }
 
}

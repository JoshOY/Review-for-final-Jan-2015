 #include <stdio.h>
 #include <stdlib.h>
 #include <math.h>
 #define MAX 6
 
int main()
{
    double s[MAX];
    int i,k;
    double var ;
    for (i = 1; i MAX; i++)
        s[i] = 1;
 
    for (k=1; k MAX; k++)
    {
        for (i=1; i =k; i++)
        {
            if (i==1)
            {
                var = s[i];
                s[i] = Trap(0, 1, pow(2, k-1));      // sub-routine Trap
            }                                        // integrated from 0 and 1
                                                     // pow() is the number of subdivisions
            else
            {
                s[k]= ( pow(4 , i-1)s[i-1]-var )(pow(4, i-1) - 1); 
 
                var = s[i];
                s[i]= s[k];  
            }
            printf (  %f  , s[i]);
        }
        printf (n);
    }
 
    return 0;
}
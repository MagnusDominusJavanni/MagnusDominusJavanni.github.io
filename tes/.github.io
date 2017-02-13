<!DOCTYPE html>
<html>

  <head>
    #include <conio.h>
#include <stdio.h>
#include <malloc.h>
 
int main()
{
    size_t n, i, j;
    printf("Enter the space dimension\n");
    scanf("%u", &n);
    double* mas[2];
    for (i = 0; i < 2; ++i)
    {
        mas[i] = (double*)realloc(NULL, sizeof(double) * n);
        printf("Enter the vector %u\n", i + 1);
        for (j = 0; j < n; ++j)
            scanf("%lf", &mas[i][j]);
    }
    double S = 0;
    for (i = 0; i < n; ++i)
        S += mas[0][i] * mas[1][i];
    printf("Scalar product %lf\n", S);
    getch();
    for (i = 0; i < 2; ++i)
        mas[i] = (double*)realloc(mas[i], NULL);
    return 0;
}
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
  </head>

  <body>
  </body>

</html>

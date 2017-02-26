
- GLRect*
- glbegin(GL_POLYGON)
- glbegin(GL_TRIANGLES)
- glbegin(GL\_TRIANGLE_STRIP)

######跟着下面的三个点必须是逆时针的顺序。第n个点，那么三角形的顺序是n,n+1,n+2或者n+1,n,N+2。根据n的奇偶性来判断，保证是逆时针的
- glbegin(GL\_TRIANGLE_FAN)

- glbegin(GL_QUADS)

四个点必须是逆时针的  
- glbegin(GL\_QUAD_STRIP)

对于N个点，可以得到N/2-1个四边形。假设n=1,2,...N/2-1。第n个四边形的顶点顺序是2n-1,2n,2n+2,2n+1。保证是逆时针顺序。
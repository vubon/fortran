! Guass Elimination Method
real    a(10,10),   b(10),      x(10)
print*,  ' Number of equations '
read*,  n
print*, ' Enter coefficient matrix and constant row-wise '
do i=1,n
read*,( a(i,j),  j=1,n),     b(i)
enddo
do  k = 1, n-1
    p=a(k,k)
    if( p .eq. 0.0) then
        print*,     'The system has no solution'
        stop
    endif

    do i= k+1, n
        f= a(i,k)/p
        do j= k+1, n
            a(i,j)=a(i,j)-f*a(k,j)
         enddo
        b(i)=b(i)-f*b(k)
    enddo
    enddo
    x(n)=b(n)/a(n,n)
    do k=n-1, 1, -1
        sum=0.0
        do j= k+1,n
            sum=sum+a(k,j)*x(j)
        enddo
        x(k)=(b(k)-sum)/a(k,k)
    enddo
    print*, 'The Solutions are '
    do j = 1,n
        print*, x(j)
    enddo
    stop
    end

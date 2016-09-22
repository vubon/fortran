print*,"Enter a positive number:"
read*,n
if(n .eq. 1) then
    print*, n,"is not prime"
else
do j= 2, n/2
        if(n/j*j .eq. n) then
            print*,n, ' is not prime'
            print*, 'Divisors are'
        do k= 1,n
            if(n/k*k .eq. n) then
                print*,k
            end if
        enddo
       go to 10
       endif
end do
print*, n,' is prime'
endif
10 end

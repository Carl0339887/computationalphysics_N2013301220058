program 2D_ising_model
implicit none

real(8) :: T
real(8), parameter :: k=1
integer(4) :: n
real(8) :: s,summ,Mag
integer(4) :: i,j,l,r,iT
real(8), allocatable :: a(:,:),b(:,:),m(:)
real(8) :: Eflip,e1,e2,Sd,bar
double precision :: ran, genrand_real2
integer(4) :: seed
integer(4) :: warm,loop
integer(4) :: measure

n=10
s=1
warm=1000
measure=5000

open(12,file='ET.dat')
open(11,file='integral_EnergyData')
!open(10,file='Mag.dat')
allocate ( a(n,n) )
allocate ( b(n,n) )
allocate ( m(measure) )
seed = 123333
! call random_seed(seed)    ! FORTRAN
 call init_genrand(seed)     ! MT19937


do iT = 1,50,1
e1=0
e2=0

Sd=0
bar=0
summ=0
m=0
T=0.1*iT

do i=1,n
   do j=1,n
!      call random_number(x)    ! FORTRAN
    ran = genrand_real2()         ! MT19937
     if(ran<0.5) then 
       a(i,j)=s
     else 
       a(i,j)=-s
     end if
   enddo
enddo

!call print_array(a,n)

do i=1,n
  do j=1,n
   b(i,j)=a(i,j)
  enddo
enddo

r=1
do l=1,warm+measure

 do i=1,n
  do j=1,n
!     call random_number(x)   ! FORTRAN
     ran = genrand_real2()         ! MT19937
     b(i,j)=-a(i,j)
     call energy(b,n,summ)
     e2=-summ
     call energy(a,n,summ) 
     e1=-summ
     Eflip=e2-e1
   
     if(exp(-Eflip/k/T)<ran) b(i,j)=-b(i,j)
    
     a(i,j)=b(i,j)
  enddo
 enddo
 !call energy(b,n,summ)
! write(*,*)l,summ/1000
! write(12,'(1I4,4x,1f8.4)') l, summ/1000

if (l.gt.warm) then
   call energy(b,n,summ)
   m(r)=-summ
   r=r+1
endif

enddo



bar=sum(m)/n/n/measure

do i=1,measure
   Sd=Sd+(m(i)/n/n-bar)*(m(i)/n/n-bar)
enddo
Sd=sqrt(Sd/(measure-1)/measure)
call print_array(b,n)

Mag=sum(b)/n/n
if (Mag<0) Mag = -Mag 
write(*,*) T,bar,Sd,Mag
write(12,'(1f10.5,4x,1f10.5)') bar,Sd
write(11,'(1f10.5)') bar
!write(10,'(1f10.5,4x,1f10.5)') T,Mag
enddo ! iT

deallocate (a,b,m)

close(12)
close(11)
!close(10)
stop
end program 2D_ising_model
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



subroutine print_array(array,dims)
implicit none

integer(4), intent(inout) :: dims
real(8), intent(inout) :: array(dims,dims)
integer(4) :: i,j

do i=1,dims
  do j=1,dims
    if (j<dims) then
      write(*,'(1x,f5.2)',advance='no') array(i,j)
    else
      write(*,'(1x,f5.2)') array(i,j)
    endif
  enddo
enddo

end subroutine print_array

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

subroutine energy(array1,d,summ)
implicit none

integer i,j
integer(4),intent(inout) :: d
real(8), intent(inout) :: array1(d,d)
real(8) :: summ,array2(d,d)
do i=1,d
   do j=1,d
     if(i>1.and.i<d.and.j>1.and.j<d) array2(i,j)=(array1(i-1,j)+array1(i+1,j)+array1(i,j-1)+array1(i,j+1))*array1(i,j)
   enddo
enddo

do j=2,d-1
   array2(1,j)=(array1(1,j-1)+array1(1,j+1)+array1(2,j)+array1(d,j))*array1(1,j)
   array2(d,j)=(array1(d,j-1)+array1(d,j+1)+array1(d-1,j)+array1(1,j))*array1(d,j)
enddo

do i=2,d-1
   array2(i,1)=(array1(i,d)+array1(i,2)+array1(i-1,1)+array1(i+1,1))*array1(i,1)
   array2(i,d)=(array1(i,d-1)+array1(i,1)+array1(i-1,d)+array1(i+1,d))*array1(i,d)
enddo

array2(1,1)=(array1(1,d)+array1(1,2)+array1(d,1)+array1(2,1))*array1(1,1)
array2(1,d)=(array1(1,d-1)+array1(1,1)+array1(2,d)+array1(d,d))*array1(1,d)
array2(d,1)=(array1(d,d)+array1(d,2)+array1(1,d)+array1(d-1,1))*array1(d,1)
array2(d,d)=(array1(d,d-1)+array1(d,1)+array1(d-1,d)+array1(1,d))*array1(d,d)

!call print_array(array2,d)

summ=0
 do i=1,d
  do j=1,d
          summ=summ+array2(i,j)
  enddo
 enddo
summ=summ/2.0
return 
end subroutine energy



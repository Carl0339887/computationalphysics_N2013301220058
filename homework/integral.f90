program integral
implicit none

real(8),parameter :: width=0.1,entropy_inf=0.69314
real(8),allocatable :: energy_sample(:),C(:),T(:),entropy(:),F(:)
real(8) :: summ=0, S, summ1
integer(4) :: num=112,i,j,n=10

allocate ( energy_sample(num) )
allocate ( C(num-1) )
allocate ( T(num) )
allocate ( entropy(num) )
allocate ( F(num) )
open(11,file='Exact_integral_EnergyData')
read(11,"(F20.16)") energy_sample

open(22,file='heat_capacity.dat')
open(23,file='entropy.dat')
open(33,file='Free_energy.dat')
do i=1,num
    T(i)=0.1*i
enddo

!do i=1,num
!   summ=summ+2*energy_sample(i)
!enddo
!S=(summ-energy_sample(1)-energy_sample(num))*width
!write(*,*) 'I =',S


do i=1,num-1
 summ=0
  do j=i,num-1
    summ=summ+(energy_sample(j)/T(j)/T(j)+energy_sample(j+1)/T(j+1)/T(j+1))/2*width
  enddo
  entropy(i)=entropy_inf-summ+energy_sample(i)/T(i)
enddo

do i=1,num-1
        write(23,'(1f10.5,4x,1f10.5)') T(i), entropy(i)

enddo
!do i=1,num
!    write(*,*)'ss',T(i) ,energy_sample(i)/T(i)/T(i)
!enddo

do i=1,num-1
 C(i)=(energy_sample(i+1)-energy_sample(i))/width
!write(*,*) i*0.1,C(i)
write(22,'(1f10.5,4x,1f10.5)') T(i),C(i)
enddo

do i=1,num-1
    F(i)=energy_sample(i)-T(i)*entropy(i)
    write(33,'(1f10.5,4x,1f10.5)') T(i),F(i)
enddo

close(11)
close(22)
close(23)
close(33)
deallocate(energy_sample,C,T,entropy,F)




end




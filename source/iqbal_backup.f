      subroutine iqbal
      implicit none
      include 'sizes.i'
      include 'atoms.i'
      real*8 na,nb,nc
      print *,"(1>>>>>>>>>>>>>>>>"
c      print *,"x==========>",x(0)
      print *,"x==========>",x(1)
      print *,"x==========>",x(2)
      open (unit=21,file="indices.txt", status="old")
      do while(1.EQ.1)
         read(21,*, end=200) na, nb, nc
         print *, "na=",na," nb=",nb," nc=",nc
      end do
  200 CONTINUE
      print *,"(2>>>>>>>>>>>>>>>>"
      print *, "na=",na," nb=",nb," nc=",nc
      print *,"hello iqbal"
      end



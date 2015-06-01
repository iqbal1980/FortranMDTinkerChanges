      subroutine iqbal
      implicit none
      include 'sizes.i'
      include 'atoms.i'
      include 'iqbalvars.i'
      integer atom_index
      integer donnor_type
      integer counter
      real*8 tmpcuttoffvar
c allocatable ::
c      integer da_atoms(50)
c      character*1 da_type(50)
      integer, allocatable,target :: da_atoms_tmp(:)
      integer, allocatable,target :: da_atoms_tmz(:)

      print *,"(1>>>>>>>>>>>>>>>>"
      print *,"x==========>",x(1)
      print *,"x==========>",x(2)
      print *,"n==========>",n

      allocate (da_atoms_tmp(n))
      allocate (da_atoms_tmz(n))

c      allocate (da_atoms(n))
c      allocate (da_atoms(n))

      print *,"enter cuttoff distance in armstrons"
      read *, tmpcuttoffvar
      charge_exchange_cutoff = tmpcuttoffvar
      counter = 1
      open (unit=21,file="indices.txt", status="old")
      do while(1.EQ.1)
         read(21,*, end=200) atom_index, donnor_type
         da_atoms_tmp(counter) = 0
         da_atoms_tmz(counter) = 8
         counter = counter + 1
c         write (*,345) atom_index, donnor_type
c  345    format (/,' atom_index ==',i1,
c     &           ' donnor_type == ',1i1)
      end do
  200 CONTINUE
c      print *,"(2>>>>>>>>>>>>>>>>"
c      print *, "na=",na," nb=",nb," nc=",nc
c      print *,"hello iqbal"

       close (21)
       da_atoms => da_atoms_tmp
       da_atomz => da_atoms_tmz

       print *,"da_atoms === ", da_atoms
       print *,"da_atomz === ", da_atomz
      end



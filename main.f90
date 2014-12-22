program main
    use double
    use stoichiometry
    implicit none

    integer :: k,l
    integer, parameter :: MATRIXSIZE=5000
    real(kind=dp),dimension(MATRIXSIZE,MATRIXSIZE) :: hilb=0_dp

    ! construct a hilbert matrix
    do k=lbound(hilb,1),ubound(hilb,1)
        do l=lbound(hilb,2),ubound(hilb,2)
            hilb(k,l)=1._dp/(k+l-1)
        end do
    end do

    ! lets print the result
    print *, hilb(1,4)
end program main

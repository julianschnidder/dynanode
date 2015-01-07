module double
    implicit none
    integer, parameter :: dp=kind(0d0)
    integer, parameter :: qp=selected_real_kind(2*dp)
end module double

module stoichiometry
    use double
    use matrix
    implicit none
    
    type reactant
    end type reactant
    
    type reaction
        integer :: num
        character :: representation
        type(reactant) :: input
        type(reactant) :: output
    end type
end module stoichiometry

function [ vValueRight32 ] = fF( vValueRight32, vKeyI48 )
%FF process function f
    vValueRight48  = fFExpansionPermutation( vValueRight32 );
    vValueRight48  = fFXor( vValueRight48, vKeyI48 );
    vValueRight32  = fFSBoxSubstitution( vValueRight48 );
    vValueRight32  = fFPBoxPermutation( vValueRight32 );
end


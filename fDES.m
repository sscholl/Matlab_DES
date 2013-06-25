function [ vBlockEncrypted64 ] = fDES ( vBlock64, vKey64 )
%FDES Summary of this function goes here
%   Detailed explanation goes here
%initial Permutation
    [ vValueLeft32, vValueRight32 ] = fInitalPermutation( vBlock64 );
    
    for i = 1:16
        [ vValueLeft32, vValueRight32 ] = fRound( i, vValueLeft32, vValueRight32, vKey64 );
    end
    vBlockEncrypted64 = fFinalPermutation( vValueLeft32, vValueRight32 );
end


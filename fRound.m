function [ vNewValueLeft32, vNewValueRight32 ] = fRound( iRoundNumber, vValueLeft32, vValueRight32, vKey64 )
%FROUND process a round
    vNewValueLeft32 = vValueRight32;

    %gen random key
    %vKey64 = rand(1,64)<=50/100
    
    %calculate round key
    vKey56 = fKeyPermutation( vKey64 );
    [vKeyX28, vKeyY28 ] = fKeyShift( vKey56, iRoundNumber );
    vKeyI48 = fKeyCompressPermutation( vKeyX28, vKeyY28 );
    
    %process f function and xor
    vValueRight32 = fF( vValueRight32, vKeyI48 );
    vNewValueRight32 = xor(vValueRight32, vValueLeft32);
end


function [  ] = fTest(  )
%XTEST TEST
    %test with http://people.eku.edu/styere/Encrypt/JS-DES.html
    
    %define Block
    %Hex value: 0123456789abcdef  
    vBlock64 = [0 0 0 0 0 0 0 1 0 0 1 0 0 0 1 1 0 1 0 0 0 1 0 1 0 1 1 0 0 1 1 1 1 0 0 0 1 0 0 1 1 0 1 0 1 0 1 1 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 1];
    mBlock8_8 = reshape(vBlock64, 8,[])'
    %define Key
    %Hex value: 3b3898371520f75e
    vKey64   = [0 0 1 1 1 0 1 1 0 0 1 1 1 0 0 0 1 0 0 1 1 0 0 0 0 0 1 1 0 1 1 1 0 0 0 1 0 1 0 1 0 0 1 0 0 0 0 0 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0];
    mKey8_8 = reshape(vKey64, 8,[])'
  
    vBlockEncrypted64 = fDES(vBlock64, vKey64);
    mBlockEncrypted8_8 = reshape(vBlockEncrypted64, 8,[])'
end


function [ vValueRight48 ] = fFExpansionPermutation( vValueRight32 )
%FFEXPANSIONPERMUTATION expand by right side of block
    %append values coulum-wise
    %vValueRight32([32,4:4:28])' -> append first coulum to get values 32
    %and every 4. value from 4 to 28 (4,8,12,16,20,24,28), change 
    %orientation from row vector to coulmn vector
    %(reshape(vValueRight32,4,8))' -> create 4x8 matrix by 32-value-vector, change 
    %orientation of the matrix
    %vValueRight32([32,4:4:28])' -> do the same like in the first step
    %reshape(!MATRIX!, 48, 1)'; -> reshape to row vector
    vValueRight48 = reshape([vValueRight32([32,4:4:28])',(reshape(vValueRight32,4,8))',vValueRight32([5:4:29,1])']', 48, 1)';
end


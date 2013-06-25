function [ vNewValueRight32 ] = fFPBoxPermutation( vValueRight32 )
%FPBOXPERMUTATION permutates by given permuations vector
    vPBoxPermutation32 = [  16  7	20	21	29	12	28	17 ... 
                            1	15	23	26	5	18	31	10 ...
                            2	8	24	14	32	27	3	9 ...
                            19	13	30	6	22	11	4	25];
                        
    %shift key by permuation vector (index: destination, value: source)
	for i=1:32
        vNewValueRight32(i) = vValueRight32(vPBoxPermutation32(i));
    end
end

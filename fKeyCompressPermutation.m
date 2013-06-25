function [ vKeyI48 ] = fKeyCompressPermutation( vKeyX28, vKeyY28 )
%FKeyKOMPRESSIONSPERMUTATION compress key from 2 appended 28 bit halves to 
%48 bit key by permutation vector
	%define compress permutation vector
    vCompressPermutation48 = [14	17	11	24	1	5	3	28 ...
                              15	6	21	10	23	19	12	4 ...
                              26	8	16	7	27	20	13	2 ...
                              41	52	31	37	47	55	30	40 ...
                              51	45	33	48	44	49	39	56 ...
                              34	53	46	42	50	36	29	32];
    %append halves
    vKey56 = [vKeyX28 vKeyY28];
    %get the values by permutations vector
	for i=1:48
        vKeyI48(i) = vKey56(vCompressPermutation48(i));
	end
end


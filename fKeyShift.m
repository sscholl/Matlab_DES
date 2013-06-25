function [ vKeyX28, vKeyY28 ] = fKeyShift( vKey56, iRoundNumber )
%FKEYSHIFT shifts the key circular per half, returns shifted halves
    %get key halves
    vKeyX28 = vKey56(1:28);
    vKeyY28 = vKey56(29:56);
    %define shifted positions per round
    vShift = [1 1 2 2 2 2 2 2 1 2 2 2 2 2 2 1];
    iShiftCount = 0;
    %calculate round shift
    for i = 1:iRoundNumber
       iShiftCount = iShiftCount + vShift(i);
    end
    %shift circular
    vKeyX28 = circshift(vKeyX28', -iShiftCount)';
    vKeyY28 = circshift(vKeyY28', -iShiftCount)';
end


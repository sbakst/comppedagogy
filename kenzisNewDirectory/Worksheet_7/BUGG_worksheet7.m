smngLabMembers(2).lab = 'BLAB'
smngLabMembers(2).phdYear = 2017
smngLabMembers(2).smngYears = 2017:2020

sarahsLastYear= smngLabMembers(2).smngYears(end) %The answer I got is 2020! Yay! 
%The second way would be to go through 1, 2, 3 etc until you reach the last
%year. 

SB: Can you think of another way using the 'length' function in just one line? This is a little tricksy.

KB: sarahsLastYear = smngLabMembers(2).smngYears(length(smngLabMembers(2).smngYears));


3. cellArray = expt.listConds
   doubleArray = expo.breakTrials

4. Individual formants are stored in a column and the data points for that formant are in the rows. 
    formant2 = formants(:,2);
    
    formant3 = data(30).formants(:,3)
This does not work because there are not 30 trials. 

5. myStruct = struct('letters', {'a', 'b', 'c'}, 'numbers', [1 2 3], 'trials', [5 6 7 8 9]);


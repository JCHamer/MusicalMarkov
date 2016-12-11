%Set up the 1st order Markov transition matrix that shows the probabilities
%of jumping to each note generated with a straight note frequency computation

A = zeros(4);

A(1,1) = 1/39;	%quarter quarter
A(2,1) = 3/39;	%quarter 8th
A(3,1) = 2/39;	%quarter dotted 8th
A(4,1) = 0/39;	%quarter 16th
A(1,2) = 5/39;	%8th quarter
A(2,2) = 21/39;	%8th 8th
A(3,2) = 1/39;	%8th dotted 8th
A(4,2) = 0/39;	%8th 16th
A(1,3) = 0/39;	%dotted 8th quarter
A(2,3) = 0/39;	%dotted 8th 8th
A(3,3) = 0/39;	%dotted 8th dotted 8th
A(4,3) = 3/39;	%dotted 8th 16th
A(1,4) = 0/39;	%16th quarter
A(2,4) = 3/39;	%16th 8th
A(3,4) = 0/39;	%16th dotted 8th
A(4,4) = 0/39;	%16th 16th

%a 1X1 matrix of random #'s from 7
notes = zeros(4,30);
start = randi(4,1,1);




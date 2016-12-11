%Set up the 1st order Markov transition matrix that shows the probabilities
%of jumping to each note generated with a straight note frequency computation


A = zeros(4);

for i = 1:4
	A(1,i) = 6/57;	%quarter
	A(2,i) = 45/57;	%8th
	A(3,i) = 3/57;	%dotted 8th
	A(4,i) = 3/57;	%16th
end

%a 1X1 matrix of random #'s from 7
notes1 = zeros(4,30);
start = randi(4,1,1);

%Picking Random notes based on Transition Matrix
B = zeros(1,4);

B(1) = 4;
B(2) = 8;
B(3) = -8;
B(4) = 16;

C = A(1:4);
R = randsample(B, 2, true, C);
startMat = zeros(4);

for i = 1:2
    if (R(1,i) == 4) 
        startMat(1,i) = 4;
    end
    if (R(1,i) == 8) 
        startMat(2,i) = 8;
    end
    if (R(1,i) == -8) 
        startMat(3,i) = -8;
    end
    if (R(1,i) == 16) 
        startMat(4,i) = 16;
    end
end




A = zeros(4);

A(1,1) = 1/6;	%quarter quarter
A(2,1) = 3/6;	%quarter 8th
A(3,1) = 2/6;	%quarter dotted 8th
A(4,1) = 0/6;	%quarter 16th
A(1,2) = 5/27;	%8th quarter
A(2,2) = 21/27;	%8th 8th
A(3,2) = 1/27;	%8th dotted 8th
A(4,2) = 0/27;	%8th 16th
A(1,3) = 0/3;	%dotted 8th quarter
A(2,3) = 0/3;	%dotted 8th 8th
A(3,3) = 0/3;	%dotted 8th dotted 8th
A(4,3) = 3/3;	%dotted 8th 16th
A(1,4) = 0/3;	%16th quarter
A(2,4) = 3/3;	%16th 8th
A(3,4) = 0/3;	%16th dotted 8th
A(4,4) = 0/3;	%16th 16th

%A 1X1 matrix of random #'s from 7
notes = zeros(4,30);
%start = randi(4,1,1);




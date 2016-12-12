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
notes = zeros(4,30);
start = randi(4,1,1);

%Picking Random notes based on Transition Matrix
B = zeros(1,4);

B(1) = 4;
B(2) = 8;
B(3) = -8;
B(4) = 16;

C = A(1:4);

R = randsample(B, 10, true, C);
transpose(R);

fileID = fopen('output0Durs.txt','w');
fprintf(fileID,'%.0f\n',R);



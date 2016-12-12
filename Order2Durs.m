%Set up the 1st order Markov transition matrix that shows the probabilities
%of jumping to each note generated with a straight note frequency computation

B = zeros(1,4);

B(1) = 4;
B(2) = 8;
B(3) = -8;
B(4) = 16;


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
C = A(1:4);
R = randsample(B, 1, true, C);


A2 = zeros(4);

A(1,1,1) = 0/1; %4 4 4
A(2,1,1) = 0/1; %4 4 8
A(3,1,1) = 1/1; %4 4 dotted8
A(4,1,1) = 0/1; %4 4 6
A(1,2,1) = 0/2; %4 8 4
A(2,2,1) = 1/2; %4 8 8
A(3,2,1) = 1/2; %4 8 dotted8
A(4,2,1) = 0/2; %4 8 6
A(1,3,1) = 0/2; %4 dotted8 4
A(2,3,1) = 0/2; %4 dotted8 8
A(3,3,1) = 0/2; %4 dotted8 dotted8
A(4,3,1) = 2/2; %4 dotted8 6
A(1,4,1) = 0/1; %4 6 4
A(2,4,1) = 0/1; %4 6 8
A(3,4,1) = 0/1; %4 6 dotted8
A(4,4,1) = 0/1; %4 6 6
A(1,1,2) = 1/5; %8 4 4
A(2,1,2) = 3/5; %8 4 8
A(3,1,2) = 1/5; %8 4 dotted8
A(4,1,2) = 0/5; %8 4 6
A(1,2,2) = 5/17; %8 8 4
A(2,2,2) = 12/17; %8 8 8
A(3,2,2) = 0/17; %8 8 dotted8
A(4,2,2) = 0/17; %8 8 6
A(1,3,2) = 0/1; %8 dotted8 4
A(2,3,2) = 0/1; %8 dotted8 8
A(3,3,2) = 0/1; %8 dotted8 dotted8
A(4,3,2) = 1/1; %8 dotted8 6
A(1,4,2) = 0/1; %8 6 4
A(2,4,2) = 0/1; %8 6 8
A(3,4,2) = 0/1; %8 6 dotted8
A(4,4,2) = 0/1; %8 6 6
A(1,1,3) = 0/1; %dotted8 4 4
A(2,1,3) = 0/1; %dotted8 4 8
A(3,1,3) = 0/1; %dotted8 4 dotted8
A(4,1,3) = 0/1; %dotted8 4 6
A(1,2,3) = 0/1; %dotted8 8 4
A(2,2,3) = 0/1; %dotted8 8 8
A(3,2,3) = 0/1; %dotted8 8 dotted8
A(4,2,3) = 0/1; %dotted8 8 6
A(1,3,3) = 0/1; %dotted8 dotted8 4
A(2,3,3) = 0/1; %dotted8 dotted8 8
A(3,3,3) = 0/1; %dotted8 dotted8 dotted8
A(4,3,3) = 0/1; %dotted8 dotted8 6
A(1,4,3) = 0/3; %dotted8 6 4
A(2,4,3) = 3/3; %dotted8 6 8
A(3,4,3) = 0/3; %dotted8 6 dotted8
A(4,4,3) = 0/3; %dotted8 6 6
A(1,1,4) = 0/1; %6 4 4
A(2,1,4) = 0/1; %6 4 8
A(3,1,4) = 0/1; %6 4 dotted8
A(4,1,4) = 0/1; %6 4 6
A(1,2,4) = 0/3; %6 8 4
A(2,2,4) = 3/3; %6 8 8
A(3,2,4) = 0/3; %6 8 dotted8
A(4,2,4) = 0/3; %6 8 6
A(1,3,4) = 0/1; %6 dotted8 4
A(2,3,4) = 0/1; %6 dotted8 8
A(3,3,4) = 0/1; %6 dotted8 dotted8
A(4,3,4) = 0/1; %6 dotted8 6
A(1,4,4) = 0/1; %6 6 4
A(2,4,4) = 0/1; %6 6 8
A(3,4,4) = 0/1; %6 6 dotted8
A(4,4,4) = 0/1; %6 6 6



%A 1X1 matrix of random #'s from 7
notes = zeros(4,30);
%start = randi(4,1,1);

% Number of notes - 1 since you have a starting note
N = 10;
fileID = fopen('output1Durs.txt','w');

for i = 1:N
    if R == -8 
       currentProbab = A2(1:4,3);
    else
       currentProbab = A2(1:4,(R/4));
    end
    transpose(currentProbab);
    R = randsample(B, 1, true, currentProbab);

    fprintf(fileID,'%.0f\n',R);
end

%Set up the 1st order Markov transition matrix that shows the probabilities
%of jumping to each note generated with a straight note frequency computation
fileID = fopen('output2Durs.txt','w');
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

%Picking 1st duration based on 0th order
C = A(1:4);
R1 = randsample(B, 1, true, C);
fprintf(fileID,'%.0f\n',R1);


A2 = zeros(4);

A2(1,1) = 1/6;	%quarter quarter
A2(2,1) = 3/6;	%quarter 8th
A2(3,1) = 2/6;	%quarter dotted 8th
A2(4,1) = 0/6;	%quarter 16th
A2(1,2) = 5/27;	%8th quarter
A2(2,2) = 21/27;	%8th 8th
A2(3,2) = 1/27;	%8th dotted 8th
A2(4,2) = 0/27;	%8th 16th
A2(1,3) = 0/3;	%dotted 8th quarter
A2(2,3) = 0/3;	%dotted 8th 8th
A2(3,3) = 0/3;	%dotted 8th dotted 8th
A2(4,3) = 3/3;	%dotted 8th 16th
A2(1,4) = 0/3;	%16th quarter
A2(2,4) = 3/3;	%16th 8th
A2(3,4) = 0/3;	%16th dotted 8th
A2(4,4) = 0/3;	%16th 16th


% Picking 2nd duration based on 1st order

if R1 == -8 
   currentProbab = A2(1:4,3);
else
   currentProbab = A2(1:4,(R1/4));
end
transpose(currentProbab);
R2 = randsample(B, 1, true, currentProbab);
fprintf(fileID,'%.0f\n',R2);




A3 = zeros(4);

A3(1,1,1) = 0/1; %4 4 4
A3(2,1,1) = 0/1; %4 4 8
A3(3,1,1) = 1/1; %4 4 dotted8
A3(4,1,1) = 0/1; %4 4 6
A3(1,2,1) = 0/2; %4 8 4
A3(2,2,1) = 1/2; %4 8 8
A3(3,2,1) = 1/2; %4 8 dotted8
A3(4,2,1) = 0/2; %4 8 6
A3(1,3,1) = 0/2; %4 dotted8 4
A3(2,3,1) = 0/2; %4 dotted8 8
A3(3,3,1) = 0/2; %4 dotted8 dotted8
A3(4,3,1) = 2/2; %4 dotted8 6
A3(1,4,1) = 0/1; %4 6 4
A3(2,4,1) = 0/1; %4 6 8
A3(3,4,1) = 0/1; %4 6 dotted8
A3(4,4,1) = 0/1; %4 6 6
A3(1,1,2) = 1/5; %8 4 4
A3(2,1,2) = 3/5; %8 4 8
A3(3,1,2) = 1/5; %8 4 dotted8
A3(4,1,2) = 0/5; %8 4 6
A3(1,2,2) = 5/17; %8 8 4
A3(2,2,2) = 12/17; %8 8 8
A3(3,2,2) = 0/17; %8 8 dotted8
A3(4,2,2) = 0/17; %8 8 6
A3(1,3,2) = 0/1; %8 dotted8 4
A3(2,3,2) = 0/1; %8 dotted8 8
A3(3,3,2) = 0/1; %8 dotted8 dotted8
A3(4,3,2) = 1/1; %8 dotted8 6
A3(1,4,2) = 0/1; %8 6 4
A3(2,4,2) = 0/1; %8 6 8
A3(3,4,2) = 0/1; %8 6 dotted8
A3(4,4,2) = 0/1; %8 6 6
A3(1,1,3) = 0/1; %dotted8 4 4
A3(2,1,3) = 0/1; %dotted8 4 8
A3(3,1,3) = 0/1; %dotted8 4 dotted8
A3(4,1,3) = 0/1; %dotted8 4 6
A3(1,2,3) = 0/1; %dotted8 8 4
A3(2,2,3) = 0/1; %dotted8 8 8
A3(3,2,3) = 0/1; %dotted8 8 dotted8
A3(4,2,3) = 0/1; %dotted8 8 6
A3(1,3,3) = 0/1; %dotted8 dotted8 4
A3(2,3,3) = 0/1; %dotted8 dotted8 8
A3(3,3,3) = 0/1; %dotted8 dotted8 dotted8
A3(4,3,3) = 0/1; %dotted8 dotted8 6
A3(1,4,3) = 0/3; %dotted8 6 4
A3(2,4,3) = 3/3; %dotted8 6 8
A3(3,4,3) = 0/3; %dotted8 6 dotted8
A3(4,4,3) = 0/3; %dotted8 6 6
A3(1,1,4) = 0/1; %6 4 4
A3(2,1,4) = 0/1; %6 4 8
A3(3,1,4) = 0/1; %6 4 dotted8
A3(4,1,4) = 0/1; %6 4 6
A3(1,2,4) = 0/3; %6 8 4
A3(2,2,4) = 3/3; %6 8 8
A3(3,2,4) = 0/3; %6 8 dotted8
A3(4,2,4) = 0/3; %6 8 6
A3(1,3,4) = 0/1; %6 dotted8 4
A3(2,3,4) = 0/1; %6 dotted8 8
A3(3,3,4) = 0/1; %6 dotted8 dotted8
A3(4,3,4) = 0/1; %6 dotted8 6
A3(1,4,4) = 0/1; %6 6 4
A3(2,4,4) = 0/1; %6 6 8
A3(3,4,4) = 0/1; %6 6 dotted8
A3(4,4,4) = 0/1; %6 6 6


N = 48;

for i = 1:N 
    if (R1 == -8) && (R2 == -8) 
       currentProbab = A3(1:4,3,3);
    elseif R1 == -8
       currentProbab = A3(1:4,R2/4,3);
    elseif R2 == -8
       currentProbab = A3(1:4,3,R1/4);
    end
    transpose(currentProbab);
    R1 = R2;
    R2 = randsample(B, 1, true, currentProbab);
    fprintf(fileID, '%.0f\n',R2);
end


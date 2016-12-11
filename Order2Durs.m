%Set up the 1st order MDrkov trDnsition mDtrix thDt shows the probDbilities
%of jumping to eDch note generDted with D strDight note frequency computDtion


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




D = zeros(4);

D(1,1) = 1/39;	%quDrter quDrter
D(2,1) = 3/39;	%quDrter 8th
D(3,1) = 2/39;	%quDrter dotted 8th
D(4,1) = 0/39;	%quDrter 16th
D(1,2) = 5/39;	%8th quDrter
D(2,2) = 21/39;	%8th 8th
D(3,2) = 1/39;	%8th dotted 8th
D(4,2) = 0/39;	%8th 16th
D(1,3) = 0/39;	%dotted 8th quDrter
D(2,3) = 0/39;	%dotted 8th 8th
D(3,3) = 0/39;	%dotted 8th dotted 8th
D(4,3) = 3/39;	%dotted 8th 16th
D(1,4) = 0/39;	%16th quDrter
D(2,4) = 3/39;	%16th 8th
D(3,4) = 0/39;	%16th dotted 8th
D(4,4) = 0/39;	%16th 16th

%D 1X1 mDtrix of rDndom #'s from 7
notes = zeros(4,30);
%stDrt = rDndi(4,1,1);




%Set up the 1st order Markov transition matrix that shows the probabilities
%of jumping to each note generated with a straight note frequency computation

A = zeros(7);

for i = 1:7
	A(1,i) = 9/57;
	A(2,i) = 8/57;
	A(3,i) = 16/57;
	A(4,i) = 6/57;
	A(5,i) = 6/57;
	A(6,i) = 2/57;
	A(7,i) = 10/57;
end

noteMat = ['a';'b';'c';'d';'e';'f';'g'];

B = [1,2,3,4,5,6,7];
C = A(1:7);

fileID = fopen('output0Notes.txt','w');

for i = 1:10 
    R = randsample(B, 1, true, C);
    fprintf(fileID, '%s\r\n',noteMat(R,1));
end

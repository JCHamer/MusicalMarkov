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

%a 1X1 matrix of random #'s from 7
notes = zeros(7,30);
start = randi(7,1,1);



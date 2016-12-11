%Set up the 1st order Markov transition matrix that shows the probabilities
%of jumping to each note generated with a straight note frequency computation

A = zeros(7);

A(1,1) = 0/9; %a a
A(2,1) = 5/9; %a b
A(3,1) = 0/9; %a c
A(4,1) = 0/9; %a d
A(5,1) = 0/9; %a e
A(6,1) = 0/9; %a f
A(7,1) = 4/9; %a g
A(1,2) = 2/8; %b a
A(2,2) = 0/8; %b b
A(3,2) = 3/8; %b c
A(4,2) = 1/8; %b d
A(5,2) = 0/8; %b e
A(6,2) = 0/8; %b f
A(7,2) = 2/8; %b g
A(1,3) = 2/15; %c a
A(2,3) = 3/15; %c b
A(3,3) = 5/15; %c c
A(4,3) = 3/15; %c d
A(5,3) = 1/15; %c e
A(6,3) = 0/15; %c f
A(7,3) = 1/15; %c g
A(1,4) = 0/6; %d a
A(2,4) = 0/6; %d b
A(3,4) = 2/6; %d c
A(4,4) = 0/6; %d d
A(5,4) = 3/6; %d e
A(6,4) = 0/6; %d f
A(7,4) = 1/6; %d g
A(1,5) = 0/6; %e a
A(2,5) = 0/6; %e b
A(3,5) = 2/6; %e c
A(4,5) = 2/6; %e d
A(5,5) = 0/6; %e e
A(6,5) = 1/6; %e f
A(7,5) = 1/6; %e g
A(1,6) = 0/2; %f a
A(2,6) = 0/2; %f b
A(3,6) = 0/2; %f c
A(4,6) = 0/2; %f d
A(5,6) = 2/2; %f e
A(6,6) = 0/2; %f f
A(7,6) = 0/2; %f g
A(1,7) = 5/10; %g a
A(2,7) = 0/10; %g b
A(3,7) = 4/10; %g c
A(4,7) = 0/10; %g d
A(5,7) = 0/10; %g e
A(6,7) = 1/10; %g f
A(7,7) = 0/10; %g g


A2 = zeros(7);

for i = 1:7
	A2(1,i) = 9/57;
	A2(2,i) = 8/57;
	A2(3,i) = 16/57;
	A2(4,i) = 6/57;
	A2(5,i) = 6/57;
	A2(6,i) = 2/57;
	A2(7,i) = 10/57;
end

%a 1X1 matrix of random #'s from 7
notes = zeros(7,30);
start = randi(7,1,1);

B = [1,2,3,4,5,6,7];
C = A2(1:7);

R = randsample(B, 1, true, C);

N = 10;
fileID = fopen('output1.txt','w');

for i = 1:N
    if R == 1
        currentProbab = A2(1:7,1);
        transpose(currentProbab);
        R = randsample(B, 1, true, currentProbab);
    elseif R == 2
        currentProbab = A2(1:7,2);
        transpose(currentProbab);
        R = randsample(B, 1, true, currentProbab);
    elseif R == 3
        currentProbab = A2(1:7,3);
        transpose(currentProbab);
        R = randsample(B, 1, true, currentProbab);
    elseif R == 4
        currentProbab = A2(1:7,4);
        transpose(currentProbab);
        R = randsample(B, 1, true, currentProbab);
    elseif R == 5
        currentProbab = A2(1:7,5);
        transpose(currentProbab);
        R = randsample(B, 1, true, currentProbab);

        fprintf(fileID,'%.0f\n',R);
    elseif R == 6
        currentProbab = A2(1:7,6);
        transpose(currentProbab);
        R = randsample(B, 1, true, currentProbab);
    elseif R == 7
        currentProbab = A2(1:7,7);
        transpose(currentProbab);
        R = randsample(B, 1, true, currentProbab);
    end
    if R == 1
        fprintf(fileID, '%s\r\n','a');
    elseif R == 2
        fprintf(fileID, '%s\r\n','b');
    elseif R == 3
        fprintf(fileID, '%s\r\n','c');
    elseif R == 4
        fprintf(fileID, '%s\r\n','d');
    elseif R == 5
        fprintf(fileID, '%s\r\n','e');  
    elseif R == 6
        fprintf(fileID, '%s\r\n','f');
    elseif R == 7
        fprintf(fileID, '%s\r\n','g');  
    end
end
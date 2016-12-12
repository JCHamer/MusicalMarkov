%Set up the 1st order Markov transition matrix that shows the probabilities
%of jumping to each note generated with a straight note frequency computation

A = zeros(7);

A(1,1,1) = 0/1; %a a a
A(2,1,1) = 0/1; %a a b
A(3,1,1) = 0/1; %a a c
A(4,1,1) = 0/1; %a a d
A(5,1,1) = 0/1; %a a e
A(6,1,1) = 0/1; %a a f
A(7,1,1) = 0/1; %a a g
A(1,2,1) = 2/5; %a b a
A(2,2,1) = 0/5; %a b b
A(3,2,1) = 3/5; %a b c
A(4,2,1) = 0/5; %a b d
A(5,2,1) = 0/5; %a b e
A(6,2,1) = 0/5; %a b f
A(7,2,1) = 0/5; %a b g
A(1,3,1) = 0/1; %a c a
A(2,3,1) = 0/1; %a c b
A(3,3,1) = 0/1; %a c c
A(4,3,1) = 0/1; %a c d
A(5,3,1) = 0/1; %a c e
A(6,3,1) = 0/1; %a c f
A(7,3,1) = 0/1; %a c g
A(1,4,1) = 0/1; %a d a
A(2,4,1) = 0/1; %a d b
A(3,4,1) = 0/1; %a d c
A(4,4,1) = 0/1; %a d d
A(5,4,1) = 0/1; %a d e
A(6,4,1) = 0/1; %a d f
A(7,4,1) = 0/1; %a d g
A(1,5,1) = 0/1; %a e a
A(2,5,1) = 0/1; %a e b
A(3,5,1) = 0/1; %a e c
A(4,5,1) = 0/1; %a e d
A(5,5,1) = 0/1; %a e e
A(6,5,1) = 0/1; %a e f
A(7,5,1) = 0/1; %a e g
A(1,6,1) = 0/1; %a f a
A(2,6,1) = 0/1; %a f b
A(3,6,1) = 0/1; %a f c
A(4,6,1) = 0/1; %a f d
A(5,6,1) = 0/1; %a f e
A(6,6,1) = 0/1; %a f f
A(7,6,1) = 0/1; %a f g
A(1,7,1) = 2/4; %a g a
A(2,7,1) = 0/4; %a g b
A(3,7,1) = 1/4; %a g c
A(4,7,1) = 0/4; %a g d
A(5,7,1) = 0/4; %a g e
A(6,7,1) = 1/4; %a g f
A(7,7,1) = 0/4; %a g g
A(1,1,2) = 0/2; %b a a
A(2,1,2) = 0/2; %b a b
A(3,1,2) = 0/2; %b a c
A(4,1,2) = 0/2; %b a d
A(5,1,2) = 0/2; %b a e
A(6,1,2) = 0/2; %b a f
A(7,1,2) = 2/2; %b a g
A(1,2,2) = 0/1; %b b a
A(2,2,2) = 0/1; %b b b
A(3,2,2) = 0/1; %b b c
A(4,2,2) = 0/1; %b b d
A(5,2,2) = 0/1; %b b e
A(6,2,2) = 0/1; %b b f
A(7,2,2) = 0/1; %b b g
A(1,3,2) = 1/3; %b c a
A(2,3,2) = 0/3; %b c b
A(3,3,2) = 1/3; %b c c
A(4,3,2) = 0/3; %b c d
A(5,3,2) = 0/3; %b c e
A(6,3,2) = 0/3; %b c f
A(7,3,2) = 1/3; %b c g
A(1,4,2) = 0/1; %b d a
A(2,4,2) = 0/1; %b d b
A(3,4,2) = 1/1; %b d c
A(4,4,2) = 0/1; %b d d
A(5,4,2) = 0/1; %b d e
A(6,4,2) = 0/1; %b d f
A(7,4,2) = 0/1; %b d g
A(1,5,2) = 0/1; %b e a
A(2,5,2) = 0/1; %b e b
A(3,5,2) = 0/1; %b e c
A(4,5,2) = 0/1; %b e d
A(5,5,2) = 0/1; %b e e
A(6,5,2) = 0/1; %b e f
A(7,5,2) = 0/1; %b e g
A(1,6,2) = 0/1; %b f a
A(2,6,2) = 0/1; %b f b
A(3,6,2) = 0/1; %b f c
A(4,6,2) = 0/1; %b f d
A(5,6,2) = 0/1; %b f e
A(6,6,2) = 0/1; %b f f
A(7,6,2) = 0/1; %b f g
A(1,7,2) = 1/2; %b g a
A(2,7,2) = 0/2; %b g b
A(3,7,2) = 1/2; %b g c
A(4,7,2) = 0/2; %b g d
A(5,7,2) = 0/2; %b g e
A(6,7,2) = 0/2; %b g f
A(7,7,2) = 0/2; %b g g
A(1,1,3) = 0/2; %c a a
A(2,1,3) = 1/2; %c a b
A(3,1,3) = 0/2; %c a c
A(4,1,3) = 0/2; %c a d
A(5,1,3) = 0/2; %c a e
A(6,1,3) = 0/2; %c a f
A(7,1,3) = 1/2; %c a g
A(1,2,3) = 0/3; %c b a
A(2,2,3) = 0/3; %c b b
A(3,2,3) = 0/3; %c b c
A(4,2,3) = 1/3; %c b d
A(5,2,3) = 0/3; %c b e
A(6,2,3) = 0/3; %c b f
A(7,2,3) = 2/3; %c b g
A(1,3,3) = 1/4; %c c a
A(2,3,3) = 0/4; %c c b
A(3,3,3) = 0/4; %c c c
A(4,3,3) = 3/4; %c c d
A(5,3,3) = 0/4; %c c e
A(6,3,3) = 0/4; %c c f
A(7,3,3) = 0/4; %c c g
A(1,4,3) = 0/3; %c d a
A(2,4,3) = 0/3; %c d b
A(3,4,3) = 0/3; %c d c
A(4,4,3) = 0/3; %c d d
A(5,4,3) = 3/3; %c d e
A(6,4,3) = 0/3; %c d f
A(7,4,3) = 0/3; %c d g
A(1,5,3) = 0/1; %c e a
A(2,5,3) = 0/1; %c e b
A(3,5,3) = 0/1; %c e c
A(4,5,3) = 1/1; %c e d
A(5,5,3) = 0/1; %c e e
A(6,5,3) = 0/1; %c e f
A(7,5,3) = 0/1; %c e g
A(1,6,3) = 0/1; %c f a
A(2,6,3) = 0/1; %c f b
A(3,6,3) = 0/1; %c f c
A(4,6,3) = 0/1; %c f d
A(5,6,3) = 0/1; %c f e
A(6,6,3) = 0/1; %c f f
A(7,6,3) = 0/1; %c f g
A(1,7,3) = 1/1; %c g a
A(2,7,3) = 0/1; %c g b
A(3,7,3) = 0/1; %c g c
A(4,7,3) = 0/1; %c g d
A(5,7,3) = 0/1; %c g e
A(6,7,3) = 0/1; %c g f
A(7,7,3) = 0/1; %c g g
A(1,1,4) = 0/1; %d a a
A(2,1,4) = 0/1; %d a b
A(3,1,4) = 0/1; %d a c
A(4,1,4) = 0/1; %d a d
A(5,1,4) = 0/1; %d a e
A(6,1,4) = 0/1; %d a f
A(7,1,4) = 0/1; %d a g
A(1,2,4) = 0/1; %d b a
A(2,2,4) = 0/1; %d b b
A(3,2,4) = 0/1; %d b c
A(4,2,4) = 0/1; %d b d
A(5,2,4) = 0/1; %d b e
A(6,2,4) = 0/1; %d b f
A(7,2,4) = 0/1; %d b g
A(1,3,4) = 0/2; %d c a
A(2,3,4) = 1/2; %d c b
A(3,3,4) = 1/2; %d c c
A(4,3,4) = 0/2; %d c d
A(5,3,4) = 0/2; %d c e
A(6,3,4) = 0/2; %d c f
A(7,3,4) = 0/2; %d c g
A(1,4,4) = 0/1; %d d a
A(2,4,4) = 0/1; %d d b
A(3,4,4) = 0/1; %d d c
A(4,4,4) = 0/1; %d d d
A(5,4,4) = 0/1; %d d e
A(6,4,4) = 0/1; %d d f
A(7,4,4) = 0/1; %d d g
A(1,5,4) = 0/3; %d e a
A(2,5,4) = 0/3; %d e b
A(3,5,4) = 2/3; %d e c
A(4,5,4) = 0/3; %d e d
A(5,5,4) = 0/3; %d e e
A(6,5,4) = 1/3; %d e f
A(7,5,4) = 0/3; %d e g
A(1,6,4) = 0/1; %d f a
A(2,6,4) = 0/1; %d f b
A(3,6,4) = 0/1; %d f c
A(4,6,4) = 0/1; %d f d
A(5,6,4) = 0/1; %d f e
A(6,6,4) = 0/1; %d f f
A(7,6,4) = 0/1; %d f g
A(1,7,4) = 0/1; %d g a
A(2,7,4) = 0/1; %d g b
A(3,7,4) = 1/1; %d g c
A(4,7,4) = 0/1; %d g d
A(5,7,4) = 0/1; %d g e
A(6,7,4) = 0/1; %d g f
A(7,7,4) = 0/1; %d g g
A(1,1,5) = 0/1; %e a a
A(2,1,5) = 0/1; %e a b
A(3,1,5) = 0/1; %e a c
A(4,1,5) = 0/1; %e a d
A(5,1,5) = 0/1; %e a e
A(6,1,5) = 0/1; %e a f
A(7,1,5) = 0/1; %e a g
A(1,2,5) = 0/1; %e b a
A(2,2,5) = 0/1; %e b b
A(3,2,5) = 0/1; %e b c
A(4,2,5) = 0/1; %e b d
A(5,2,5) = 0/1; %e b e
A(6,2,5) = 0/1; %e b f
A(7,2,5) = 0/1; %e b g
A(1,3,5) = 0/2; %e c a
A(2,3,5) = 1/2; %e c b
A(3,3,5) = 0/2; %e c c
A(4,3,5) = 0/2; %e c d
A(5,3,5) = 1/2; %e c e
A(6,3,5) = 0/2; %e c f
A(7,3,5) = 0/2; %e c g
A(1,4,5) = 0/2; %e d a
A(2,4,5) = 0/2; %e d b
A(3,4,5) = 1/2; %e d c
A(4,4,5) = 0/2; %e d d
A(5,4,5) = 0/2; %e d e
A(6,4,5) = 0/2; %e d f
A(7,4,5) = 1/2; %e d g
A(1,5,5) = 0/1; %e e a
A(2,5,5) = 0/1; %e e b
A(3,5,5) = 0/1; %e e c
A(4,5,5) = 0/1; %e e d
A(5,5,5) = 0/1; %e e e
A(6,5,5) = 0/1; %e e f
A(7,5,5) = 0/1; %e e g
A(1,6,5) = 0/1; %e f a
A(2,6,5) = 0/1; %e f b
A(3,6,5) = 0/1; %e f c
A(4,6,5) = 0/1; %e f d
A(5,6,5) = 1/1; %e f e
A(6,6,5) = 0/1; %e f f
A(7,6,5) = 0/1; %e f g
A(1,7,5) = 1/1; %e g a
A(2,7,5) = 0/1; %e g b
A(3,7,5) = 0/1; %e g c
A(4,7,5) = 0/1; %e g d
A(5,7,5) = 0/1; %e g e
A(6,7,5) = 0/1; %e g f
A(7,7,5) = 0/1; %e g g
A(1,1,6) = 0/1; %f a a
A(2,1,6) = 0/1; %f a b
A(3,1,6) = 0/1; %f a c
A(4,1,6) = 0/1; %f a d
A(5,1,6) = 0/1; %f a e
A(6,1,6) = 0/1; %f a f
A(7,1,6) = 0/1; %f a g
A(1,2,6) = 0/1; %f b a
A(2,2,6) = 0/1; %f b b
A(3,2,6) = 0/1; %f b c
A(4,2,6) = 0/1; %f b d
A(5,2,6) = 0/1; %f b e
A(6,2,6) = 0/1; %f b f
A(7,2,6) = 0/1; %f b g
A(1,3,6) = 0/1; %f c a
A(2,3,6) = 0/1; %f c b
A(3,3,6) = 0/1; %f c c
A(4,3,6) = 0/1; %f c d
A(5,3,6) = 0/1; %f c e
A(6,3,6) = 0/1; %f c f
A(7,3,6) = 0/1; %f c g
A(1,4,6) = 0/1; %f d a
A(2,4,6) = 0/1; %f d b
A(3,4,6) = 0/1; %f d c
A(4,4,6) = 0/1; %f d d
A(5,4,6) = 0/1; %f d e
A(6,4,6) = 0/1; %f d f
A(7,4,6) = 0/1; %f d g
A(1,5,6) = 0/2; %f e a
A(2,5,6) = 0/2; %f e b
A(3,5,6) = 0/2; %f e c
A(4,5,6) = 1/2; %f e d
A(5,5,6) = 0/2; %f e e
A(6,5,6) = 0/2; %f e f
A(7,5,6) = 1/2; %f e g
A(1,6,6) = 0/1; %f f a
A(2,6,6) = 0/1; %f f b
A(3,6,6) = 0/1; %f f c
A(4,6,6) = 0/1; %f f d
A(5,6,6) = 0/1; %f f e
A(6,6,6) = 0/1; %f f f
A(7,6,6) = 0/1; %f f g
A(1,7,6) = 0/1; %f g a
A(2,7,6) = 0/1; %f g b
A(3,7,6) = 0/1; %f g c
A(4,7,6) = 0/1; %f g d
A(5,7,6) = 0/1; %f g e
A(6,7,6) = 0/1; %f g f
A(7,7,6) = 0/1; %f g g
A(1,1,7) = 0/5; %g a a
A(2,1,7) = 4/5; %g a b
A(3,1,7) = 0/5; %g a c
A(4,1,7) = 0/5; %g a d
A(5,1,7) = 0/5; %g a e
A(6,1,7) = 0/5; %g a f
A(7,1,7) = 1/5; %g a g
A(1,2,7) = 0/1; %g b a
A(2,2,7) = 0/1; %g b b
A(3,2,7) = 0/1; %g b c
A(4,2,7) = 0/1; %g b d
A(5,2,7) = 0/1; %g b e
A(6,2,7) = 0/1; %g b f
A(7,2,7) = 0/1; %g b g
A(1,3,7) = 0/4; %g c a
A(2,3,7) = 1/4; %g c b
A(3,3,7) = 3/4; %g c c
A(4,3,7) = 0/4; %g c d
A(5,3,7) = 0/4; %g c e
A(6,3,7) = 0/4; %g c f
A(7,3,7) = 0/4; %g c g
A(1,4,7) = 0/1; %g d a
A(2,4,7) = 0/1; %g d b
A(3,4,7) = 0/1; %g d c
A(4,4,7) = 0/1; %g d d
A(5,4,7) = 0/1; %g d e
A(6,4,7) = 0/1; %g d f
A(7,4,7) = 0/1; %g d g
A(1,5,7) = 0/1; %g e a
A(2,5,7) = 0/1; %g e b
A(3,5,7) = 0/1; %g e c
A(4,5,7) = 0/1; %g e d
A(5,5,7) = 0/1; %g e e
A(6,5,7) = 0/1; %g e f
A(7,5,7) = 0/1; %g e g
A(1,6,7) = 0/1; %g f a
A(2,6,7) = 0/1; %g f b
A(3,6,7) = 0/1; %g f c
A(4,6,7) = 0/1; %g f d
A(5,6,7) = 1/1; %g f e
A(6,6,7) = 0/1; %g f f
A(7,6,7) = 0/1; %g f g
A(1,7,7) = 0/1; %g g a
A(2,7,7) = 0/1; %g g b
A(3,7,7) = 0/1; %g g c
A(4,7,7) = 0/1; %g g d
A(5,7,7) = 0/1; %g g e
A(6,7,7) = 0/1; %g g f
A(7,7,7) = 0/1; %g g g


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


fileID = fopen('output1Notes.txt','w');
noteMat = ['a';'b';'c';'d';'e';'f';'g'];
B = [1,2,3,4,5,6,7];
C = A2(1:7);
R = randsample(B, 1, true, C);
fprintf(fileID, '%s\r\n',noteMat(R,1));

% Number of notes outputted + 1 (first note is based on 0 ordered matrix)
N = 9;

for i = 1:N
    currentProbab = A(1:7,R);  
    transpose(currentProbab);
    R = randsample(B, 1, true, currentProbab);
    fprintf(fileID, '%s\r\n',noteMat(R,1));
end
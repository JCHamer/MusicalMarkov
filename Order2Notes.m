%Set up the 1st order Markov transition matrix that shows the probabilities
%of jumping to each note generated with a straight note frequency computation

A = zeros(7);

A(1,1) = 0/56; %a a
A(2,1) = 5/56; %a b
A(3,1) = 0/56; %a c
A(4,1) = 0/56; %a d
A(5,1) = 0/56; %a e
A(6,1) = 0/56; %a f
A(7,1) = 4/56; %a g
A(1,2) = 2/56; %b a
A(2,2) = 0/56; %b b
A(3,2) = 3/56; %b c
A(4,2) = 1/56; %b d
A(5,2) = 0/56; %b e
A(6,2) = 0/56; %b f
A(7,2) = 2/56; %b g
A(1,3) = 2/56; %c a
A(2,3) = 3/56; %c b
A(3,3) = 5/56; %c c
A(4,3) = 3/56; %c d
A(5,3) = 1/56; %c e
A(6,3) = 0/56; %c f
A(7,3) = 1/56; %c g
A(1,4) = 0/56; %d a
A(2,4) = 0/56; %d b
A(3,4) = 2/56; %d c
A(4,4) = 0/56; %d d
A(5,4) = 3/56; %d e
A(6,4) = 0/56; %d f
A(7,4) = 1/56; %d g
A(1,5) = 0/56; %e a
A(2,5) = 0/56; %e b
A(3,5) = 2/56; %e c
A(4,5) = 2/56; %e d
A(5,5) = 0/56; %e e
A(6,5) = 1/56; %e f
A(7,5) = 1/56; %e g
A(1,6) = 0/56; %f a
A(2,6) = 0/56; %f b
A(3,6) = 0/56; %f c
A(4,6) = 0/56; %f d
A(5,6) = 2/56; %f e
A(6,6) = 0/56; %f f
A(7,6) = 0/56; %f g
A(1,7) = 5/56; %g a
A(2,7) = 0/56; %g b
A(3,7) = 4/56; %g c
A(4,7) = 0/56; %g d
A(5,7) = 0/56; %g e
A(6,7) = 1/56; %g f
A(7,7) = 0/56; %g g


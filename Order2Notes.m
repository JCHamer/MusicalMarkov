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


% Las bases de recursion se representan como casos
factorial(0, F, F) :- true.
fib(0, [0]).
fib(1, [1,0]).

%Las recurrencias como reglas
factorial(N, A, F):-
    N > 0,
    A1 is N * A,
    N1 is N - 1,
    factorial(N1, A1, F).



fib(N, [R,X,Y|Zs]) :-
    N > 1,
    N1 is N - 1,
    fib(N1, [X,Y|Zs]),
    R is X + Y.

% Todo se resuelve a traves de la logica
male(harry).
male(ron).
male(james).
male(arthur).
female(hermione).
female(ginny).
female(molly).
female(lily).
parent(james, harry).
parent(arthur, ron).
parent(molly, ron).
parent(lily, harry).
parent(arthur, ginny).
parent(molly, ginny).
mother(X, Y) :- 
parent(X, Y), female(X).
father(X, Y) :- 
parent(X, Y), male(X).
son(X, Y) :- 
parent(Y, X), male(X).
daughter(X, Y) :-
parent(Y, X), female(X).
sibling(X, Z):-
mother(Y, X), mother(Y, Z).
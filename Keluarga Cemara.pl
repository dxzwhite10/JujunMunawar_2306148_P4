pria(david).
pria(jack).
pria(john).
pria(ray).
pria(peter).
wanita(amy).
wanita(karen).
wanita(liza).
wanita(susan).
wanita(mary).
menikah(david,amy).
menikah(jack,karem).
menikah(john,susan).
orangTua(david,liza).
orangTua(amy,liza).
orangTua(david,john).
orangTua(amy,john).
orangTua(jack,ray).
orangTua(karen,ray).
orangTua(john,peter).
orangTua(susan,peter).
orangTua(john,mary).
orangTua(susan,mary).

ayah(X,Y) :- pria(X), orangTua(X,Y).
ibu(X,Y) :- wanita(X), orangTua(X,Y).
anak(X,Y) :- orangTua(Y,X).
saudara(X,Y) :- orangTua(Z,X), orangTua(Z,Y),X \= Y.
kakek(X,Y) :- pria(X), orangTua(X,Z), orangTua(Z,Y).
nenek(X,Y) :- wanita(X), orangTua(X,Z), orangTua(Z,Y).
suami(X,Y) :- pria(X), menikah(X,Y).
istri(X,Y) :- wanita(X), menikah(X,Y).


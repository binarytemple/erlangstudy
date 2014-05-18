-module(farf).
-compile(export_all).

farf([H|T]) -> two;
farf([X,Y,Z]) -> tree;
farf([])-> none.

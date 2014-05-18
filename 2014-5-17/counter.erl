-module(counter).
-compile(export_all).

%% A working accumulator

count([]) -> 0;
count([H|T]) -> countacc([H,T],0);
count(_) -> {error,none}.

%% countacc(_,_) -> 1. 
countacc([],Acc) -> Acc; 

%% I had it like below, which was wrong.
%% countacc([_|T],Acc) -> countacc([T], Acc + 1).
countacc([_|T],Acc) -> countacc(T, Acc + 1).

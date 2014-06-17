#!/usr/bin/env escript
%% -*- erlang -*-
%%! -smp enable -sname factorial -mnesia debug verbose
main(_) ->
    try
        Fi = fun(X) -> if  ( X rem 15 == 0 ) -> "fizbuzz\n";
                X rem 3 == 0 -> "fizz\n" ;
                X rem 5 == 0 -> "buzz\n"; 
                true ->  integer_to_list(X) ++ "\n"  
                end 
            end,
        Res = lists:map( Fi , lists:seq(1,100) ),
        io:format("results ~s" , [Res])
    catch
        _:_ ->
        io:format("unknown error") 
    end.

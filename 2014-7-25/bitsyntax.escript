#!/usr/bin/env escript
%% -*- erlang -*-
%%! -smp enable -sname factorial -mnesia debug verbose
main(_) ->
    A = 1, B = 0,
    io:format(" A = 1, B = 0 ~n" , []),
    io:format("<<B,A>> = ~w ~n" , [<<B,A>>]),
    io:format("<<B:4,A:4>> = ~w ~n" , [<<B:4,A:4>>]).

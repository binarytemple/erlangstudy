#!/usr/bin/env escript
%% -*- erlang -*-
%%! -smp enable -sname eredis_example -mnesia debug verbose 

-include("/common/edis/deps/erldis/ebin").

main([String]) ->
    try
        {ok,Client} = erldis:connect(localhost,6379),
        erldis:set(Client,"foo",String ) =:= ok,
        Bar = erldis:get(Client,"foo"),
        io:format("result ~w \n", [Bar])
    catch
        _:_ ->
            usage()
    end;
main(_) ->
    usage().

usage() ->
    io:format("usage: integer\n"),
    halt(1).

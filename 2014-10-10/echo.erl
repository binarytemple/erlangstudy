-module(echo).

-export[server/0].

server() ->
    receive
        {From,Anything} ->
            io:format("from:~p, message:~p ~n",[From,Anything]),
            From ! Anything,
            server()
    end.

-module(farf).
-compile(export_all).


%% API
-export([mail/0]).

main(Input) -> 
    

    try 
    catch
            throw:Term -> Term;
            exit:Reason -> {'EXIT',Reason}
                               error:Reason -> {'EXIT',{Reason,erlang:get_stacktrace()}}
    end


    .


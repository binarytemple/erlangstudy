%%%-------------------------------------------------------------------
%%% @author bryanhunt
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. Jul 2014 14:44
%%%-------------------------------------------------------------------
-module(exceptions).
-author("bryanhunt").

%% API
-export([foo/1,cost/1]).



foo(Coo) ->   throw("blah") .


cost(oranges)   -> 5;
cost(newspaper) -> 8;
cost(apples)    -> 2;
cost(pears)     -> 9;
cost(milk)      -> 7.


wrapit(Baz) ->
  try cost(Baz) of Val -> Val catch _:_ -> <<"Can't read">> ++ Baz ++ <<"\n">> end.

application:set_env(lager,handlers,[
{lager_console_backend,[info,{lager_default_formatter, ConsoleFormat}]}
])
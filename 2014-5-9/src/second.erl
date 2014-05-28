%%%-------------------------------------------------------------------
%%% @author bryan
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. May 2014 14:18
%%%-------------------------------------------------------------------
-module(second).
-author("bryan").

%% API
-export([env_get_var/1]).

env_get_var(Key) ->
Tokens = [ string:tokens(Env,"=") || Env <- os:getenv(),
  ( case string:tokens(Env,"=")  of [Key,_] -> true;  _ -> false end )
],
  case Tokens of [[_,Name]|_]-> Name; _ -> {error,var_not_found,Tokens} end.


%% case Env of ["USER",Value] -> Value  ; _ -> false
%% end],
%%Res  .
  %%case Res of [[Key|Val]] -> Val; Other -> {fail,not_found,Other} end.

%%---
-module(env_utils).

%% API
-export([get_var/1]).

get_var(Key) ->
  Tokens = [ string:tokens(Env,"=") || Env <- os:getenv(),
  ( case string:tokens(Env,"=")  of [Key,_] -> true;  _ -> false end )],
  case Tokens of [[_,Name]|_]-> Name; _ -> {error,var_not_found,Tokens} end.

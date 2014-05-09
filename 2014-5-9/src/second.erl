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
-export([start/0]).

start() ->
  io:fwrite("Hello world ~s !", [  first:foo("foo")  ]).
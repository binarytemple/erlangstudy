%%%-------------------------------------------------------------------
%%% @author bryan
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. May 2014 14:14
%%%-------------------------------------------------------------------
-module(trying).
-author("bryan").

%% API
-export([foo/1]).

safe_binary_to_int(In) -> 
  try 
      erlang:integer_to_binary(a) 
        catch _:_  -> 0  
   after 
       error_logger:error_msg("couldn't parse a ") 
  end. 

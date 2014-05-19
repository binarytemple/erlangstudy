
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
-export([safe_list_to_int/1,
       noisy_safe_list_to_int/1]).

safe_list_to_int(In) -> 
  try 
      erlang:list_to_integer(In) 
        catch _:_  -> 
       error_logger:error_msg(
         "safe_list_to_int: couldn't parse a " ++ In) 
       ,
       0
  end. 


noisy_safe_list_to_int(In) -> 
    try 
      erlang:list_to_integer(In) 
    catch
      throw:Term -> Term;
      exit:Reason -> {'EXIT',Reason};
      error:Reason -> {'EXIT',{Reason,erlang:get_stacktrace()}}
   after 
       error_logger:error_msg("couldn't parse a " ++ In).
       0
  end. 




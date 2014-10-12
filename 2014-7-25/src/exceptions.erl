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
-export([foo/1, cost/1]).



foo(Coo) -> throw("blah").


cost(oranges) -> 5;
cost(newspaper) -> 8;
cost(apples) -> 2;
cost(pears) -> 9;
cost(milk) -> 7.


wrapit(Baz) ->
  try cost(Baz) of Val -> Val catch _:_ -> <<"Can't read">> ++ Baz ++ <<"\n">> end.

%% application:set_env(lager,handlers,[
%% {lager_console_backend,[info,{lager_default_formatter, ConsoleFormat}]}
%% ])


foop() ->
  FindObj =
    fun(Base, SearchBKey) ->

      {ok, Summary} = file:open(Base ++ ".summary", [write]),
      {ok, Dump} = file:open(Base ++ ".dump", [write]),

      Fun = fun(KeyBin, ValBin, TStamp, {_FN, _FTS, Pos, _Sz}, Acc0) ->
        Key = binary_to_term(KeyBin),
        case Key of
          SearchBKey ->
            DT = calendar:now_to_datetime({TStamp div 1000000, TStamp rem 1000000, 0}),
            case ValBin of
              <<"bitcask_tombstone">> ->
                io:format(Summary, "Key: ~p TStamp: ~30.30p Offset ~11b Bitcask Tombstone\n",
                  [Key, DT, Pos]),
                Acc0 + 1;
              _ ->
                {B, K} = Key,
                RObj = riak_object:from_binary(B, K, ValBin),
                IsDeleted = riak_kv_util:is_x_deleted(RObj),
                SibCount = riak_object:value_count(RObj),
                io:format(Summary, "Key: ~p TStamp: ~28.28p Offset ~11b IsDeleted: ~p Siblings: ~p\n",
                  [Key, DT, Pos, IsDeleted, SibCount]),
                io:format(Dump, "~w.\n", [RObj]),
                Acc0 + 1
            end;
          _ ->
            Acc0
        end
      end,
      {ok, FS} = bitcask_fileops:open_file(Base),
      Acc = bitcask_fileops:fold(FS, Fun, 0),
      bitcask_fileops:close(FS),
      io:format("~p matched ~p\n", [Base, Acc]),
      file:close(Dump),
      file:close(Summary)
    end,
  DataFiles = filelib:wildcard("/.data"),


  [FindObj(Base, {<<"bucket-1">>, <<"18">>}) || Base <- DataFiles],
  1
.
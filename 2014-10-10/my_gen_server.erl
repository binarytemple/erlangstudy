-module(my_gen_server).
-behaviour(gen_server).
%% API 
-export([start_link/0]). -export([get_id/0]).
%% gen_server callbacks 
-export([init/1,
handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).
-define(SERVER, ?MODULE).
-record(state, {count}).

get_id() ->
    {id, ID} = gen_server:call(?MODULE, {}), ID.

%%%=================================================================== %%% API %%%===================================================================
start_link() ->
    gen_server:start_link({local, ?SERVER}, ?MODULE, [], []).

init([]) ->
{ok, #state{count= 1 }}.

% revieve a message, and reply
handle_call(Request, From, State) -> 
    io:format("handle_call Request:~p From:~p State:~p~n",[Request, From, State]),
    Count = State#state.count,
    {reply, {id, Count}, #state{count = Count + 1}}.

handle_cast(Msg, State) -> 
    io:format("handle_cast Msg:~p State:~p~n",[Msg,State]),
    {noreply, State}.

handle_info(Info, State) -> 
    io:format("handle_info Info:~p State:~p~n",[Info,State]),
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) -> 
    {ok, State}.

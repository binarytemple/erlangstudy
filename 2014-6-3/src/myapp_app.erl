-module(myapp_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    io:format("start ~w ~w \n", [ _StartType, _StartArgs ]),
    myapp_sup:start_link().

stop(_State) ->
    ok.
-module(creator_app).

-behaviour(application).

%% Application callbacks
-export([start/0, start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start() ->
  start(undefined, undefined),
  ok.

start(_StartType, _StartArgs) ->
  ok.


stop(_State) ->
  ok.

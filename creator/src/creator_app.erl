-module(creator_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
  riak_dt_runner:boot(),
  ok.

stop(_State) ->
  ok.

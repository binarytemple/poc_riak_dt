-module(riak_dt_map_runner).
-author("bryanhunt").

-export([boot/0]).

boot() ->
  lager:start(),
  Map = riak_dt_map:new(),
  lager:log(info, self(), "start ~p ~n", [riak_dt_map:value(Map)]),

  {ok, Items} = riak_dt_orswot:update({add_all, ["foo", "bar", "baz"]}, self(), riak_dt_orswot:new()),

  {ok, Map2} = riak_dt_map:update(
    {update, [
      {update, {"key", riak_dt_lwwreg}, {assign, <<"a">>}}
      ,
      {update, {"key2", riak_dt_orswot}, {add, Items}}
    ]}, self(), Map),
  Value = riak_dt_map:value(Map2),

  lager:log(info, self(), "finished ~p ~n", [Value]),

  lager:log(info, self(), "key2 ~p ~n", [
    map_key("key2", Map2)
  ]),
  lager:log(info, self(), "key ~p ~n", [
    map_key("key", Map2)
  ]),
  ok
.

map_key(Key, Map) ->
  case [X || {{K, _}, X} <- riak_dt_map:value(Map), K==Key] of
    [V | _] -> {ok, V};
    [] -> undefined
  end
.

-module(riak_dt_runner).
-author("bryanhunt").

-export([boot/0]).

boot() ->
  {ok, Obj1} = riak_dt_orswot:update({add, "foo"}, self(), riak_dt_orswot:new()),
  {ok, Obj2} = riak_dt_orswot:update({add_all, ["foo", "bar"]}, self(), riak_dt_orswot:new()),
  Merged = riak_dt_orswot:merge(Obj1, Obj2),
  io:format("Obj1:~p~n", [riak_dt_orswot:value(Obj1)]),
  io:format("Obj2:~p~n", [riak_dt_orswot:value(Obj2)]),
  io:format("Merged:~p~n", [riak_dt_orswot:value(Merged)]),
  {ok,Obj3} = riak_dt_orswot:update({add_all, ["foo", "bar","baz"]}, self(), riak_dt_orswot:new()),
  Merged2 = riak_dt_orswot:merge(Merged,Obj3),
  io:format("val:~p~n", [riak_dt_orswot:value(Merged2)]),

  Bytes = riak_dt_orswot:to_binary(Merged2),

   file:write_file("/tmp/data.dump",Bytes),
%%    lager:msg(info,self(),"finished!"),
  io:format("fooo~n"),
  ok
.

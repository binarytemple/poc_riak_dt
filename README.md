From the creator directory - starting the example, with logging:

```
erl -pa ebin -eval "lager:start(), creator_app:start(undefined, undefined)." -s init stop -noshell -pa ebin -pa deps/riak_dt/ebin -pa deps/lager/ebin -pa deps/goldrush/ebin -config app

```


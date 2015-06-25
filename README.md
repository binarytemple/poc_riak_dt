

From the project root directory starting the example:

```
erl -pa /common/poc_riak_dt/creator/ebin -eval "creator_app:start(undefined, undefined)." -s init stop -noshell -pa ebin -pa creator/deps/riak_dt/ebin
```


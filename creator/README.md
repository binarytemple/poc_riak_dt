


erl -pa /common/poc_riak_dt/creator/ebin -pa /common/poc_riak_dt/creator -pa /common/poc_riak_dt/creator/deps/riak_dt/ebin -pa /common/poc_riak_dt/creator/deps/riak_dt -pa /common/poc_riak_dt/creator/deps/eper/ebin -pa /common/poc_riak_dt/creator/deps/eper -pa /common/poc_riak_dt/creator/deps/lager/ebin -pa /common/poc_riak_dt/creator/deps/lager -pa /common/poc_riak_dt/creator/deps/goldrush/ebin -pa /common/poc_riak_dt/creator/deps/goldrush -pa /common/poc_riak_dt/creator/deps/meck/ebin -pa /common/poc_riak_dt/creator/deps/meck  -eval "lager:start(), lager:log(info, self(), \"foo ~s\", [bar])." -noshell



erl -pa /common/poc_riak_dt/creator/ebin -pa /common/poc_riak_dt/creator -pa /common/poc_riak_dt/creator/deps/riak_dt/ebin -pa /common/poc_riak_dt/crtor/deps/riak_dt -pa /common/poc_riak_dt/creator/deps/eper/ebin -pa /common/poc_riak_dt/creator/deps/eper -pa /common/poc_riak_dt/creator/deps/lager/ebin -pa /common/poc_riak_dt/creator/deps/lager -pa /common/poc_riak_dt/creator/deps/goldrush/ebin -pa /common/poc_riak_dt/creator/deps/goldrush -pa /common/poc_riak_dt/creator/deps/meck/ebin -pa /common/poc_riak_dt/creator/deps/meck  -eval "lager:start(), riak_dt_runner:boot(),halt()." -noshell

making it read an the app.config (sets lager logdir to 'boz' 

erl -pa /common/poc_riak_dt/creator/ebin -pa /common/poc_riak_dt/creator -pa /common/poc_riak_dt/creator/deps/riak_dt/ebin -pa /common/poc_riak_dt/creator/deps/riak_dt -pa /common/poc_riak_dt/creator/deps/eper/ebin -pa /common/poc_riak_dt/creator/deps/eper -pa /common/poc_riak_dt/creator/deps/lager/ebin -pa /common/poc_riak_dt/creator/deps/lager -pa /common/poc_riak_dt/creator/deps/goldrush/ebin -pa /common/poc_riak_dt/creator/deps/goldrush -pa /common/poc_riak_dt/creator/deps/meck/ebin -pa /common/poc_riak_dt/creator/deps/meck -eval "application:start(lager), creator_app:start(undefined, undefined)." -s init stop -noshell -config app


### Information about encodings

http://stackoverflow.com/questions/29092235/dealing-with-riak-datatypes-in-postcommit-hooks

http://stackoverflow.com/questions/29092235/dealing-with-riak-datatypes-in-postcommit-hooks/29102213#29102213
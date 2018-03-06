
-module(p13).

%% API
-export([decode/1]).


decode(A) ->
  p12:decode_modified(A).
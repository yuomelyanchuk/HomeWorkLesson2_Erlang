-module(p04).

%% API
-export([len/1]).


len([]) ->0;
len([_H|[]])->1;
len([_H|T])->1+len(T).
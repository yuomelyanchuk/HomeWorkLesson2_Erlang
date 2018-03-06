
-module(p08).

%% API
-export([compress/1]).


compress([])->[];
compress([H|T]) ->compress2(T,[H]).

compress2([],A)->p05:reverse(A);

compress2([H|T1],[H|T2])->
  compress2(T1,[H|T2]);

compress2([H1|T1],[H2|T2])->
  compress2(T1,[H1]++[H2|T2]).



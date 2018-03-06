
-module(p07).


%% API
-export([flatten/1]).




flatten(A) ->flatten2(A,[]).


flatten2([],A)->A;
flatten2([[]|T],A)->flatten2(T,A);
flatten2([[H1|T1]|_T2],A)->flatten2([H1|T1],A);
flatten2([H|T],A)->flatten2(T,A++[H]).

-module(p15).

%% API
-export([replicate/2]).


replicate([],_) ->[];
replicate([H|[]],N)->rep2(H,N);
replicate([H|T],N)->rep2(H,N)++replicate(T,N).

rep2(H,1)->[H];
rep2(H,N)->[H]++rep2(H,N-1).

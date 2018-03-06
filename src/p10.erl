
-module(p10).

%% API
-export([encode/1]).

encode([]) ->[];
encode(A)->encode2(p09:pack(A)).

encode2([])->[];
encode2([[H|T1]|T])->[{p04:len([H|T1]),H}]++encode2(T).
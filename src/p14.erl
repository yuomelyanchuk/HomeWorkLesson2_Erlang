
-module(p14).

%% API
-export([duplicate/1]).


duplicate([]) ->[];
duplicate([H|[]])->[H]++[H];
duplicate([H|T])->[H]++[H]++duplicate(T).

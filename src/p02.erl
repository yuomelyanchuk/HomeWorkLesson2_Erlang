
-module(p02).
%% API
-export([but_last/1]).


but_last([H1|[H2|[]]]) ->[H1,H2];
but_last([_H1|[H2|T]]) ->but_last([H2|T]).

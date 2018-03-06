
-module(p09).
%% API
-export([pack/1]).


pack([])->[];
pack([H|T]) -> pack2(T,[H]).


pack2([],A)->p05:reverse(A);
pack2([H|T],[H|[]])->pack2(T,[[H]++[H]]);
pack2([H|T],[[H|T1]|T2])->pack2(T,[[H|T1++[H]]|T2]);
pack2([H1|T],[[H|T1]|T2])->pack2(T,[[H1]|[[H|T1]|T2]]).


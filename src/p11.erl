
-module(p11).
%% API
-export([encode_modified/1]).

encode_modified([]) ->[];
encode_modified(A)->encode2(p09:pack(A)).

encode2([])->[];
encode2([[H|T1]|T])->encode3(p04:len([H|T1]),H)++encode2(T).

encode3(1,A)->[A];
encode3(A,B)->[{A,B}].
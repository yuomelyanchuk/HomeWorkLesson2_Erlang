
-module(p12).

%% API
-export([decode_modified/1]).


decode_modified([]) ->[];
decode_modified(A)->decode_modified2(A).

decode_modified2([H|[]])->func_tmp(H);
decode_modified2([H|T])->func_tmp(H)++decode_modified2(T).


func_tmp({1,B})->[B];
func_tmp({A,B})->[B]++func_tmp({A-1,B});
func_tmp(B)->[B].

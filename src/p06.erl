
-module(p06).

%% API
-export([is_palindrome/1]).


is_palindrome([])->true;
is_palindrome(A) ->is_palindrome2(A,p05:reverse(A)).

is_palindrome2([H|T],[H|T])->true;
is_palindrome2([_H1|_T1],[_H2|_T2])->false.
-module(raindrops).
-export([convert/1]).
-type drops() :: 3 | 5 | 7.

-spec convert(N :: pos_integer()) -> string().
convert(N) -> convert(N, [3,5,7], "").

-spec convert(N :: pos_integer(), List :: [drops(), ...], Str :: string()) -> string().
convert(N, [], Str) when Str =:= "" -> integer_to_list(N);
convert(_N, [], Str) -> Str;
convert(N,[H|T],Str) when H =:= 3, N rem H =:= 0 -> convert(N, T, Str ++ "Pling"); 
convert(N,[H|T],Str) when H =:= 5, N rem H =:= 0 -> convert(N, T, Str ++ "Plang");
convert(N,[H|T],Str) when H =:= 7, N rem H =:= 0 -> convert(N, T, Str ++ "Plong");
convert(N,[_H|T],Str) -> convert(N, T, Str).


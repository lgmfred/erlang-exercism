-module(accumulate).
-export([accumulate/2]).
%-compile(export_all).

%%
%% given a fun and a list, apply fun to each list item replacing list item with fun's return value.
%%
-spec accumulate(Fun :: fun(), List :: list()) -> Acc :: list().
accumulate(Fn, List) -> accumulate(Fn, List, []).

-spec accumulate(Fun :: fun(), List :: list(), Acc :: list()) -> Acc :: list().
accumulate(_Fun, [], Acc) -> reverse(Acc, []);
accumulate(Fun, [H|T], Acc) -> accumulate(Fun, T, [Fun(H)|Acc]).

-spec reverse(List :: list(), Acc :: list()) -> RList :: list().
reverse([], Acc) -> Acc;
reverse([H|T], Acc) -> reverse(T, [H|Acc]).

-module(strain).

-export([keep/2, discard/2]).

-spec keep(Fn :: fun((term()) -> boolean()) , List :: list()) -> list().
keep(Fn, List) when is_function(Fn, 1) ->
    [L || L <- List, Fn(L)].

-spec discard(Fn :: fun((term()) -> boolean()) , List :: list()) -> list().
discard(Fn, List) when is_function(Fn, 1) ->
    [L || L <- List, not Fn(L)].

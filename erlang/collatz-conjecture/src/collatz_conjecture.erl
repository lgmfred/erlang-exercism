-module(collatz_conjecture).
-export([steps/1]).

-spec steps(N :: pos_integer()) -> pos_integer().
steps(N) when N =< 0 -> error(badarg);
steps(N) -> steps(N, 0).

-spec steps(N :: pos_integer(), Steps :: non_neg_integer()) -> pos_integer().
steps(1, Steps) -> Steps;
steps(N, Steps) when N rem 2 =:= 0 -> steps(N div 2, Steps + 1);
steps(N, Steps) -> steps( 3 * N + 1, Steps + 1).



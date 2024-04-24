-module(rna_transcription).
-export([to_rna/1]).

-type dna_nuc() :: $G | $C | $T | $A.
-type rna_nuc() :: $C | $G | $A | $U.

-spec to_rna(Strand :: [dna_nuc()]) -> [rna_nuc()].
to_rna(Strand) -> to_rna(Strand, []).

-spec to_rna(Strand :: [dna_nuc()], Acc :: [rna_nuc()]) -> [rna_nuc()].
to_rna([], Acc) -> lists:reverse(Acc);
to_rna([H|T], Acc) when H =:= $G -> to_rna(T, [$C|Acc]);
to_rna([H|T], Acc) when H =:= $C -> to_rna(T, [$G|Acc]);
to_rna([H|T], Acc) when H =:= $T -> to_rna(T, [$A|Acc]);
to_rna([H|T], Acc) when H =:= $A -> to_rna(T, [$U|Acc]).

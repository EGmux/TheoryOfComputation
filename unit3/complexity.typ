#set heading(numbering: "1.")

=== 7.1 Answer each part TRUE or FALSE

==== a. $2n = O(n)$

by the definition of $O(n)$ we have

  *$L in O(n) <=> c L lt.eq n $*

  set c to 2 , then we have *$2n$*, so it must be the case that $2n in O(n)$

==== b. $n^2 = O(n)$

by the definition, again

$L in O(n) <=> c L lt.eq n$

but note that c must be n, thus

$n L lt.eq n^2$

thus it must be  that this case is false

==== c. $n^2 = O(n log^2 n)$

by the definition of $O(n log^2 n)$

remember that we can multiply the outside factor for the inside one, thus

$L in O(log^2 n^2) <=> L lt.eq c log^2 n^2$

but, then, $2^L lt.eq 2^c n^2$, but it's not the same language anymore, thus
it must be the case that $n^2$ does not belong to $O(log^2 n^2)$, false

==== d. $n log n = O(n^2)$

by the definition,
$n log n in O(n^2) <=> n log n lt.eq c n^2$
, simplifying

$log n^2 lt.eq c n^2$

$n^2 lt.eq 2^c 2^n^2$
again not a constant, as such is false.


==== e . $3^n = 2^O(n)$

$3 ^n in 2^O(n) <=> 3^n lt.eq 2^(c n)$

==== f . $2^2^n = O(2^2^n)$

again, by definition

$2^2^n in O(2^2^n) <=> 2^2^n lt.eq c 2^2^n$

keep applying $log$

$2^n lt.eq log c + 2^n$

repeat, one more time

$2^n - 2^n lt.eq log c$

$0 lt.eq log c$

so there's a constant $>= 1$ so TRUE.

=== 7.2 Answer each part TRUE or FALSE

==== a. $n = o(2n)$

based on the definition of $o(n)$

$L in o(n) <=> n < c n$

if $c = 1$  then it must be the case that $n in O(n)$, but then we can always find a constant
  that would make this false, they have the same growth rate, thus it must be false.

==== b . $2 n = o(n^2)$

it must be the case that $n in o(n^2) <=> n lt c n^2$
thus it must also be the case that $ 2n < n^2$ for any c, 
thus $2 n in o(n^2)$

==== c. $2^n = o(3^n)$

again, based on the definition

$2^n in o(3^n) <=> 2^n < c 3^n$

it must be the case as well, thus TRUE.

==== d. $1 = o(n)$

by the definition $1 in O(n)$,that is a linear function
always grow faster than a constant, TRUE.

==== e n = o(log n)

by the definition

*$n in o(log n) <=> n < c log n$*

but *$log n <= n$*, thus it must be false.

==== f. *$1 = o(1/n)$*

this one must be false, due to *$0 < n < 1$* being the only case for this to be true.

==== 7.4 Fill out the table described in the polynomial time algorithm for context free language
recognition from Theorem 7.16 for string w = baba and CFG G:

$S -> R T$\
$R -> T R | a$\
$T -> T R | b$

#table(
  columns: (30pt, auto, auto, auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [], [*1*], [*2*], [*3*], [*4*], [*4*],
   [*1*], "T", "", "", "", "",
    [*2*], "", "R", "", "", "",
    [*3*], "", "", "T", "", "",
    [*4*] ,"", "", "", "R", "",
) // Cancelled

7.6 Show that P is closed under union, concatenation, and complement

Consider the following TM

#math.equation(block:true,
  $ M &= "\"On input" angle.l M_1,M_2,a angle.r "where" M_1"is a TM" "and" M_2" is a TM and a is a string" && \
    & 1. "Run " M_1 "on input a" \
    & 2. "Run " M_2 "on input b"  && \ 
    & 3. "If any of them accept, accept, else reject"  && \ 
    $
)

Due to each machine taking at most polynomial time due to $L in P$
it must be the case that step 1 takes $O(t^(k_i))$ and step 2 $O(t^(k_j))$ for some 
$(k_j,k_i) in N times N$ and the sum of two polynomials is a polynomial, thus it must be the case
that the union of two $P$ languages is also in P.


#math.equation(block:true,
  $ M &= "\"On input" angle.l M_1,M_2,a angle.r "where" M_1 "is a TM and " M_2 "and  is a TM, a is a string" && \
  & 1. "For " k=0 "to" |a|  && \ 
  & " "2. "Partition a as" (l,r) "where" l "start at position 0 of a and end at" k-1 "and r start at" k "and end at |a| position"   && \ 
  & " " " "3. "Run " M_1 "in" l "and" M_2 "in" r   && \ 
  & " " " " " "4. "If" M_1,M_2 "accepts then accept"    && \ 
  & 5. "Reject"  && \ 
    $
)

Note that we can partition a in $a^2$ splits, each partition can have at most size $|a|$
and two exists, each partition takes $O(t^(k_j))$ for $M_1$ and $O(t^(k_i))$ for $M_2$
for $(t_k,t_i) in N times N$, so as seen before the sum of polynomials is a polynomial,
  and the multiplication of a constant by a polynomial is a polynomail,$a^2$, in this case.

  As such it must be the case that concatenation of languages is in $P$

#math.equation(block:true,
  $ M &= "\"On input" angle.l M_1,a angle.r "where" M_1 "is a TM and a a string" && \
    & 1. "Run " M_1 "on a"  \
    & 2. "Reject if accepts and accept if rejects"  && \ 
    $
)

Note that it must be the case that the time it takes is $O(t^k)$ where $k in N$, as such
it take polynomial time, consequently the extra step is constant time, inverting the answer,
thus negation of a language in P belongs to P as well

=== 7.7 Show that NP is closed under union and concatenation

#math.equation(block:true,
  $ M &= "\"On input" angle.l M_1,M_2,a angle.r "where" M_1 "is a TM, " M_2 "is a TM" "and a is a string" && \
    & 1. "Run" M_1 "with a as input" \ 
    & 2. "Run" M_2 "with a as input" \
    & 3. "Accept if one of them accept, otherwise reject\" "  && \ 
    \ 
    $
)

Note that takes polynomial time for each machine, and the sum of polynomials is a poylnomial
consequently it must be the case that the union of two languages in NP is in NP

#math.equation(block:true,
  $ M &= "\"On input" angle.l M_1,M_2,a angle.r "where" M_1,M_2,a "is a TM, TM and string respectively" && \
    & 1. "Partition a in a non deterministic manner" \
    & " "2. "For each partition run " M_1 "on the left substring" "and " M_2 "on the right substring"  && \ 
    & " "3. "Accept if both accept"  && \ 
    & 4. "Reject"  && \ 
    \ $
)

=== 7.8 Let CONNECTED = *${<G> | "G is a connected undirected graph"}$*. Analyze the algorithm given on page 185 to show that this language is in P.

#math.equation(block:true,
  $ M &= "\"On input" angle.l G angle.r "where G is the encoding of a Graph" && \
    & 1. "Select the first node of G and mark it" \
    & 2. "Repeat the following stage until no new nodes are marked:"  && \ 
    & 3. " " "For each node in G, mark it if its attached by an edge to a node that is already marked" && \ 
    & 4. "Scan all the nodes of G to determine" && \
    & " " " " " " "whether they all are marked. If they are, accept; otherwise, reject\""  
    $

)
- the first step takes $O(1)$ so constant time
- the second step takes $O(G^3)$ so linear time 
- the last step takes $O(G)$ so linear time

so $O(G^2)$ is the final time
the second step has the following time because in the worst case a node might compare 
with $n-1$ nodes and n nodes exist, so $O(n^3)$
  
=== 7.9 A triangle in an undirected graph is a 3-clique. Show that TRIANGLE $in$ P, where TRIANGLE = *${angle.l G angle.r | G "contains a triangle"}$*





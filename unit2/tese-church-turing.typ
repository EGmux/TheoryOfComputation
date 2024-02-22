#set heading(numbering: "1.")

=== 3.1 This exercise concerns TM $M_2$, whose description and state diagram appear in Example 3.7. In each of the parts, give the sequence of configurations that $M_2$ enters when started on the indicated input string.
\

#figure(image("../assets/diag.png", width: 80%), caption: []) <fig-diag>

==== a) 0
\

#math.equation(block: true, $ q_1 0 $)

🚨 note that a computation is a sequence of configurations and such sequence must
be finite!

🚨 Recognizability of turing machine requires for the machine to have a language
and for that halting is not required.

💡 a TM is decidable iff the machine halts and it language is the set of
recognizable languages

💡 We don't cross the starting zero because is "every other 0"

#math.equation(block: true, $ bracket.b q_2 bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b q_"accept" bracket.b $)

==== b) 00
\

#math.equation(block: true, $ bracket.b q_1 00 bracket.b $)

#math.equation(block: true, $ bracket.b q_2 0 bracket.b $)

#math.equation(block: true, $ bracket.b "x" q_3 bracket.b $)
#math.equation(block: true, $ bracket.b q_5 "x" bracket.b $)
#math.equation(block: true, $ bracket.b q_5 bracket.b "x" bracket.b $)
#math.equation(block: true, $ bracket.b q_2 "x" bracket.b $)
#math.equation(block: true, $ bracket.b x q_2 bracket.b $)
#math.equation(block: true, $ bracket.b x bracket.b q_"accept" bracket.b $)

==== c) 000
\

#math.equation(block: true, $ bracket.b q_1 000 bracket.b $)
#math.equation(block: true, $ bracket.b q_2 00 bracket.b $)
#math.equation(block: true, $ bracket.b x q_3 0 bracket.b $)
#math.equation(block: true, $ bracket.b x 0 q_4 bracket.b $)
#math.equation(block: true, $ bracket.b x 0 bracket.b q_"reject" bracket.b $)

==== d) 000000
\

#math.equation(block: true, $ bracket.b q_1 000000 bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b q_2 "00000" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b x q_3 "0000" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b "x0" q_4 "000" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b "x0x" q_3 "00" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b "x0x0" q_4 "0" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b "x0x0x" q_3 bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b "x0x0" q_5 "x" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b "x0x" q_5 "0x" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b "x0" q_5 "x0x" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b "x" q_5 "0x0x" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b q_5 "x0x0x" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b "x" q_2 "0x0x" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b "xx" q_3 "x0x" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b "xxx" q_3 "0x" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b "xxx0" q_4 "x" bracket.b $)
#math.equation(block: true, $ bracket.b bracket.b "xxx0x" q_4 bracket.b $)
#math.equation(
  block: true, $ bracket.b bracket.b "xxx0x" bracket.b q_"reject" bracket.b $,
)

=== 3.2 This exercises concerns TM *$M_1$* whose description and state diagram appear in Example 3.9. In each of the parts give the sequence of configurations that *$M_1$* enters when started on the indicated input string.
\

#figure(image("../assets/tur.png", width: 80%), caption: []) <fig-tur>

==== a) 11
\

#math.equation(block: true, $ bracket.b q_1 11 bracket.b $)

#math.equation(block: true, $ bracket.b "x" q_3 1 bracket.b $)
#math.equation(block: true, $ bracket.b "x1" q_3 bracket.b $)
#math.equation(block: true, $ bracket.b "x1" bracket.b q_"reject" $)

==== b) 1\#1
\

#math.equation(block: true, $ bracket.b q_1 1\#1 bracket.b $)
#math.equation(block: true, $ bracket.b "x" q_3 \#1 bracket.b $)
#math.equation(block: true, $ bracket.b "x#" q_5 \1 bracket.b $)
#math.equation(block: true, $ bracket.b "x" q_6 "#x" bracket.b $)
#math.equation(block: true, $ bracket.b q_7 "x#x" bracket.b $)
#math.equation(block: true, $ bracket.b "x" q_1 "#x" bracket.b $)
#math.equation(block: true, $ bracket.b "x#" q_8 "x" bracket.b $)
#math.equation(block: true, $ bracket.b "x#x" q_8 bracket.b $)
#math.equation(block: true, $ bracket.b "x#x" bracket.b q_"accept" bracket.b $)

==== c) 1\#\#1
\

#math.equation(block: true, $ bracket.b q_1 1\#\#1 bracket.b $)
#math.equation(block: true, $ bracket.b "x" q_3 \#\#1 bracket.b $)
#math.equation(block: true, $ bracket.b "x#" q_5 \#1 bracket.b $)
#math.equation(block: true, $ bracket.b "x#" \# q_"reject" 1 bracket.b $)

==== d) 10\#11
\

#math.equation(block: true, $ bracket.b q_1 10\#11 bracket.b $)
#math.equation(block: true, $ bracket.b "x" q_3 0\#11 bracket.b $)
#math.equation(block: true, $ bracket.b "x0" q_3 \#11 bracket.b $)
#math.equation(block: true, $ bracket.b "x0#" q_5 11 bracket.b $)
#math.equation(block: true, $ bracket.b "x0#x" q_6 1 bracket.b $)
#math.equation(block: true, $ bracket.b "x0#" q_6 "x1" bracket.b $)
#math.equation(block: true, $ bracket.b "x0#x" q_"reject" 1 bracket.b $)

==== e) 10\#10
\

#math.equation(block: true, $ bracket.b q_1 10\#10 bracket.b $)
#math.equation(block: true, $ bracket.b "x" q_3 0\#10 bracket.b $)
#math.equation(block: true, $ bracket.b "x0" q_3 \#10 bracket.b $)
#math.equation(block: true, $ bracket.b "x0#" q_5 10 bracket.b $)
#math.equation(block: true, $ bracket.b "x0" q_6 "#x"0 bracket.b $)
#math.equation(block: true, $ bracket.b "x" q_7 "0#x"0 bracket.b $)
#math.equation(block: true, $ bracket.b q_7 "x0#x"0 bracket.b $)
#math.equation(block: true, $ bracket.b "x" q_1 "0#x"0 bracket.b $)
#math.equation(block: true, $ bracket.b "xx" q_2 "#x"0 bracket.b $)
#math.equation(block: true, $ bracket.b "xx#" q_4 "x"0 bracket.b $)
#math.equation(block: true, $ bracket.b "xx#x" q_4 ""0 bracket.b $)
#math.equation(block: true, $ bracket.b "xx#" q_6 "xx" bracket.b $)
#math.equation(block: true, $ bracket.b "xx" q_6 "#xx" bracket.b $)
#math.equation(block: true, $ bracket.b "x" q_7 "x#xx" bracket.b $)
#math.equation(block: true, $ bracket.b "xx" q_1 "#xx" bracket.b $)
#math.equation(block: true, $ bracket.b "xx#" q_8 "xx" bracket.b $)
#math.equation(block: true, $ bracket.b "xx#x" q_8 "x" bracket.b $)
#math.equation(block: true, $ bracket.b "xx#xx" q_8 "" bracket.b $)
#math.equation(block: true, $ bracket.b "xx#xx" bracket.b q_"accept" bracket.b $)

=== 3.3 Modify the proof of Theorem 3.16 to obtain corollary 3.19 showing that a language is decidable iff some nondeterministic Turing machine decides it. (You may assume the following theorem about trees. If every node in a tree has finetly many children and every branch of the tree has finitely many nodes, the tree itself has finitely many nodes.)
\

==== language decidible *$=>$* some nondeterministic Turing Machine decides it
\

Suppose L is a decidible language we can deduce that a deterministic turing
machine, M, must decide it, but any deterministic TM is a subset of non
deterministic TM, thus any NDTM decides such language.

==== some nondeterministic Turming Machine decides a language *$=>$* language decidible
\

If a NDTM decides a language, that implies all braches of computation must halt

we'll convert such NDTM to DTM

we'll use 3 tapes for this approach

- first tape has the input

- second tape has the current computation

- third tape has current node address

a node address is a subset of the power set for the alphabet indexed, that is if
the alphabet has 4 elements, such as a,b,c and d, each element would correspond
to 0 to 3 as mapping.

the machine works as follows

- first put the input in the first tape

- copy the input from tape 1 to tape 2

- set the third tape to $epsilon$, the root node address

- run the computation in tape 2, until a reject or accept state happens

  - to run the current TM configuration in tape 2 make sure the last non empty
    position in tape 3 is used as a decision of next symbol to read, that is as
    input to transition function

    - if the computation is rejected modify tape3 to visit another possible branch in
      a BFS fashion
    - if the computation is accepted, accept and end the computation

  because the set of addresses for each node in the computation history must be
  finite eventually all the possibilities will be seen, thus the computation must
  halt

  we succesfully created a DTM that has the same language as NDTM in the
  beginning, and the following is true as well

  - if all branches of computation are exausthed the string is rejected
  - otherwise is accepted

  thus the language must be decidible $qed$

  === 3.4 Give a formal definition of an enumerator. Consider it to be a type of two-tape Turing machine that uses its second tape as the printer. Include a definition of the enumerated language.
  \

  #math.equation(
    block: true, $ E:= <Gamma, Sigma,q_"start",Q_"print",Q_"accept",Q_"reject", Q, delta :: Q times Gamma -> Q times Gamma times {L,R,S} times Sigma_epsilon > $,
  )

  💡 We use S as a special motion where the machine does nothing, but is equivalent
  to $L->R "or" R->L$

The machine work as follows

- for an alphabet *$Sigma$* the machine will generate a list of every possible
  string available according to size
- for each string generated according to size run the machine and check if
  *$Q_"print"$* state is reached, the string are separated by markers, such as '\#'
  - if the answer is yes move the cursor to closest leftmost marker to the
    *$Q_"print"$* state and copy the string betwwen the marker and such state to the
    next tape
    - mark each end of string in the second tape with a symbol and each string between
      such symbol is the printed value.
  - Move the work tape cursor to the next marker and move the printer cursor to the
    end of the tape and create a marker there as well

💡 repetion may occur, but that's allowed

== 3.5) Examine the formal definition of a Turing machine to answer the following questions, and explain your reasoning.
\

==== a. Can a Turing machine ever write the blank symbol $bracket.b$ on its tape?
\

note, *$Sigma$* doesn't contain the *$bracket.b$* symbol as such the symbol must
be in the *$Gamma$* alphabet, every symbol in this alphabet is an allowed symbol
for being written in the tape, so the answer is yes a turing machine can write
the *$bracket.b$* sybol.

==== b. Can the tape alphabet *$Gamma$* be the same as the input alphabet *$Sigma$*?
\

never because *$bracket.b$* always belong to *$Gamma$* as such *$Sigma$* can
never the same set.

==== c. Can a Turing machine's head ever be in the same location in two succesive steps?
\

Yes, just a matter of the first transition be a L-transition, the cursor moves
one tape element left, and the other must be a R-transition also a R-transition
and then a L-transition are possible sequence of configurations as well.

==== d. Can a Turing machine contain just a single state?
\

no, even if $q_"accept"$ were the same as $q_"start"$ there's the imposition
that $q_"reject" != q_"accept"$ and also note that $Q$ is a set of states, that
is each of it elements must be a state, can't be the $nothing$ because is a set,
not a state as such a turing machine must always have at least two states.

=== 3.6 In Theorem 3.2.1, we showed that a language is Turing-recognizable iff some enumerator enumerates it. Why didn't we use the following simpler algorithm for the forward direction of the proof? As before, $s_1, s_2, ...$ is a list of all string in $Sigma^*$.
\

#math.equation(block: true, $E &= "\"Ignore the input."                   & & \
  & 1. "Repeat the following for " i = 1,2,3 & & \
  & 2. "Run M on" s_i.                       & & \
  & 3. "If it accepts, print out" s_i "\"" $)

the trick here is noticing that the enumerator need to deal with not halting and
also printing every valid string. If we print sequentially every possible string
in $Sigma^*$ the machine might never halt for such a string and as such we can't
validate that $E$ enumerates $R$. But by employing the trick of testing in
parallel for each input if a tape never halt that won't be a problem because the
other's will continue to work.

=== 3.7 Explain why the following is not a description of a legitimate Turing machine.
\

#math.equation(
  block: true, $ M_"bad" &= "\"On input <p>, a polynomial over variables " x_1, ..., x_k:             && \
          & 1. "Try all possible settings of" x_1, .., x_k "to integer values"         && \
          & 2. "Evaluate p on all of these settings."                                  && \
          & 3. "If any of these settings evaluates to 0, accept; otherwise reject. \"" && \ $,
)

note that the input alphabet is infinite, but in the turing machine description
we assume that each set must be finite, but beacuse the input alphabet is non
terminating the memory also would be which would also force time of computation
to be infinite and as such it would never halt, so is not an algorithm and
because TM's and algorithms are the same thing such device can't possibly be a
turing machine.

=== 3.8 Give implementation-level description of Turing machines that decide the following languages over the alphabet {0,1}.
\

==== a. {w | w "contains an equal numbers of " 0s "and" 1s}
\

#math.equation(
  block: true, $ M &= "\"On input <w>," w in {0,1}^*:                                                                                                 && \
    & 1. "Copy all the 1's to a tape and all the 0's to another tape"                                                                  && \
    & 2. "Run in parallel each tape going always to the right"                                                                         && \
    & 3. "If at any moment a cursor hits a " bracket.b "halt that tape, if the other didn't hit such symbol reject otherwise accept\"" && \ $,
)

==== b. {w | w "contains twices as many 0s and 1s"}
\

#math.equation(
  block: true, $ M &= "\"On input <w>," w in {0,1}^*:                                                                                                         && \
    & 1. "Copy all the 1's to a tape", T_a, "and all the 0's to another tape" T_b                                                              && \
    & 2. "Consider the following possible transitions"                                                                                         && \
    & 2.1. "If " T_b "hits a 0, execute a R-transition," T_a "doesn't move the cursor, a S-transition happens to " T_a "instead"               && \
    & 2.2. "If" T_b "hits another 0, " T_a "now executes a R-transition"                                                                       && \
    & 2.3 "If " T_b "hits" bracket.b "check if " T_a "would also hit the same symbol with a R-transition, if yes then accept otherwise reject" && \
    & 2.4 "cursor of" T_b "moves back to 2.1\""                                                                                                && \ $,
)

==== c. {w | w does not contain twice as many 0s as 1s}
\

#math.equation(
  block: true, $ M &= "\"On input <w>," w in {0,1}^*:                                                                                                         && \
    & 1. "Copy all the 1's to a tape", T_a, "and all the 0's to another tape" T_b                                                              && \
    & 2. "Consider the following possible transitions"                                                                                         && \
    & 2.1. "If " T_b "hits a 0, execute a R-transition," T_a "doesn't move the cursor, a S-transition happens to " T_a "instead"               && \
    & 2.2. "If" T_b "hits another 0, " T_a "now executes a R-transition"                                                                       && \
    & 2.3 "If " T_b "hits" bracket.b "check if " T_a "would also hit the same symbol with a R-transition, if yes then reject otherwise accept" && \
    & 2.4 "cursor of" T_b "change state to 2.1\""                                                                                              && \ $,
)

=== 3.11 Show that a single-tape TM that cannot write on the portion of the tape containing the input string recognize only regular languages.
\

suppose the following turing machine where the transition function is as follows

#math.equation(block: true, $ delta_i (q_i, b_i) = (q_j,b_i,T) $)

where T is either L or R

now consider a sequence of transitions, L/R, that eventually hit a $q_"accept",q_"reject"$ state

use the following mapping to convert the TM to a Finite automata, $A$

- $q_"start"$ is the same

- $q_"accept"$ and $q_"reject"$ is the same

- convert the $bracket.b$ symbol to be a $q_"accept"$ state in $A$

- the $Sigma$ is the same

- for the delta function do as follows

#math.equation(block: true, $ case(delta, 1) $)

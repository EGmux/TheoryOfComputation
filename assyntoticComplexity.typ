#set heading(numbering: "1.")

= (3.8)  Give Implementation level detail descriptions of Turing machines that decide the followwing languages over the alphabet {0,1}

== a. ${w| w "contains an equal number of 0's and 1's" } $

#math.equation(block:true,numbering:"1",
    $M=&"On input <p>, a binary string:" \
        & " 0 . Move cursor to end of string,right until empty char, and place symbol ?z"\
        & " 1 . goto step 2"\
        & " 2 . Move cursor to beginning of string and goto step4"\
        & " 3. Move cursor to the right"\
        & "    4. When ?1 is read, mark it with ?c"\
        & "          Move cursor to the right"\
        & "             When ?w is read, change it to ?z"\
        & "                 Move cursor to the left"\
        & "                    When ?c is read, change it to ?x and goto step 5"\
        & "     When ?0 is read,mark it with ?c"\
        & "         Move cursor to the right"\
        & "             When ?w is read, change it to ?z"\
        & "                 Move cursor to the left"\
        & "                   When ?c is read, change it to ?x and goto step 6"\
        & "     When ?x is read goto step 3"\
        & "     When ?z is read, reject"\
        & "     When ?w is read, accept"\
        & " 5 . Move the cursor to the right"\
        & "        if ?1 is read, change it to ?c"\
        & "        if ?z is read, change it to ?w "\
        & "           Move cursor to the left "\
        & "              When c is read, mark it with a ?x and goto 2 "\
        & " 6. Move the cursor to the right"\
        & "      if ?0 is read, change it to ?c"\
        & "      if ?z is read, change it to ?w"\
        & "          Move cursor to the left"\
        & "              When ?c is read, mark it with a ?x and goto 2 "\"
        
    $
)
== b. ${w| w "contains twice as many 0s as 1s" } $

#math.equation(block:true,numbering:"1",
    $M=&"On input <p>, a binary string:" \
        & " 0 . Move cursor to end of string,right until empty char, and place symbol ?z"\
        & " 1 . goto step 2"\
        & " 2 . Move cursor to beginning of string and goto step 4"\
        & " 3. Move cursor to the right"\
        & "    4. When ?1 is read, mark it with ?c"\
        & "          Move cursor to the right"\
        & "             If ?w is read, change it to ?z"\
        & "                 Move cursor to the left"\
        & "                     If ?c is read, change it to ?x and goto step 5"\
        & "      When ?0 is read,mark it with ?c"\
        & "         Move cursor to the right"\
        & "             If ?w is read, change it to ?z"\
        & "                Move cursor to the left"\
        & "                   If ?c is read, change it to ?x and goto step 6"\
        & "      When ?x is read goto step 3"\
        & "      When ?z is read, reject"\
        & "      When ?w is read, accept"\
        & " 5 . Move the cursor to the right"\
        & "        When ?0 is read, change it to ?x "\
        & "            Move the cursor to the right"\
        & "                When ?1 is read, change it to ?c"\
        & "                When ?z is read, change it to ?w"\
        & "                   Move the cursor to the left"\
        & "                      When ?c is read change it to ?x, goto step 2"\
        & " 6. Move the cursor to the right"\
        & "      When ?0 is read, change it to ?c"\
        & "            Move the cursor to the right"\
        & "                When ?0 is read, change it to ?c"\
        & "                When ?z is read, change it to ?w"\
        & "                   Move the cursor to the left"\
        & "                      When ?c is read change it to ?x, goto step 2"\
        
    $
)
== c. ${w| w "does not contain twice as many 0s as 1s" } $
#math.equation(block:true,numbering:"1",
    $M=&"On input <p>, a binary string:" \
        & " 0 . Move cursor to end of string,right until empty char, and place symbol ?z"\
        & " 1 . goto step 2"\
        & " 2 . Move cursor to beginning of string and goto step 4"\
        & " 3. Move cursor to the right"\
        & "    4. When ?1 is read, mark it with ?c"\
        & "          Move cursor to the right"\
        & "             If ?z is read, goto 5"\
        & "             If ?w is read, change it to ?z"\
        & "                 Move cursor to the left"\
        & "                     If ?c is read, change it to ?x and goto step 6"\
        & "      When ?0 is read,mark it with ?c"\
        & "         Move cursor to the right"\
        & "             If ?z is read, goto 5"\
        & "             If ?w is read, change it to ?z"\
        & "                Move cursor to the left"\
        & "                   If ?c is read, change it to ?x and goto step 7"\
        & "      When ?x is read goto step 3"\
        & " 5    When ?z is read, accept"\
        & "      When ?w is read, reject"\
        & " 6 . Move the cursor to the right"\
        & "        When ?0 is read, change it to ?x "\
        & "            Move the cursor to the right"\
        & "                When ?1 is read, change it to ?c"\
        & "                When ?z is read, change it to ?w"\
        & "                   Move the cursor to the left"\
        & "                      When ?c is read change it to ?x, goto step 2"\
        & " 7. Move the cursor to the right"\
        & "      When ?0 is read, change it to ?c"\
        & "            Move the cursor to the right"\
        & "                When ?0 is read, change it to ?c"\
        & "                When ?z is read, change it to ?w"\
        & "                   Move the cursor to the left"\
        & "                      When ?c is read change it to ?x, goto step 2"\
        
    $
)


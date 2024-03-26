#set heading(numbering: "1.")

=== 1 Seja *$L = {w in {a,b}^* | "w termina com ab"$}*
==== i) Dê uma AFD que reconheça L

#figure(image("../assets/afd.png", width: 50%), caption: []) <fig-afd>

==== ii) Prove por indução sobre w que para toda *$w in {a,b}^* "o AFD aceita sse" w in L$*

*$=> "ida"$*

*O AFD aceitar implica em $w in L$*\

Para o caso base temos que *$w = "ab"$* e de fato partindo do estado inicial
após duas transições a palavra é aceita.

Para a hipótese indutiva suponha que *$w = Sigma^n"ab"$* é aceito pelo AFD.

Devemos provar que para *$w = Sigma^(n+1)"ab"$* tambem deverá ser aceito.

note que podemos separar a cadeia *$w$* em

#math.equation(block: true, $ w = Sigma Sigma^n"ab" $)

tal que *$w_1 = Sigma$* e *$w_2 = Sigma^n"ab"$*

*$w_1 = b$*

nesse casos temos que se encontra no estado inicial e portanto a segunda cadeia
será aceita visto que *$Sigma^n "ab"$* é aceita partindo do estado inicial.

*$w_1 = a$*

Logo há 3 possíveis estados para *$Sigma^(n+1)$* , analisemo-os

- Se for o primeiro estado então pelo caso base temos que será aceita

- Se for o segundo caso estado então ocorerrá uma transição para o mesmo estado e
  outra para o estado de aceitação, logo será aceita

- Se for o terceiro estado então ocorrerá uma transição para o segundo estado e
  depois para o estado de aceitação, loge será aceita

como para todos estados será aceita então *$"a"Sigma^n"ab"$* será aceito

e como *$Sigma^(n+1)"ab"$* será aceito então está provada a hipotése indutiva e
para *$Sigma^m"ab", m in NN$* é aceita a palavra que pertence a linguagem de
*$L$* logo o AFD aceitar implica em *$w in L$*

*$<== "volta"$*

Se *$w in L$* então o AFD aceita

Suponha que *$w$* esteja em *$L$* logo tem a forma *$Sigma^m"ab", m in NN$* pela
definição de *$L$* .

após ler $Sigma^m$ caracteres o AFD só pode estar em 3 possíves estados,
analisemo-os

- Se o primeiro então ocorre uma função de transição para o segundo estado e
  depois uma outra para estado de aceitação, logo AFD aceita
- Se o segundo então ocorre uma função de transição que faz o AFD permanecer no
  mesmo estado e uma segunda função de transição para chegar no estado de
  aceitação, logo AFD aceita
- Se o terceiro então ocorre uma função de transição para o segundo estado e uma
  segunda transição para estado de aceitação, logo AFD aceita w

como AFD aceita toda cadeia da forma $Sigma^m"ab"$ então se $w in L => "w será aceita pelo AFD"$

como provamos a ida e a volta para tal proposição então é um caso de se e
somente se ⬚

=== iii) Dê uma gramatica regular que gera L

#math.equation(block: true, $   &= S -> A a b         && \
  &= A -> A a | A b | ϵ && \ $)

=== A derivada de uma linguagem $L subset.eq Sigma^*$ com respeito a um símbolo $a in Sigma$ é definida da seguinte forma

#math.equation(block: true, $ (cal(d) L)/(cal(d) a) = { w in Sigma^* | a w in L} $)

a derivada contem todas as cadeias que podem ser obtidas tomando uma cadeia em L
que começa com um $a$ e remove-se a(Cadeias que não começam com a são
completamente removidas) Mostre que se $L$ for regular então a operação de
derivada tambem será regular.

=== 4. Seja $G$ a graática livre de contexto $G$ com as seguintes produções

#math.equation(block: true, $ S -> a S | S b | a | b $)

==== a) Dê um autômato com pilha que reconheça L.

#figure(image("../assets/ap.png", width: 50%), caption: []) <fig-ap>

==== b) G é ambígua? Em caso positivo dê exemplo de uma cadeia que tenha duas derivações mais à esquerda (ou mais à direita) distintas.

Não é ambígua note que ambiguidade implica em $|w_1| = |w_2|$ via indução temos
que

para o caso base $|W_1|=1$ então $W= a, W= b$ e só há uma maneira de produzir
essas cadeias logo para $|W| =1$ é não ambigua

considerando agora hipótese indutiva $|W| =n $ é não ambígua provemos que $|W+1|$ tambem
não será ambigua.

sabemos que $|W|$ por hipótese é não ambígua a adição de um novo símbolo
possibilita que tenhamos apenas uma única regra de produção sendo aplicada $S -> a$ ou $S -> b$

- Como não há nenhuma outra sequência de aplicação de regras de produção então
  essas são as únicas maneiras de gerar uma sequência de caracteres de tamanho 1
- Logo como as cadeias geradas de tamanho 1 são distintas então $|W+1|$ deverá ser
  gerado de maneira não ambígua visto que a aplicação das $N$ primeiras regras de
  produção resulta numa cadeia não ambígua.

==== c) Diga se G é linear, regular , linear á direita ou linear á esquerda, justificado suas respostas
não pode ser linear à direita visto que $S -> a S$ contradiz a condição de todas
regras de produção terem um único não terminal a direita. não pode ser linear à
esquerda visto que $S -> S b$ contradiz a condição de todas as regras de
produção terem um único não terminal a esquerda. deverá ser linear visto que
todas as regras apresentam um único terminal ou nenhum.

=== 5 Use o lema do bombeamento para mostra que :

==== i) $L_1 = {w w w | w in {a,b}^*}$ não é regular

Suponha que $L_1$ seja regular então

- $(forall n>=0) , x y^n z in L$
- $|x y| <= p$ onde p é o tamanho máximo que a cadeia $x y$ possa atingir e ser
  ainda bombeada
- $|y| >= 1$ isto é $y$ não pode ser cadeia vazia

Suponha a seguinte estrutura

$x = w, y = w, z = w$

aplicando o lema do bombeamento teríamos para $p = 2|w|$

e que a cadeia $w w^2 w$ deveria ser aceita, visto que as três condições
anteriores foram satisfeitas, no entanto claramente não pertence a $w$ visto que $|x y^2 z| = 4|w|$ e $y in L => |y| = 3 |w|$
logo a linguagem não é regular.

==== ii) *$L_2 = {0^n\#0^(2n)\#0^(3n)|n >= 0}$* não é livre do contexto

Se *$L_2$* é livre de contexto, então

*$|v y| >= 0$ *\
*$ forall i >= 0 , u v^i x y^i z in L_2$*\
*$|v x y| <= p$*

considere a seguinte estrutura

$u = 0^n, v = \#, x = 0^(2n), y = \#, z = 0^(3n) $

de acordo com o lema do bombeamento para linguagems livres de contexto temos que
a seguinte cadeia deverá pertencer a $L_2$

$0^n\#^p 0^(2n) \#^p 0^(3n)$

mas notamos que não é o caso visto que há excesso do símbolo $\#$ e portanto a
linguagem não deverá ser livre de contexto por falhar a condição 2.

=== 3 Suponha que já tenha sido demonstrado que a linguagem $L_1 = {0^n^3 1^n | n>= 0}$ não é regular. Usando as propriedados de fechamento da classe de linguagens regulares
*mostre que a seguinte linguagem tambem não será regular*

#math.equation(block: true, $ L_2 = {a^k b c^l | k,l >= 0 and k != l^3} $)

se é regular então deverá ser fechada para complemento, mas note que

#math.equation(block: true, $ overline(L_2) = {a^k b c^l | k,l < 0 or k = l^3} $) para
que essa linguagem seja aceita então $k ,l <0 $ ou $k = l^3$ consideramos a
segunda possibilidade

gora considere a seguinte palavra aceita por $L_1 = 0^l^3 1^l$ e considere agora
que o alfabeto de $L_2 = {0,1}$ assim teríamos que
$0^l^3 1^l in overline(L_2) $ com $b = ϵ$ então $overline(L_2)$ é não regular
visto que contem uma cadeia que não pode ser reconhecida por AFD's e
consequentemente como o complemento é não regular e esperava-se ser regular, via
propriedade de fechamento das linguages regulares, deduzimos que $L_2$ é não
regular.

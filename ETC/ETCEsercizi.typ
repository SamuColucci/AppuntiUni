#set page(paper: "a5")
#set heading(numbering: "1.1")
#set text(lang: "ita")
#set page(numbering: "1")
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#align(center)[
  #block(text(weight: "bold", 2em)[Esercizi ETC])
  #v(1em)
]

#outline(
  title: [Indice],
  depth: 2,
)
#pagebreak()

= Esercizi su Stringhe
== Esercizio 1
- Fornire una descrizione di tutte le stringhe su {a,b} che iniziano con a e hanno al più una b
  $ L_1 eq {w in {a,b}^* | w eq a w', w' in {a,b}*, |w|_b lt.eq 1} eq $
  $ L_1 eq {a w'| w' in {a}^* } union {a w' | w' in {a,b}^*, |w|_b eq 1} eq $
  $ L_1 eq {a^i | i gt 0} union {a^i b a^j | i gt 0, j gt.eq 0} eq $
  $ L_1 eq {w in {a,b}^* | w eq a^i b^j a^k, i gt 0, j in {0,1}, k gt.eq 0} $
  $ L_1 eq {a}^* union {a}^*{b}{a}^* $

== Esercizio 2

- Fornire una descrizione di tutte le stringhe su {a,b} che hanno lunghezza dispari e che non iniziano con a
$ L_2 eq {w in {a,b}^* | |w| eq 2 k +1, k gt.eq 0,w eq b w', w' in {a,b}^*} eq$
$ L_2 eq {w in {a,b}^* | w eq b w', w' eq 2 k, k gt.eq 0} eq $
$ L_2 eq {w in {a,b}^* | w eq b w', w' in {a a, a b, b a, b b}^*} eq $
$ L_2 eq {w in {a,b}^* | w eq b w', w' in ({a,b}{a,b})^*} eq $
$ L_2 eq {b} ({a,b}{a,b})^* $

== Esercizio 3
- Fornire una descrizione di tutte le stringhe su {a,b} che hanno la b in posizione dispari (mentre nelle posizioni pari non c’è vincolo)
$ L_3 eq {b a, b b}^* {epsilon,b} $
#pagebreak()
== Esercizio 4
- Fornire una descrizione di tutte le stringhe su {a,b} che hanno esattamente due a e almeno due b
$ L_4 eq { w in {a,b}^* | |w|_a eq 2, |w|_b gt.eq 2} eq $
$ L_4 eq {b^i a b^j a b^k | i,j,k gt.eq 0, i+j+k gt.eq 2} $

#pagebreak()
= Possibili Domande d'Esame DFA
== Esercizio 1
- Dato un DFA $M eq (Q,Sigma,delta,q_0,F)$, se $|F| eq 0$, chi è $L(M) eq ?$
\

Per verificarlo con la definizione di funzione di transizione estesa dobbiamo considerare 
$ L(M) eq {w in Sigma^* | hat(delta)(q_0,w) in F} $
\
Dato che consideriamo la funzione di transizione estesa formata dalle coppie:
- $q_0$ appartenente in $Q$ 
- Una stringa $w in Sigma^*$
Tuttavia dato che la funzione di transizione estesa restituisce uno stato di arrivo e affinchè la stringa sia accettata deve appartenere ad $F$
\
Ma $ hat(delta)(q_0,w) in F$, con $|F| eq 0$ indica che $F eq emptyset$, allora l'unico linguaggio accettato è l'insieme vuoto
\
Quindi $L(M) eq emptyset$

#pagebreak()

== Esercizio 2
- Dato un DFA $M eq (Q,Sigma,delta,q_0,F)$, se $Q eq F$, chi è $L(M) eq ?$
\
Allora l'insieme degli stati coincide con l'insieme degli stati finali, quindi accetto tutto $Sigma^*$
$ L(M) eq {w in Sigma^* | hat(delta)(q_0,w) in F} $
Quindi essendo $Q eq F$, allora $forall w in Sigma^*, hat(delta)(q_0,w) in F$, poichè la funzione di transizione estesa valuta le coppie formate da uno stato in $Q$ e una stringa in $Sigma^*$ restituendo uno stato presente in $Q$ e sapendo per ipotesi che $F eq Q$, quindi che qualsiasi stato di $Q$ sarà comunque uno stato finale presente in $F$
$ L(M) eq Sigma^* $

#pagebreak()
== Esercizio 3
- Dato un DFA $M eq (Q,Sigma,delta,q_0,F)$, se $|Q| eq 1$, chi è $L(M) eq ?$
\
Abbiamo un solo stato in $Q$, ovvero $q_0$, quello iniziale
\
Il linguaggio $L(M)$ dipende da $F$
- Se $|F| eq 1$, quindi $F eq {q_0}$, composto solo dallo stato iniziale
Allora l'insieme degli stati coincide con l'insieme degli stati finali, quindi accetto tutto $Sigma^*$
$ L(M) eq {w in Sigma^* | hat(delta)(q_0,w) in F} $
Quindi essendo $Q eq F$, allora $forall w in Sigma^*, hat(delta)(q_0,w) in F$, poichè la funzione di transizione estesa valuta le coppie formate da uno stato in $Q$ e una stringa in $Sigma^*$ restituendo uno stato presente in $Q$ e sapendo per ipotesi che $F eq Q$, quindi che qualsiasi stato di $Q$ sarà comunque uno stato finale presente in $F$
$ L(M) eq Sigma^* $
- Se $|F| eq 0$, quindi $F eq emptyset$, composto solo dall'insieme vuoto
$ L(M) eq {w in Sigma^* | hat(delta)(q_0,w) in F} $
\
Dato che consideriamo la funzione di transizione estesa formata dalle coppie:
- $q_0$ appartenente in $Q$ 
- Una stringa $w in Sigma^*$
Tuttavia dato che la funzione di transizione estesa restituisce uno stato di arrivo e affinchè la stringa sia accettata deve appartenere ad $F$
\
Ma $ hat(delta)(q_0,w) in F$, con $|F| eq 0$ indica che $F eq emptyset$, allora l'unico linguaggio accettato è l'insieme vuoto
\
Quindi $L(M) eq emptyset$

= Esercizi Proposti dal Linguaggio al DFA
== Esercizio 1
- Fornire una descrizione di tutte le stringhe su {a,b} che iniziano con a e hanno al più una b
$ L_1 eq {a}^+ union {a}^+{b}{a}^* $

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>,extrude: (0,2pt)),
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>,extrude: (0,2pt)),
  node((0,1), $q_P$, radius: 1.5em, shape: circle, name: <q_P>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `a`, "-|>", bend: 0deg),
  edge(<q0>, <q_P>, `b`, "-|>", bend: 0deg),
  edge(<q1>, <q2>, `b`, "-|>", bend: 0deg),
  edge(<q_P>, <q_P>, `a,b`, "-|>", bend: -130deg),
  edge(<q2>, <q2>, `a`, "-|>", bend: 130deg),
  edge(<q2>, <q_P>, `b`, "-|>", bend: 0deg),
  edge(<q1>, <q1>, `a`, "-|>", bend: 130deg),
)
#pagebreak()

== Esercizio 2
- Fornire una descrizione di tutte le stringhe su {a,b} che hanno lunghezza dispari e che non iniziano con a

$ L_2 eq {b}({a,b}{a,b})^* $
#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>,extrude: (0,2pt)),
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>),
  node((0,1), $q_P$, radius: 1.5em, shape: circle, name: <q_P>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `b`, "-|>", bend: 0deg),
  edge(<q0>, <q_P>, `a`, "-|>", bend: 0deg),
  edge(<q1>, <q2>, `a,b`, "-|>", bend: 20deg),
  edge(<q_P>, <q_P>, `a,b`, "-|>", bend: -130deg),
  edge(<q2>, <q1>, `a,b`, "-|>", bend: 20deg),
)



== Esercizio 3
- Fornire una descrizione di tutte le stringhe su {a,b} che hanno la b in posizione dispari (mentre nelle posizioni pari non c’è vincolo)
$ L_3 eq {b a, b b}^*{epsilon,b} $

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0,2pt)),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>,extrude: (0,2pt)),
  node((0,1), $q_P$, radius: 1.5em, shape: circle, name: <q_P>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `b`, "-|>", bend: 20deg),
  edge(<q1>, <q0>, `a,b`, "-|>", bend: 20deg),
  edge(<q0>, <q_P>, `a`, "-|>", bend: 0deg),
  edge(<q_P>, <q_P>, `a,b`, "-|>", bend: -130deg),
)

== Esercizio 4
- Fornire una descrizione di tutte le stringhe su {a,b} che hanno esattamente due a e almeno due b
$ L_4 eq {b^i a b ^j a b ^k | i,j,k gt.eq 0, i+j+k gt.eq 2} $

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>),
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>),
  node((0,1), $q_2$, radius: 1.5em, shape: circle, name: <q2>),
  node((2,0), $q_3$, radius: 1.5em, shape: circle, name: <q3>),
  node((1,1), $q_4$, radius: 1.5em, shape: circle, name: <q4>),
  node((0,2), $q_5$, radius: 1.5em, shape: circle, name: <q5>),
  node((1,2), $q_6$, radius: 1.5em, shape: circle, name: <q6>),
  node((2,1), $q_7$, radius: 1.5em, shape: circle, name: <q7>),
  node((2,2), $q_8$, radius: 1.5em, shape: circle, name: <q8>,extrude: (0,2pt)),
  node((3,0), $q_P$, radius: 1.5em, shape: circle, name: <q_P>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `a`, "-|>", bend: 0deg),
  edge(<q0>, <q2>, `b`, "-|>", bend: 0deg),
  edge(<q1>, <q4>, `b`, "-|>", bend: 0deg),
  edge(<q3>, <q_P>, `a`, "-|>", bend: 0deg),
  edge(<q3>, <q7>, `b`, "-|>", bend: 0deg),
  edge(<q2>, <q4>, `a`, "-|>", bend: 0deg),
  edge(<q2>, <q5>, `b`, "-|>", bend: 0deg),
  edge(<q1>, <q3>, `a`, "-|>", bend: 0deg),
  edge(<q4>, <q7>, `a`, "-|>", bend: 0deg),
  edge(<q_P>, <q_P>, `a,b`, "-|>", bend: 130deg),
  edge(<q7>, <q_P>, `a`, "-|>", bend: -20deg),
  edge(<q5>, <q5>, `b`, "-|>", bend: 130deg, loop-angle: 180deg),
  edge(<q5>, <q6>, `a`, "-|>", bend: 0deg),
  edge(<q6>, <q6>, `b`, "-|>", bend: -130deg, loop-angle: 90deg),
  edge(<q6>, <q8>, `a`, "-|>", bend: 0deg),
  edge(<q4>, <q6>, `b`, "-|>", bend: 0deg),
  edge(<q7>, <q8>, `b`, "-|>", bend: 0deg),
  edge(<q8>, <q8>, `b`, "-|>", bend: -130deg, loop-angle: 90deg),
  edge(<q8>, <q_P>, `a`, "-|>", bend: -20deg),
)

#pagebreak()

== Esercizio 5
- Fornire una descrizione di tutte le stringhe in ${a}^*{b}^*$ in cui il numero di a è uguale al numero di b
$ L_5 eq {a^n b^n | n gt.eq 0} $
Non esiste un DFA che lo descrive dato che ogni potenza nuova aggiunge un nuovo stato, di conseguenza allunga l'automa all'infinito
- Non è un linguaggio regolare

== Esercizio 6
- Progettare un DFA che accetta
$ D eq {w in {a,b}^* | |w| eq 2h, h gt.eq 0 "e" |w|_a eq 2k +1, k gt.eq 0} $
Quindi devono avere anche un numero dispari di $b$ essendo $Sigma eq {a,b}$
$ forall w in D "si ha che" |w|_b eq 2k +1, k gt.eq 0  $

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_(p p)$, radius: 1.5em, shape: circle, name: <qpp>),
  node((1,0), $q_(d p)$, radius: 1.5em, shape: circle, name: <qdp>),
  node((0,1), $q_(p d)$, radius: 1.5em, shape: circle, name: <qpd>),
  node((1,1), $q_(d d)$, radius: 1.5em, shape: circle, name: <qdd>,extrude: (0,2pt)),

  
  // Transizioni dell'automa M2
  edge(<qpp>, <qdp>, `a`, "-|>", bend: 0deg),
  edge(<qpp>, <qpd>, `b`, "-|>", bend: 0deg),
  edge(<qdp>, <qdd>, `b`, "-|>", bend: 0deg),
  edge(<qpd>, <qdd>, `a`, "-|>", bend: 0deg),
  edge(<qpd>, <qpp>, `b`, "-|>", bend: 40deg),
  edge(<qdp>, <qpp>, `a`, "-|>", bend: -40deg),
  edge(<qdd>, <qdp>, `b`, "-|>", bend: -40deg),
  edge(<qdd>, <qpd>, `a`, "-|>", bend: 40deg),
)

#pagebreak()
= Esercizi Proposti Settimana 1-2
== Esercizi su Stringhe e Linguaggi
=== Esercizio 1
- Sia w=ab, indicare $w^i$ per ogni $0<=i<=2$
$ "Con" i eq 0 ", quindi considerando" w^0 eq epsilon $
$ "Con" i eq 1 ", quindi considerando" w^1 eq a b $
$ "Con" i eq 2 ", quindi considerando" w^2 eq a b a b $

=== Esercizio 2
- $epsilon$ appartiene a $Sigma$ ?
No, $epsilon$ non appartiene a $Sigma$

=== Esercizio 3
- Sia $Sigma eq {a}$, fornire una descrizione formale del linguaggio \ $L eq {epsilon,a,a a, a a a, a a a a ,...}$

Dato un alfabeto $Sigma eq {a}$, il linguaggio $L$ è definito come segue:
$ L eq {a^n | n gt.eq 0} eq $
$ L eq {a}^* $

=== Esercizio 4
- Sia $Sigma eq {a}$, fornire una descrizione formale del linguaggio \ $L eq {epsilon,a, a a a, a a a a a ,...}$
Dato un alfabeto $Sigma eq {a}$, il linguaggio $L$ è definito come segue:
$ L eq {a^(2k + 1) | k gt.eq 0} union {epsilon} eq $
$ L eq {a a}^*{a}  union {epsilon} $

=== Esercizio 5
- Sia $T subset.eq Sigma^*$, calcolare ${epsilon}T$ e $emptyset T$. Giustificare le risposte usando le definizione usate
Dati due linguaggi $S$ e $T$ sull'alfabeto $Sigma$, il prodotto è l'insieme di tutte le stringhe che sono concatenazione di una stringa $S$ e una stringa $T$
$ S T eq S dot T eq { u v in Sigma^* | u in S, v in T} $
- Quindi ${epsilon}T eq {epsilon v | v in T} eq {v | v in T}$
- Invece $emptyset T eq { u v in Sigma^* | u in emptyset, v in T} eq emptyset$, essendo un caso particolare di operazione sui linguaggi, data l'impossibilità di trovare una stringa nel linguaggio vuoto

#pagebreak()

=== Esercizio 6
- Sia $L eq {a,b}$, scrivere il linguaggio $L^3$
Sia $L$ un linguaggio sull'alfabeto $Sigma$
$ L^0 eq {epsilon} $
$ L^k eq  L^(k-1) L, k gt.eq 1 $
$ L^3 eq {a,b}^3 eq {a,b}{a,b}^2 eq {a,b}{a,b}{a,b} $
Quindi:
$ L^0 eq {epsilon} $
$ L^1 eq {a,b} $
$ L^2 eq {a,b}{a,b} eq {a b, a a, b a, b b} $
$ L^3 eq {a,b}{a,b}{a,b} eq {a b, a a, b a, b b}{a,b} eq $
$ {a b a, a b b, a a a, a a b,b a a, b a b, b b a, b b b} $

=== Esercizio 7
- Sia $L={a,a b}$, $M={ epsilon, a, b a}$. Scrivere i seguenti linguaggi: $L x M, M^2 , L M e M L$. \ Indicare il valore di $|L x M|, |M^2|, |M L| e |L M|$.

- Calcolo il prodotto cartesiano fra $L "e" M$
$ L times M = {(x, y) | x "in" L ,  y "in" M } eq $
$ L times M eq {(a,epsilon),(a,a),(a,b a),(a b,epsilon),(a b, a),(a b, b a)} $
Essendo $L "e" M$ insiemi finiti $|L times M| eq |L||M|$
$ |L times M| eq |L||M| eq 2 dot 3 eq 6 $
#pagebreak()
- Calcolo $M^2$
Sia $M$ un linguaggio sull'alfabeto $Sigma$
$ M^0 eq {epsilon} $
$ M^k eq  M^(k-1) L, k gt.eq 1 $
$ M^1 eq {epsilon,a,b a} $
$ M^2 eq {epsilon,a,b a}{epsilon,a,b a} eq {epsilon,a,b a,a a,a b a,b a a,b a b a} $
$ |M^2| eq 7 $
- Calcolo $M L$
Dati due linguaggi $M$ e $L$ sull'alfabeto $Sigma$, il prodotto è l'insieme di tutte le stringhe che sono concatenazione di una stringa $M$ e una stringa $L$
$ M L eq M dot L eq { u v in Sigma^* | u in M, v in L} $
$ M L eq {a,a b, a a, a a b, b a a, b a a b} $
$ |M L| eq 6 $
- Calcolo $L M$
Dati due linguaggi $L$ e $M$ sull'alfabeto $Sigma$, il prodotto è l'insieme di tutte le stringhe che sono concatenazione di una stringa $L$ e una stringa $M$
$ L M eq L dot M eq { u v in Sigma^* | u in L, v in M} $
$ L M eq {a, a a, a b a, a b, a b b a} $
$ |L M| eq 5 $
#pagebreak()
=== Esercizio 8
- Sia $L={0,1,2,3,4,5,6,7,8,9}, M={+,-,x,:}$. Cosa rappresenta $L M L$? E cosa rappresenta $L^2 M L^2$?
- $L M L$ rappresenta tutte le possibili operazioni fra due numeri da $0 "a" 9$, ovvero tutte le possibili operazioni aritmetiche semplici
- $L^2 M L^2$ rappresenta tutte le possibili operazioni fra due numeri da $0 "a" 99$

=== Esercizio 9
- Sia $L={a a,b b}$. La stringa $a b b a$ appartiene a $L^*$? E la stringa $b b a a$? Qual è la stringa più corta in $L^*$? $a b a$ può essere fattore (o sottostringa) di una parola di $L^*$?
$ L^* eq union.big_(n gt.eq 0) (L^n) $
Ovvero l'unione di tutte le possibili concatenazioni di stringhe del linguaggio $L$
- $a b b a$ non appartiene a $L^*$
- $b b a a$ appartiene a $L^*$, dato che ${b b}{a a} "con" {b b} in L,{a a} in L $
- La stringa più corta in $L^*$ è la stringa vuota $epsilon$, essendo $n eq 0$, quindi $L^0 eq {epsilon}$
- $a b a$ non può essere fattore (o sottostringa) di una parola di $L^*$, non essendo una possibile concatenazione di nessuna stringa di $L$

=== Esercizio 10
-  Cosa rappresenta $Sigma^n$, con $n gt.eq 0$? (Risposta: l’insieme delle stringhe di lunghezza $n$ su $S$)
Sia $L$ un linguaggio sull'alfabeto $Sigma$
$ L^0 eq {epsilon} $
$ L^k eq  L^(k-1) L, k gt.eq 1 $
Quindi rappresenta tutte le stringhe di lunghezza $n$ che si possono formare usando l'alfabeto

=== Esercizio 11
- Sia $|Sigma| =k$. Quante sono le stringhe di lunghezza $n$, con $n gt.eq 0$? In altre parole, quanto vale |$Sigma^n$|?
Dato un alfabeto $S$ con $|S| = k$, la cardinalità dell'insieme delle stringhe di lunghezza $n$ è $|S^n| = k^n$

#pagebreak()

== Esercizi sulla Descrizione Formale di un Insieme di Stringhe
=== Esercizio 12_a
- Fornire una descrizione formale dell’insieme di tutte le stringhe di lunghezza $5$ che hanno almeno tre a e almeno due b
$ L eq {w in {a,b}^* | |w| eq 5, |w|_a eq 3, |w|_b eq 2} $
$ L eq {a^i b^j a^k b^f a^g | i,j,k,f,g gt.eq 0, i+k+g eq 3, j+f eq 2} $

=== Esercizio 12_b
- Fornire una descrizione formale dell’insieme di tutte le stringhe che hanno esattamente due a e almeno due b
$ L eq { w in {a,b}^* | |w|_a eq 2, |w|_b gt.eq 2} eq $
$ L eq {b^i a b^j a b^k | i,j,k gt.eq 0, i+j+k gt.eq 2} $

=== Esercizio 12_c
- Fornire una descrizione formale dell’insieme di tutte le stringhe di lunghezza al più $4$ che hanno un numero pari di $a$
$ L eq {w in {a,b}^*| |w| lt.eq 4, |w|_a eq 2k, k gt.eq 0} $

=== Esercizio 12_d
- Fornire una descrizione formale dell’insieme di tutte le stringhe che hanno lunghezza pari e un numero dispari di $a$
$ L eq {w in {a,b}^* | |w| eq 2 h, h gt.eq 0, |w|_a eq 2k +1, k gt.eq 0} $
$ forall w in L "si ha che" |w|_b eq 2n +1, n gt.eq 0 $

#pagebreak()

=== Esercizio 12_e
- Fornire una descrizione formale dell’insieme di tutte le stringhe che iniziano per $a$ e hanno al più una $b$
$ L eq {w in {a,b}^* | w eq a w', w' in {a,b}*, |w|_b lt.eq 1} eq $
  $ L eq {a w'| w' in {a}^* } union {a w' | w' in {a,b}^*, |w|_b eq 1} eq $
  $ L eq {a^i | i gt 0} union {a^i b a^j | i gt 0, j gt.eq 0} eq $
  $ L eq {w in {a,b}^* | w eq a^i b^j a^k, i gt 0, j in {0,1}, k gt.eq 0} $
  $ L eq {a}^* union {a}^*{b}{a}^* $

=== Esercizio 12_f
- Fornire una descrizione formale dell’insieme di tutte le stringhe che non iniziano per $b$
$ L eq {w in {a,b}^* | w eq epsilon "oppure" w eq a w', w' in {a,b}^*} eq $
$ L eq {epsilon} union {a}{a,b}^* $

=== Esempio 12_g
- Fornire una descrizione formale dell’insieme di tutte le stringhe di lunghezza dispari che non iniziano per $a$ 
$ L eq {w in {a,b}^* | |w| eq 2 k +1, k gt.eq 0,w eq b w', w' in {a,b}^*} eq$
$ L eq {w in {a,b}^* | w eq b w', w' eq 2 k, k gt.eq 0} eq $
$ L eq {w in {a,b}^* | w eq b w', w' in {a a, a b, b a, b b}^*} eq $
$ L eq {w in {a,b}^* | w eq b w', w' in ({a,b}{a,b})^*} eq $
$ L eq {b} ({a,b}{a,b})^* $

#pagebreak()

=== Esempio 12_h
- Fornire una descrizione formale dell’insieme di tutte le stringhe che non contengono $b a$ come sottostringa
$w$ è una sottostringa di s se esistono stringhe $x$ e $y$ tali che $s eq x w y$
$ L eq { w in {a,b}^* | exists.not x,y in {a,b}^* "tale che" w eq x b a y } $
Quindi non ci sono $a$ a destra delle $b$
$ L eq {w in {a,b}^*|w eq a^i b^j "con" i,j gt.eq 0} $
$ L eq {a}^*{b}^* $

=== Esempio 12_i
- Fornire una descrizione formale dell’insieme di tutte le stringhe in ${a,b}^*$ di lunghezza pari e minore di $5$
$ L eq {w in {a,b}^*| |w| eq 2k, 0 lt.eq k lt.eq 2} $
$ L eq {epsilon} union {a,b}^2 union {a,b}^4 $

=== Esempio 12_j
- Fornire una descrizione formale dell’insieme di tutte le stringhe in ${a,b}^*$ di lunghezza minore di $5$ che non appartengono al seguente linguaggio $L = {a^n b^n | n gt.eq 0}$

$ L eq {w in {a,b}^* | |w| lt 5} - {epsilon,a b,a a b b} $

=== Esempio 12_k
- Fornire una descrizione formale dell’insieme di tutte le stringhe in ${a,b}^*$ che iniziano con $a$ e sono seguite esclusivamente da zero più $b$
$ L eq {w in {a,b}^*| w eq a w', w' in {b}^*} $
$ L eq {a}{b}^* $

#pagebreak()

== Dimostrazione o Confutazione
=== Esercizio 13_a
- La chiusura di Kleene di un linguaggio è sempre un insieme infinito
No, non è sempre un linguaggio infinito \
Controesempio:
$ "Se" L eq emptyset, "allora" L^* eq {epsilon} $
$ "Se" L eq {epsilon}, "allora" L^* eq {epsilon} $

=== Esercizio 13_b
- La chiusura di Kleene di un qualsiasi linguaggio è sempre diversa dall’insieme vuoto
Si, è sempre diversa dall'insieme vuoto per definizione
$ L^* eq union.big_(n gt.eq 0) (L^n) $
Di conseguenza
$ {epsilon} eq L^0 subset.eq L^* $
Se $L = emptyset$, allora $L^∗ = {epsilon}$, per definizione essendo l'unione delle sue potenze ed essendo $emptyset^0 eq {epsilon}$

=== Esercizio 13_c
- $L eq.not L^*$ per ogni linguaggio $L subset.eq Sigma^*$
Non è vero dato che se consideriamo $L eq {epsilon}$, allora
$ L^* eq union.big_(n gt.eq 0) (L^n) eq {epsilon} eq L $
#pagebreak()
=== Esercizio 13_d
- $epsilon in.not L^+$, per ogni linguaggio $L subset.eq Sigma^*$ 
Non è vero dato che se consideriamo $L eq {epsilon}$, allora
$ L^+ eq union.big_(n gt 0) (L^n) eq {epsilon} eq L $

=== Esercizio 13_e
- La chiusura positiva di un qualsiasi linguaggio è sempre diversa dall’insieme vuoto
Non è vero dato che se consideriamo $L eq emptyset$, allora
$ L^+ eq union.big_(n gt 0) (L^n) eq emptyset eq L $

=== Esercizio 13_f
- $(L^*)^* eq L^*$, per ogni $L subset.eq Sigma^*$
Dobbiamo dimostrare la doppia inclusione
- $ L^* subset.eq (L^*)^*$
Dato un qualsiasi linguaggio $A$, sappiamo che $A subset.eq A^*$ \
Se poniamo $A eq L^*$, otteniamo $L^* subset.eq (L^*)^*$
- $(L^*)^* subset.eq L^*$
- $(L^*)^* eq {w in (L^*)^*| w eq w_1 w_2...w_k | k gt.eq 0, w_i in L^*, 1 lt.eq i lt.eq k}$, ma a sua volta $w_i$ è una concatenazione \ $L^* eq {w_1 w_2...w_k | k gt.eq 0, w_i in L, 1 lt.eq i lt.eq k}$, quindi essendo concatenazione di concatenazione $(L^*)^* subset.eq L^*$
#pagebreak()
== Dare la Definizione del Linguaggio
=== Esercizio 14
-  Dare una definizione più semplice del linguaggio \ $L={w in {a,b}^* | w "non contiene la stringa" a b "come fattore "$e $"non contiene la stringa" b a "come fattore"}$
$ L eq {w in {a}^*| w eq a^n,n gt.eq 0} union {w in {b}^*| w eq b^k,k gt.eq 0} $
$ L eq {a}^* union {b}^* $

=== Esercizio 15
- Dare una definizione del seguente linguaggio $M$, in funzione del linguaggio $L$ dell’esercizio precedente
Dato che $M "oppure" L, epsilon in.not M$
$ M eq {w in {a,b}^* | w "non è né potenza di" a "né potenza di "b} $
$ M eq {a,b}^* - L $
$ M eq {w in {a,b}^* | exists x,y in {a,b}^* "tale che "w eq x a b y } $
$ union {w in {a,b}^* | exists x,y in {a,b}^* "tale che "w eq x b a y } $
$ M eq {a,b}^*{a b, b a}^+{a,b}^* $
#pagebreak()
== Funzione di Transizione Estesa

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>),
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>),
  node((3,0), $q_3$, radius: 1.5em, shape: circle, name: <q3>,extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `a`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `b,c`, "-|>", bend: 130deg),
  edge(<q1>, <q1>, `b,c`, "-|>", bend: 130deg),
  edge(<q1>, <q2>, `a`, "-|>", bend: 0deg),
  edge(<q2>, <q2>, `b,c`, "-|>", bend: 130deg),
  edge(<q2>, <q3>, `a`, "-|>", bend: 0deg),
  edge(<q3>, <q3>, `a,b,c`, "-|>", bend: 130deg),
)

- Calcolare $hat(delta)(q_1, c b a c)$

$ hat(delta)(q_1, c b a c) eq delta(hat(delta)(q_1,c b a),c) eq $
$ eq delta(delta(hat(delta)(q_1,c b ),a),c) eq $
$ eq delta(delta(delta(hat(delta)(q_1,c ),b),a),c) eq $
$ eq delta(delta(delta(delta(hat(delta)(q_1,epsilon),c),b),a),c) eq $
$ eq delta(delta(delta(delta(q_1,c ),b),a),c) eq $
Avendo $w eq c b a c$
$ eq delta(delta(delta(delta(q_1,c ),b),a),c) eq $
$ eq delta(delta(delta(q_1,b),a),c) eq $
$ eq delta(delta(q_1,a),c) eq $
$ eq delta(q_2,c) eq q_2$
#pagebreak()
- La stringa $a a c a$ è accettata dall'automa?(Mostralo formalmente con il calcolo della $hat(delta)$)
$ hat(delta)(q_0,a a c a) eq delta(hat(delta)(q_0,a a c),a) eq $
$ eq delta(delta(hat(delta)(q_0,a a),c),a) eq $
$ eq delta(delta(delta(hat(delta)(q_0,a ),a),c),a) eq $
$ eq delta(delta(delta(delta(hat(delta)(q_0,epsilon ),a),a),c),a) eq $
$ eq delta(delta(delta(delta(q_0,a ),a),c),a) eq $
Avendo $w eq a a c a$
$ hat(delta)(q_0,a a c a) eq  delta(delta(delta(delta(q_0,a ),a),c),a) eq $
$ eq  delta(delta(delta(q_1,a ),c),a) eq $
$ eq  delta(delta(q_2,c ),a) eq $
$ eq  delta(q_2,a) eq q_3 $
La stringa $a a c a$ è accettata dall'automa essendo $q_3$ uno stato finale $q_3 in F$
- Quale è il linguaggio accettato dall'automa?
$ L eq {w in {a,b,c}^*| |w|_a gt.eq 3} $
#pagebreak()
== DFA e Linguaggi
Rispondere alle domande supponendo $M eq (Q,Sigma,delta,q_0,F)$ sia un DFA
=== Domanda a
-  Se Q ha un solo stato che è sia iniziale sia finale, quale linguaggio viene riconosciuto?
Il Linguaggio riconosciuto è tutta la chiusura di Kleene dell'alfabeto considerato
$ L eq Sigma^* $
\
Essendo $ L eq {w in Sigma^* | hat(delta)(q_0,w) in F} $ 
Dato che $Q eq F eq {q_0}$, allora $hat(delta)(q_0,w) eq q_0 "e" q_0 in F$, quindi accetta tutte le stringhe $w in Sigma^*$

=== Domanda b
- Se F è vuoto, quale linguaggio viene riconosciuto?
Viene riconosciuto solo l'insieme vuoto $emptyset$
Essendo $ L eq {w in Sigma^* | hat(delta)(q_0,w) in F} $ 
Dato che $F eq emptyset$, allora $hat(delta)(q_0,w) in.not emptyset$, quindi $ L eq emptyset$

=== Domanda c
- Se $F=Q$, quale linguaggio viene riconosciuto?
Se $F eq Q$, significa che tutti gli stati iniziali sono finali, quindi riconosce $L eq Sigma^*$
Essendo $L eq {w in Sigma^* | hat(delta)(q_0,w) in F} $ \
Dato che $Q eq F$, allora $L eq {w in Sigma^* | hat(delta)(q_0,w) in Q} $ \
Quindi accetta tutte le stringhe $w in Sigma^*$

=== Domanda d
- Quando l’automa M accetta la parola vuota?
Accetta la parola vuota quando lo stato iniziale $q_0 in Q$ è anche uno stato finale, quindi $q_0 in F$
$ hat(delta)(q_0,w) in F $
Quindi per la stringa vuota abbiamo
$ hat(delta)(q_0,epsilon) in F "quindi" q_0 in F $
#pagebreak()
== Progettazione di DFA
=== Esercizio 1
- Progettare un DFA $M_1$ che accetta tutte le stringhe su ${a,b,c}$ che contengono almeno 3 occorrenze della lettera a (Attenzione: le 3 occorrenze non devono necessariamente essere consecutive, cioè non stiamo soltanto cercando il fattore aaa
$ L eq {a ^i x a^j y a^k|x,y in {a,b,c}^*,i,j,k gt.eq 0, i+j+k gt.eq 3} $
$ L eq {w in {a,b,c}^*| |w|_a gt.eq 3} $

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>),
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>),
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>),
  node((3,0), $q_3$, radius: 1.5em, shape: circle, name: <q3>, extrude: (0,2pt)),

  //node((3,0), $q_3$, radius: 1.5em, shape: circle, name: <q3>,extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `a`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `b,c`, "-|>", bend: 130deg),
  edge(<q1>, <q2>, `a`, "-|>", bend: 0deg),
  edge(<q1>, <q1>, `b,c`, "-|>", bend: 130deg),
  edge(<q2>, <q3>, `a`, "-|>", bend: 0deg),
  edge(<q2>, <q2>, `b,c`, "-|>", bend: 130deg),
  edge(<q3>, <q3>, `a,b,c`, "-|>", bend: 130deg),
)

=== Esercizio 2
- Progettare un DFA $M_2$ che accetta tutte le stringhe su ${a,b}$ che contengono una o due occorrenze della lettera $b$
$ L eq {w in {a,b}^*| |w|_b eq 2 "oppure" |w|_b eq 1 } $
#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>),
  node((1,0),$q_1$,radius: 1.5em,shape:circle,name:<q1>,extrude: (0,2pt)),
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>,extrude: (0,2pt)),
  node((1,1), $q_p$, radius: 1.5em, shape: circle, name: <qp>),
  
  //node((3,0), $q_3$, radius: 1.5em, shape: circle, name: <q3>,extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q0>, `a`, "-|>", bend: 130deg),
  edge(<q0>, <q1>, `b`, "-|>", bend: 0deg),
  edge(<q1>, <q2>, `b`, "-|>", bend: 0deg),
  edge(<qp>, <qp>, `a,b`, "-|>", bend: -130deg),
  edge(<q1>, <q1>, `a`, "-|>", bend: 130deg),
  edge(<q2>, <q2>, `a`, "-|>", bend: 130deg),
  edge(<q2>, <qp>, `b`, "-|>", bend: 0deg),
)

=== Esercizio 3
- Progettare un DFA $M_3$ che accetta tutte le stringhe su ${a,b}$ in cui ogni lettera $a$ è seguita da almeno una $b$
$ L eq {w in {a,b}^*| a "seguita sempre da almeno una "b} $
#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0,2pt)),
  node((1,0),$q_1$,radius: 1.5em,shape:circle,name:<q1>),
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>,extrude: (0,2pt)),
  node((1,1), $q_p$, radius: 1.5em, shape: circle, name: <qp>),
  
  //node((3,0), $q_3$, radius: 1.5em, shape: circle, name: <q3>,extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q0>, `b`, "-|>", bend: 130deg),
  edge(<q0>, <q1>, `a`, "-|>", bend: 0deg),
  edge(<q1>, <q2>, `b`, "-|>", bend: 0deg),
  edge(<q1>, <qp>, `a`, "-|>", bend: 0deg),
  edge(<qp>, <qp>, `a,b`, "-|>", bend: -130deg),
  edge(<q2>, <q2>, `b`, "-|>", bend: 130deg),
  edge(<q2>, <q1>, `a`, "-|>", bend: 50deg),
)
#pagebreak()
=== Esercizio 4
- Progettare un DFA $M_4$ che accetta tutte le stringhe su ${a,b}$ in cui in ogni posizione dispari c'è $b$
$ L eq {b a, b b}^*{epsilon,b} $
#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0,2pt)),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>,extrude: (0,2pt)),
  node((0,1), $q_P$, radius: 1.5em, shape: circle, name: <q_P>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `b`, "-|>", bend: 20deg),
  edge(<q1>, <q0>, `a,b`, "-|>", bend: 20deg),
  edge(<q0>, <q_P>, `a`, "-|>", bend: 0deg),
  edge(<q_P>, <q_P>, `a,b`, "-|>", bend: -130deg),
)

=== Esercizio 5
- Progettare un DFA $M_5$ che accetta tutte le stringhe su ${a,b}$ in cui $b$ è solo in posizione dispari

$ L eq {b a, a a}^*{epsilon,b,a} $

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0,2pt)),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>,extrude: (0,2pt)),
  node((0,1), $q_P$, radius: 1.5em, shape: circle, name: <q_P>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `a,b`, "-|>", bend: 20deg),
  edge(<q1>, <q0>, `a`, "-|>", bend: 20deg),
  edge(<q1>, <q_P>, `b`, "-|>", bend: 30deg),
  edge(<q_P>, <q_P>, `a,b`, "-|>", bend: -130deg),
)

=== Esercizio 6
- Progettare un DFA $M_6$ che riconosce
$ L eq {a w b | w in {a,b}^* | |w| eq 2h, h gt.eq 0} $
#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0,2pt)),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>,extrude: (0,2pt)),
  node((0,1), $q_P$, radius: 1.5em, shape: circle, name: <q_P>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `a,b`, "-|>", bend: 20deg),
  edge(<q1>, <q0>, `a`, "-|>", bend: 20deg),
  edge(<q1>, <q_P>, `b`, "-|>", bend: 30deg),
  edge(<q_P>, <q_P>, `a,b`, "-|>", bend: -130deg),
)

=== Esercizio 7
- Progettare un DFA $M_7$ che accetta tutte le stringhe su ${a,b,c}$ tali che le occorrenze della lettera $c$ è congrua a $0$ modulo $3$, ossia multiplo di $3$
#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0,2pt)),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>),
  node((1,1), $q_2$, radius: 1.5em, shape: circle, name: <q2>),

  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `c`, "-|>", bend: 0deg),
  edge(<q1>, <q2>, `c`, "-|>", bend: 0deg),
  edge(<q2>, <q0>, `c`, "-|>", bend: 20deg),

  edge(<q0>, <q0>, $a,b$, "-|>", bend: 130deg),
  edge(<q1>, <q1>, $a,b$, "-|>", bend: 130deg),
  edge(<q2>, <q2>, $a,b$, "-|>", bend: -130deg),
)

=== Esercizio 8
- Progettare un DFA $M_8$ che riconosce ${a b, a b a}^*$

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0,2pt)),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>),
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>,extrude: (0,2pt)),
  node((3,0), $q_3$, radius: 1.5em, shape: circle, name: <q3>,extrude: (0,2pt)),
  node((1,1), $q_"Pozzo"$, radius: 1.5em, shape: circle, name: <qp>),

  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `a`, "-|>", bend: 0deg),
  edge(<q3>, <q2>, `b`, "-|>", bend: 40deg),
  edge(<q0>, <qp>, `b`, "-|>", bend: 0deg),
  edge(<q1>, <qp>, `a`, "-|>", bend: 0deg),
  edge(<q2>, <qp>, `b`, "-|>", bend: 0deg),
  edge(<q1>, <q2>, `b`, "-|>", bend: 0deg),
  edge(<q2>, <q3>, `a`, "-|>", bend: 0deg),
  edge(<q3>, <q1>, `a`, "-|>", bend: -50deg),
)

=== Esercizio 9
- Sia $L eq {a^i b^i in {a,b}^*| exists k gt.eq 0 : i+j eq 2k }$, progettare un DFA $M_9$ che riconosce $L$

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0,2pt)),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>),
  node((1,1), $q_"Pozzo"$, radius: 1.5em, shape: circle, name: <qp>),
  node((0,1), $q_3$, radius: 1.5em, shape: circle, name: <q3>),
  node((0,2), $q_4$, radius: 1.5em, shape: circle, name: <q4>,extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `a`, "-|>", bend: 0deg),
  edge(<q0>, <q3>, `b`, "-|>", bend: 0deg),
  edge(<q3>, <qp>, `a`, "-|>", bend: 0deg),
  edge(<q3>, <q4>, `b`, "-|>", bend: 0deg),
  edge(<q1>, <q4>, `b`, "-|>", bend: 70deg),
  edge(<q4>, <q3>, `b`, "-|>", bend: 50deg),
  edge(<q4>, <qp>, `a`, "-|>", bend: 0deg),
  edge(<qp>, <qp>, `a,b`, "-|>", bend: 130deg),
  edge(<q1>, <q0>, `a`, "-|>", bend: -50deg),
)
#pagebreak()
=== Esercizio 10
- Progettare un DFA $M_10$ che accetta tutte le stringhe su ${a,b,c}$ tali che la somma del numero delle occorrenze di $a$ e quelle della lettera $c$ sono congrue a $0$ modulo $3$

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0,2pt)),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>),
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>),

  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `a,c`, "-|>", bend: 0deg),
  edge(<q1>, <q2>, `a,c`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `b`, "-|>", bend: -130deg),
  edge(<q1>, <q1>, `b`, "-|>", bend: -130deg),
  edge(<q2>, <q2>, `b`, "-|>", bend: -130deg),
  edge(<q2>, <q0>, `a,c`, "-|>", bend: -50deg),
)
#pagebreak()
== Scrittura Linguaggio Riconosciuto da un DFA
=== Esercizio 1
- Individuare il linguaggio riconosciuto dal seguente DFA $M_11$

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>),
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>),
  node((3,0), $q_3$, radius: 1.5em, shape: circle, name: <q3>,extrude: (0,2pt)),
  node((2,1), $q_4$, radius: 1.5em, shape: circle, name: <q4>),

  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `0,1`, "-|>", bend: 0deg),
  edge(<q1>, <q2>, `0,1`, "-|>", bend: 0deg),
  edge(<q2>, <q3>, `0`, "-|>", bend: 0deg),
  edge(<q3>, <q3>, `0,1`, "-|>", bend: 130deg),
  edge(<q2>, <q4>, `1`, "-|>", bend: 0deg),
  edge(<q3>, <q3>, `0,1`, "-|>", bend: 130deg),
  edge(<q4>, <q4>, `0,1`, "-|>", bend: -130deg),
  
)

$L$ è il linguaggio composto da ${0,1}$ che ha $0$ nella terza posizione
$ L eq {0,1}{0,1}{0}{0,1}^* $
#pagebreak()
= Esercitazione 11.03.2026
== Esercizio 1
#pagebreak()
= Possibili Domande d'Esame NFA
== Esercizio 1
- Dato un NFA $M eq (Q,Sigma,delta,q_0,F)$, se $|F| eq 0$, cosa contiene $L(M)$?
$L(M) eq emptyset$, dato che non ho stati finali e quindi accetto solo l'insieme vuoto
== Esercizio 2
- Dato un NFA $M eq (Q,Sigma,delta,q_0,F)$, se $Q eq F$, cosa contiene $L(M)$?
$L(M)$ contiene almeno $epsilon$, dato che nessuno mi garantisce di accettare tutto $Sigma^*$
== Esercizio 3
- Dato un NFA $M eq (Q,Sigma,delta,q_0,F)$, se $|Q| eq 1$ cosa contiene $L(M)$?
Dipende dallo stato contenuto in $Q$
- Se $Q eq {q_0}, {q_0} in F$ e non ha archi uscenti che può consumare compresi cappi allora $L(M) eq epsilon$
- Se $Q eq {q_0}, {q_0} in F$ e presenta un cappio per ogni simbolo dell'alfabeto allora $L(M) eq Sigma^*$, altrimenti linguaggio delle sole potenze dei simboli considerati dal cappio
- Se $Q eq {q_0}, {q_0} in.not F$, allora $L(M) eq emptyset$
== Esercizio 4
- Dato un NFA $M eq (Q,Sigma,delta,q_0,F)$, quando accetta la parola vuota?
Accetta la parola vuota se ci sono delle $epsilon$-transizioni dallo stato iniziale che portano ad uno stato finale oppure se lo stato iniziale è anche finale
$ |F inter E(q_0)| gt 0 $
#pagebreak()
= Progettazione NFA
== Esercizio Lezione 7
- Progettare un NFA $M_7$ che riconosce ${a b, a b a}^*$
#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0,2pt)),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>),
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>),
  node((1,1), $q_3$, radius: 1.5em, shape: circle, name: <q3>),
  node((2,1), $q_4$, radius: 1.5em, shape: circle, name: <q4>),
  node((3,1), $q_5$, radius: 1.5em, shape: circle, name: <q5>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, $epsilon$, "-|>", bend: 0deg),
  edge(<q1>, <q2>, $a$, "-|>", bend: 0deg),
  edge(<q2>, <q0>, $b$, "-|>", bend: -40deg),
  edge(<q0>, <q3>, $epsilon$, "-|>", bend: 0deg),
  edge(<q3>, <q4>, $a$, "-|>", bend: 0deg),
  edge(<q4>, <q5>, $b$, "-|>", bend: 0deg),
  edge(<q5>, <q0>, $a$, "-|>", bend: 70deg),
)
#pagebreak()

== Esercizio Lezione 7
- Progettare un NFA $M_6$ che riconosce $ L eq {a w b | w in {a,b}^* "e" |w| eq 2 h, h gt.eq 0} $

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  edge((-0.8,0), (0,0), "-|>"),
  
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>),
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>), // w è pari
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>), // w è dispari
  node((1,-1), $q_3$, radius: 1.5em, shape: circle, name: <q3>, extrude: (0,2pt)), // Finale
  
  edge(<q0>, <q1>, $a$, "-|>"),
  // Ciclo per w pari:
  edge(<q1>, <q2>, $a,b$, "-|>", bend: 20deg),
  edge(<q2>, <q1>, $a,b$, "-|>", bend: 20deg),
  // Uscita con b finale:
  edge(<q1>, <q3>, $b$, "-|>"),
)
#pagebreak()
= Esempio Prova D'Esame NFA in DFA
#diagram(
  
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>),
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>,extrude: (0,2pt)),

  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, $epsilon$, "-|>", bend: 0deg),
  edge(<q1>, <q2>, $0$, "-|>", bend: 0deg),
  edge(<q0>, <q0>, $0,1$, "-|>", bend: 130deg),
)
- Trasformare il seguente NFA nel DFA equivalente utilizzando la costruzione presentata nella dimostrazione del Teorema sull'equivalenza NFA-DFA. Riportare con precisione la descrizione di funzione di transizione e produrre il diagramma di stato (Limitandosi agli stati raggiunti dallo stato iniziale del DFA)

\
Quintupla associata al NFA
$ N eq (Q_N, Sigma,delta_N,q_0,F_N) "dove" $
- $Q_N eq {q_0,q_1,q_2}$
- $Sigma eq {0,1}$
- $F_N eq {q_2}$
- La funzione di transizione $delta_N$ viene descritta con la seguente tabella di transizione
$ mat(delta_N,0,1,epsilon;
q_0,{q_0},{q_0},{q_1};
q_1,{q_2},emptyset,emptyset;
q_2,emptyset,emptyset,emptyset;
augment:#(vline:1, hline:1)) $

Definiamo l'automa secondo la costruzione del teorema Th 1.39 (subset construction)
$ M eq (Q_M,Sigma,delta_M,q_M,F_M) "dove" $
- $Q_M eq P(Q_N)$
- $F_M eq {R in Q_M | R inter F_N eq.not emptyset} eq {R in Q_M | q_2 in R}$
- $q_M eq E(q_0)$
\
Ricordiamo che $E(q)$ è definito ricorsivamente
- Passo base: $q in E(q)$
- Passo ricorsivo: $forall p in E(q), "si ha" delta(p,epsilon) subset.eq E(q)$
\
Calcoliamo le $E(q), forall q in Q_N$ \
$ E(q_0) eq {q_0} union E(q_1) $
$ E(q_1) eq {q_1} $
$ E(q_2) eq {q_2} $
Quindi $E(q_0) eq {q_0,q_1}$
\
\
Dunque $q_m eq {q_0,q_1}$
\ \
Definiamo $delta_M$ ricordando che
$ forall R in Q_N, forall a in Sigma, delta_M(R,a) eq E(union_(p in R)delta_N(p,a)) $
Usiamo la lazy construction, mostrando solo gli stati raggiungibili dallo stato iniziale
$ delta_M({q_o,q_1},0) eq E(delta_N(q_0,0) union delta_N(q_1,0)) eq E({q_0} union {q_1}) eq {q_0,q_1,q_2} $
$ delta_M({q_o,q_1},1) eq E(delta_N(q_0,1) union delta_N(q_1,1)) eq E({q_0} union emptyset) eq {q_0,q_1} $

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), ${q_0,q_1}$, radius: 2em, shape: circle, name: <q0>),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), ${q_0,q_1,q_2}$, radius: 2em, shape: circle, name: <q1>,extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, $0$, "-|>", bend: 0deg),
  edge(<q0>, <q0>, $1$, "-|>", bend: 130deg, loop-angle: 90deg),
)

Ora calcoliamo le transizioni del nuovo stato ${q_0,q_1,q_2}$

$ delta_M({q_0,q_1,q_2},0) eq E(delta_N(q_0,0) union delta_N(q_1,0) union delta_N(q_2,0)) eq E({q_0} union {q_2} union emptyset) eq {q_0,q_1,q_2} $
$ delta_M({q_0,q_1,q_2},1) eq E(delta_N(q_0,1) union delta_N(q_1,1) union delta_N(q_2,1)) eq E({q_0} union emptyset union emptyset) eq {q_0,q_1} $

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), ${q_0,q_1}$, radius: 2em, shape: circle, name: <q0>),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), ${q_0,q_1,q_2}$, radius: 2em, shape: circle, name: <q1>,extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, $0$, "-|>", bend: 0deg),
  edge(<q0>, <q0>, $1$, "-|>", bend: 130deg, loop-angle: 90deg),
  edge(<q1>, <q0>, $1$, "-|>", bend: 50deg),
  edge(<q1>, <q1>, $0$, "-|>", bend: 130deg, loop-angle: 90deg),
)

Abbiamo completato la $delta$ per gli stati raggiungibili dallo stato iniziale ${q_0,q_1}$ \
Ovviamento tutti gli stati in $P(Q_N)$ andrebbero rappresentati ma ci possiamo limitare a considerare solo quelli raggiungibili dallo stato iniziale perchè sono gli unici che saranno considerati per definire il linguaggio accettato \ \
Si può facilmente vedere che
$ L(M) eq {0,1}^*{0} $
Ossia tutte le stringhe che finiscono con $0$

#pagebreak()
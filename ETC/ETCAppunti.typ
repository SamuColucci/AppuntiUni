#set page(paper: "a5")
#set heading(numbering: "1.1")
#set text(lang: "ita")
#set page(numbering: "1")
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#align(center)[
  #block(text(weight: "bold", 2em)[ETC])
  #v(1em)
]

#outline(
  title: [Indice],
  depth: 2,
)

#pagebreak()
= Nozione di Base ETC
== Insiemi
Gli insiemi sono collezioni non ordinata di oggetti o elementi distinti
- Ordine e ridondanza non contano
- *Insieme universale U* è l'insieme di tutti gli elementi pertinenti al contesto
=== Metodi di rappresentazione
- Insieme finito può essere descritto dalla lista dei suoi elementi separati da virgola tra {}
- Insieme infinito può essere descritto mediante la notazione "..."
 - N = {0, 1, 2, . . . , n, . . .}
- Altro modo per definire un insieme è di specificare la proprietà caratteristica dei suoi elementi
  - A = {w | w ha la proprietà P}

==== Esempio di rappresentazione
  - L’ insieme dei numeri interi non negativi pari è
    -  {0, 2, 4, . . . , 2n, . . .} = {2n | n ∈ N, n ≥ 0}
  - L’ insieme dei numeri interi positivi pari è
    - {2, 4, . . . , 2n, . . .} = {2n | n ∈ N, n ≥ 1}
  - L’ insieme dei numeri interi non negativi dispari è
    - {1, 3, 5, 7, . . . , 2n + 1, . . .} = {2n + 1 | n ∈ N, n ≥ 0}

#pagebreak()

=== Definizione Ricorsiva (o Induttiva)
Una definizione ricorsiva di un insieme è composta da:
- Passo base: Definisce uno o più elementi elementari dell'insieme
- Passo ricorsivo: Definisce regole per formare nuovi elementi dell'insieme a partire da quelli già definiti

==== Esempio Definizione Ricorsiva
  Sia A l’insieme definito ricorsivamente nel modo
  seguente
  - Passo base: i1 = 1 ∈ A.
  - Passo ricorsivo: Se ik ∈ A allora ik+1 = ik + 2 ∈ A.

=== Cardinalità
La cardinalità |S| di un insieme finito S è il numero di elementi in S
- Insieme vuoto ∅ ha cardinalità 0

==== Lemma
  Se S e T sono finiti allora $|S ∪ T| = |S| + |T| − |S ∩ T|$
    - Se S e T sono disgiunti allora $|S ∪ T| = |S| + |T|$

=== Sottoinsieme
Siano S e T insiemi, diciamo che S ⊆ T se w ∈ S implica w ∈ T
- Ogni elemento di S è anche un elemento di T

==== Esempio Sottoinsieme
  - S = {ab, ba} e T = {ab, ba, aaa} allora S ⊆ T ma $T subset.not.eq S$
  - S = {ba, ab} e T = {aa, ba} allora $S subset.not.eq T$ e $T subset.not.eq S$

=== Insieme Uguali
Due insiemi T e S sono uguali se S ⊆ T e T ⊆ S

==== Esempio Insiemi Uguali
  - Siano S = {ab, ba} e T = {ba, ab}, allora S ⊆ T e T ⊆ S; quindi S = T

#pagebreak()

=== Unione
Dati due insiemi S e T, la loro unione è l'insieme
- S ∪ T = { w | w ∈ S oppure w ∈ T}

==== Esempio Unione
  - S = {a, ba} e T = ∅, allora S ∪ T = S
  - S = {a, ba} e T = {ϵ} allora S ∪ T = {ϵ, a, ba}

=== Intersezione
Dati due insiemi S e T, la loro intersezione è l'insieme
- S ∩ T = {w | w ∈ S e w ∈ T}

Due insiemi si dicono *disgiunti* se S ∩ T = ∅

=== Differenza
Dati due insiemi S e T, la loro differenza è 
- S - T = { w | w ∈ S e $w in.not T$}

==== Esempio Differenza
  - Sia S = {a, b, bb, bbb} e T = {a, bb, bab} allora S − T = {b, bbb}.
  - Sia S = {ab, ba} e T = {ab, ba} allora S − T = ∅

=== Complemento
Dato un insieme universale U, il completo di un insieme S ⊆ U è
- #overline[S] = {w | w ∈ U, $w in.not S$} = U − S
- #overline[S] è l'insieme di tutti gli elementi di U che non sono in S

=== Sequenze
Una sequenza di oggetti è una lista di oggetti in un qualche ordine
- Denotata scrivendo la lista fra ()
- Ordine e ridondanza sono importanti

Una *k-upla* è una sequenza di k elementi

#pagebreak()

=== Prodotto Cartesiano
Dati due insiemi A e B, il prodotto cartesiano A x B è l'insieme di coppie
- A x B = {(x, y) | $x in A$, $y in B$}
- A x B $eq.not$ B x A
- ∅ x B = ∅
- Se A e B sono insiemi finiti, |A x B| = |A||B|

==== Esempio Prodotto Cartesiano
  - Siano A = {a, ba, bb} e B = {ba}, allora
  - A x B = {(a, ba),(ba, ba),(bb, ba)}
  - B x A = {(ba, a),(ba, ba),(ba, bb)

==== Prodotto Cartesiano di due o più insiemi
  - A1 x . . . x Ak = {(x1, . . . , xk ) | xi ∈ Ai, 1 ≤ i ≤ k}


=== Funzioni
Dati due insiemi non vuoti X e Y, una funzione f : X -> Y è una relazione che associa ad ogni elemento di x in X uno e uno solo elemento y = f(x) in Y
- X Dominio
- Y Codominio
- Occorre definire anche la relazione che associa ogni elemento del dominio a un elemento del codominio
- Un *predicato* o *proprietà* è una funzione il cui range è ${t r u e, f a l s e}$
- Una *proprietà* il cui dominio è un insieme di k-tuple è detto *relazione*, di due tuple è detta *relazione binaria*
  - Si dice *relazione di equivalenza* se è riflessiva (se per ogni x, xRx), transitiva (se per ogni x e y e z, xRy e yRz implica xRz) e simmetrica (se per ogni x e y, xRy implica yRx)

#pagebreak()

==== Classificazioni Funzioni
  - Una funzione $f: X -> Y$ è *iniettiva* se 
  $ forall x, x' in X, x != x' => f(x) != f(x') $
  - Una funzione $f: X -> Y$ è *suriettiva* se 
  $ forall y in Y, exists x in X : y = f(x) $
  - Una funzione $f: X -> Y$ è *biettiva* di X su Y se f è iniettiva e suriettiva

=== Insieme Potenza
Per ogni insieme S, l'insieme potenza (o insieme delle parti) $P(S)$ è l'insieme di tutti i possibili sottoinsiemi di S
$ P(S) = {A | A subset.eq S} $

==== Lemma
 - Se S è un insieme finito allora $ |P(S)| = 2^(|S|) $

#pagebreak()

== Logica Booleana
Un'espressione booleana $Phi$ sulle variabili $x_1,...., x_n$ è soddisfatta da un assegnamento che rende vera $Phi$
- Vero = 1
- Falso = 0

=== Negazione o Not
Rappresenta il valore opposto e si usa il simbolo $not$

=== Congiunzione o And
Vera se entrambi i valori sono veri e si usa il simbolo $and$

=== Disgiunzione o Or
Vera se almeno uno dei due valori è vero e si usa il simbolo $or$

=== Or Esclusivo
Vero se esattamente uno dei due operandi è 1 e usa il simbolo $xor$

=== Uguaglianza
Vera se entrambi gli operandi hanno lo stesso valore e si usa il simbolo $arrow.l.r$

=== Implicazione
Falso se il suo primo operando ha valore vero e il secondo falso, vero in tutti gli altri casi $arrow.r$
- $0 arrow.r 0 eq 1$
- $0 arrow.r 1 eq 1$
- $1 arrow.r 0 eq 0$
- $1 arrow.r 1 eq 1$

=== Relazioni fra Operazioni
- $P or Q eq not(not P and not Q)$
- $P arrow.r Q eq not P or Q$
- $P arrow.r.l Q eq (P arrow.r Q) and (Q arrow.r P)$
- $P xor Q eq not(P arrow.r.l Q)$

=== Legge Distributiva
- $ P and (Q or R) eq (P and Q) or (P and R)$
- $ P or (Q and R) eq (P or Q) and (P or R)$

#pagebreak()
== Dimostrazioni
Ragionamento convincente per dire che un enunciato è vero
- Se un enunciato è falso si usa il controesempio
- Dimostrazione per *assurdo*: Assumiamo che il teorema sia falso per poi dimostrare che questa ipotesi porta ad una contraddizione o assurdo
- Dimostrazione *costruttiva*: Mostrare come costruire l'oggetto
- Dimostrazione per *induzione*: Permette di dimostrare che tutti gli elementi di un insieme infinito godono di una data proprietà
  - Base induttiva: Dimostra che $P(1)$ vero
  - Passo induttivo: Se $P(1)$ vero (*ipotesi induttiva*), allora per ogni $i gt.eq 1$ anche $P(i+1)$ vero
- *Lemma*: Enunciato interessante che serve alla dimostrazione di un enunciato più interessante
#pagebreak()
== Grafi
Un grafo non orientato è un insieme di punti e di linee che connettono alcuni dei punti
- Punti chiamati *nodi*
- Linee chiamate *archi*
- Numero di archi rappresenta il grado del grafo

=== Sottografo
Diciamo che il grafo $G$ è un sottografo di $H$ se i nodi di $G$ sono un sottoinsieme dei nodi di $H$ e gli archi di $G$ sono anche archi di $H$ sui nodi corrispondenti


=== Cammino
Un cammino in un grafo è una sequenza di nodi collegati da archi
- *Cammino semplice*: Un cammino che non contiene nodi ripetuti
- *Grafo connesso*: Se esiste un cammino per ogni coppia di nodi
- *Ciclo*: Un cammino che inizia e termina nello stesso nodo
- *Ciclo semplice*: Contiene almeno tre nodi e ripete solo il primo e ultimo nodo

=== Albero
Un grafo connesso senza cicli semplici
- In un albero con $n$ nodi ci sono sempre esattamente $n-1$ archi
- Presenta una *radice* e i nodi di grado 1 ad eccezione della radice sono detti *foglie*

=== Grafo Orientato o Diretto
Presenta delle frecce che indicano la direzione
- Il numero di frecce che escono da un nodo è il *grado uscente*, mentre il numero di frecce che entrano è detto *grado entrante*
- Archi rappresentati da una coppia ordinata, dove l'ordine indica la direzione
- Un grafo orientato $G$ è $(V,E)$, con $V$ insieme dei nodi ed $E$ è l'insieme degli archi
- Un cammino in cui tutte le frecce puntano nella stessa direzione è detto *cammino orientato* ed è *fortemente connesso*

== Alfabeto
Un insieme finito di elementi. \
Sia $Sigma = {a_1,...,a_k} $ un alfabeto con k simboli, la cardinalità di $|Sigma|$ è k

=== Stringa
Su un alfabeto è una sequenza di simboli dell'alfabeto
- La stringa vuota $epsilon$ non contiene nessun simbolo
- Lunghezza della stringa s è denotata dal numero di simboli |s|

==== Definizione Ricorsiva di Stringa
- Passo base: La stringa vuota $epsilon$ è una stringa
- Passo ricorsivo: Se $w$ è una stringa e $x in Sigma$ è un simbolo dell'alfabeto, allora $w x$ è una stringa


=== *#strong[$bold(Sigma^*)$]*
Dato un alfabeto $Sigma$, denotiamo con $Sigma^*$ l'insieme di tutte le possibili stringhe su $Sigma$
- $Sigma$ e $Sigma^*$ sono insiemi diversi

==== Definizione Ricorsiva di $Sigma^*$
  - Passo base: $epsilon in Sigma^*$
  - Passo ricorsivo: Se $w in Sigma^*$ e $x in Sigma$, allora $w x in Sigma^*$

==== Definizione Ricorsiva di Lunghezza di una Stringa
  - Passo base: $|epsilon|=0$
  - Passo ricorsivo: Se $w$ è una stringa e $x in Sigma$, allora $|w x|=|w|+1$

=== Stringhe Eguali
Due stringhe $ x = a_1 a_2...a_h $e $ y = b_1 b_2...b_k $con $a_i$ e $b_j in Sigma$,
$1 lt.eq i lt.eq h$, $1 lt.eq j lt.eq k$ \
si dicono eguali se $h=k $ e $a_i=b_i$; per
$i=1,...,h$
- Caratteri letti da destra e sinistra sono uguali



=== Concatenazione di Stringhe
Date le stringhe $x = a_1 a_2...a_h$, $y=b_1 b_2...b_k$, con $a_i,b_j in Sigma$, 
$1 lt.eq i lt.eq h$, $1 lt.eq j lt.eq k$, la concatenazione è definita come
$ x dot y = a_1 a_2 ...a_h b_1 b_2...b_k $
Inoltre
$ x epsilon = epsilon x = x $
- Non è commutativa, Siano x e y stringhe $x y eq.not y x $
- La concatenazione è associativa, Siano x,y,z stringhe $(x y )z eq x(y z)$
- Lunghezza di $|x y| eq |x| + |y|$

==== Definizione Ricorsiva di Concatenazione
- Passo base: Se $w in Sigma^*$ allora $ w epsilon eq w in Sigma^*$ 
- Passo ricorsivo: Se $w_1 in Sigma^*, w_2 in Sigma^*, w_2 eq.not epsilon$, $exists w_2 in Sigma^*, x in Sigma$ tali che $w_2 eq w_2^' x $ allora $w_1 dot w_2 = w_1 dot (w_2^' x) eq (w_1 dot w_2^') x in Sigma^*$

=== Potenza di una Stringa
Sia $m gt.eq 0$ un intero non negativo
- Potenza con esponente $m=0$ di una stringa è la stringa vuota $epsilon$
- Per $m gt 0$, la potenza di una stringa $w$ è la concatenazione di $w$ con se stessa $m-1$ volte

==== Definizione Ricorsiva di Potenza
  - Passo base: $w^0 eq epsilon$
  - Passo ricorsivo: $w^m=w^(m-1) w$, per $m gt 0$

=== Sottostringa
$w$ è una sottostringa di s se esistono stringhe $x$ e $y$ tali che $s eq x w y$

==== Esempio Sottostringa
  - 567 è sottostringa di 34567
  - 42 non è sottostringa di 472

=== Inversa di una Stringa
L'inversa $w^R$ di una stringa $w$ è la stringa ottenuta scrivendo i caratteri da destra verso sinistra
$ epsilon^R eq epsilon $ e se $ w eq a_1 a_2...a_n $ con $ a_j$ simboli
$ w^R = a_n a_(n-1)...a_1 $

==== Definizione Ricorsiva dell'Inversa di una Stringa
  - Passo base: $epsilon^R eq epsilon$
  - Passo ricorsivo: Per ogni $x in Sigma^*$ e $sigma in Sigma$, $(x sigma)^R=sigma x^R$
  
=== Precedenze
- $(a b)^2 eq a b a b eq.not a b b eq a b^2$
- $(a b)^R eq b a eq.not a b^R eq a b$

=== Linguaggi
Un linguaggio è un insieme di stringhe su un alfabeto $L subset.eq Sigma^*$
- $#overline[L] eq Sigma^* - L eq {w in Sigma^* | w in.not L}$
- Non sono sempre finiti
- Cardinalità è il numero delle sue stringhe $|L|=|{a b a , a a b}|=2$
- $|∅| eq 0$ 
- $epsilon in.not ∅$
- $∅ eq.not {epsilon}$

==== Esempio Linguaggi 1
 - Sia $Sigma = {a,b}$
 - $L_1 = {a a, a a a}$

#pagebreak()
==== Esempio Linguaggi 2
 - Alfabeto {a, b}
 - Linguaggio $L = {w ∈ {a, b}^*| $la prima lettera di w è b$}$
 - L: insieme delle stringhe su {a, b} che non iniziano con b.
 - NON insieme stringhe che iniziano con a (es. stringa
  vuota ϵ ∈ L)


=== Prodotto di Linguaggi
Dati due linguaggi $S$ e $T$ sull'alfabeto $Sigma$, il prodotto è l'insieme di tutte le stringhe che sono concatenazione di una stringa $S$ e una stringa $T$
$ S T eq S dot T eq { u v in Sigma^* | u in S, v in T} $
- Diversa dal prodotto cartesiano in cui consideriamo le coppie
  - $S × T = {(a, ϵ),(a, b a),(b a, ϵ),(b a, b a),(b b, ϵ)}, S T eq.not S × T$
- Nel prodotto di linguaggi il risultato è un insieme di stringhe (concatenate), mentre nel prodotto cartesiano è un insieme di tuple

==== Esempio Prodotto di Linguaggi
  - Se $S = {a, a a}$ e $T = {ϵ, a, b a},$ allora
  - $S T = {a, a a, a b a, a a a, a a b a}$, $T S = {a, a a, a a a, b a a, b a a a}$


=== Potenza di un Linguaggio
Sia $L$ un linguaggio sull'alfabeto $Sigma$
$ L^0 eq {epsilon} $
$ L^k eq  L^(k-1) L, k gt.eq 1 $

=== Casi Particolari Operazioni sui Linguaggi
- $emptyset^0 eq {epsilon} $
- $L dot emptyset = emptyset dot L eq emptyset $
- $L dot {epsilon} eq {epsilon} dot L eq L$

#pagebreak()

=== Chiusura di Kleene
La chiusura di Kleene di un linguaggio L è
$ L^* eq union.big_(n gt.eq 0) (L^n) $
- $L^*$ è il linguaggio ottenuto concatenando un numero qualsiasi di stringhe L
- $L^* eq {w_1 w_2...w_k | k gt.eq 0, w_i in L, 1 lt.eq i lt.eq k}$
- Con $k=0$, $w_1 w_2...w_k eq epsilon$

==== Esempio Chiusura di Kleene
- Se $L = {a, b}$, allora $L^∗ = {ϵ, a, b, a a, a b, b a, b b, a a a, a a b, a b a, ...}$
- Se $L = emptyset$, allora $L^∗ = {epsilon}$
- Se $L = {epsilon}$, allora $L^∗ = {epsilon}$
- $(L^*)^* eq L^*$

=== Chiusura Positiva
La chiusura positiva si distingue dalla chiusura di Kleene perchè nell'unione non compare la potenza $L^0$
$ L^+ eq union.big_(n gt 0)L^n eq {w_1 w_2...w_k | k gt 0, w_i in L, 1 lt.eq i lt.eq k} $

==== Esempio Chiusura Positiva
- Se $L eq {a}$, allora
- $L^+ eq {a, a a, a a a...} eq {a^n | n gt 0, n in NN}$
- $L^+ eq union.big_(n gt 0) (L^n) eq emptyset eq L$
- $L^+ eq union.big_(n gt 0) (L^n) eq {epsilon} eq L$

#pagebreak()

= Automi Finiti Deterministici
Meccanismo di computazione con poca memoria
- Descrivono comportamenti
- Ricevono in input delle stringhe e risponderanno accettando o rifiutando l'input
- Numero di stati finito
- Unico Stato iniziale
- *Deterministico*: Se e solo se ha esattamente 1 transizione da ogni stato per ogni simbolo

== Usi DFA
- Prima fase del processo di compilazione
 - Legge il codice sorgente e controlla la “correttezza” di quanto scritto: raggruppa i caratteri, interagendo con una tavola di simboli e automi
 - Espande le macro, prepara messaggi di errore, elimina spazi, linee, commenti…
 - Produce in output un flusso di token (ad esempio: numero, operatore) associato ai lessemi (ad esempio: 17, +, :)
- Automi per il pattern matching sia per la bioinformatica che per la sicurezza

== Parti DFA
- Presenta degli stati
  - Es. ${q_0,q_1,q_2,q_3,q_4}$
- Stato iniziale è lo stato da cui inizia l'input, è unico
- Stati accettati che portano ad accettare l'input
- Stati non accettati che portano a rifiutare l'input
- Presenta un alfabeto per l'input
- Stato pozzo o Trappola, non è mai accettante, definisce uno stato non accettante per tutti i simboli dell'alfabeto e dal quale non si può uscire non avendo archi uscenti

#pagebreak()

== Definizione Formale DFA
Un DFA M è una $5$-tupla $(Q,Sigma,delta,q_0,F)$
- *$Q$*:Insieme degli stati
- *$Sigma$*: Alfabeto delle stringhe in input
- *$delta$*: Funzione di transizione tra gli stati $delta: Q times Sigma arrow.r Q$
 - Associa ad una coppia (stato, carattere) un solo stato
 - Può essere definito come: diagramma di stato, tabella di transizione o scrittura esplicita della funzione
 - Esattamente una transizione da ogni stato per ogni simbolo dell’alfabeto (*deterministico*)
- *$q_0$*: Stato iniziale
- *$F$*: Insieme degli stati accettati, $F subset.eq Q$
  - Può essere vuoto (accetta solo $emptyset$), coincidere con l'insieme degli stati $Q$ (accetta tutto $Sigma^*$), o essere un suo sottoinsieme

== Relazione fra DFA e Linguaggi
Dato un automa $M$, con $L(M)$ indichiamo il linguaggio che l'automa riconosce, quindi il linguaggio $L$ è riconosciuto da un automa $M$ se $L(M) eq L$
\

Ogni DFA accetta un insieme di stringhe, quindi un linguaggio L, rifiutando quelle che non sono in L
- Per ogni stringa in $Sigma^*$ l’automa $M$ accetta o non accetta
- Il linguaggio che un DFA riconosce è l'insieme delle stringhe di input per le quali il DFA accetta, ed è *unico*
Sia $A eq (Q,Sigma,delta,q_0,F)$ un automa finito deterministico, il liguaggio accettato o riconosciuto da $A$ è
$ L(A) eq {w in Sigma^* | hat(delta)(q_0,w) in F} $
- *Cammino Accettante*: Cammino che ha come ultimo nodo un nodo accettante
  - Se esiste un cammino accettante, tale cammino è unico (come tutti i cammini)
- Non è possibile costruire gli automi per ogni elemento di $Sigma^*$
- Dato un linguaggio $L$ possiamo avere più automi
- Dato un automa $M$ riconosce un solo linguaggio unico
- Dato un linguaggio $L$, costruire se possibile un automa $M$ che lo riconosce equivale a dire $L eq L(M)$

=== Descrizione Formale delle Stringhe che l'Automa Accetta
Sia $w$ una stringa $w eq a_1 a_2...a_n, a_i in Sigma$
\
L'automa $M$ accetta $w$ se e solo se
$ exists (r_0,r_1...r_n), r_i in Q, r_0 eq q_0, r_n in F $
$ "e" $
$ forall i eq 0,1,...,n-1, delta(r,a_i) eq r_(i+1) $

- Quindi la macchina inzia da una condizione iniziale che appartiene alla sequenza di stati
- La macchina passa da uno stato ad un altro in base ad una funzione di transizione
- La macchina accetta il suo input se termina la lettura in uno stato accettante
$ L(M) eq {w | M "accetta" w} $
#pagebreak()
=== Descrizione Ricorsiva Formale delle Stringhe che l'Automa Accetta
Sia $A eq (Q, Sigma,delta,q_0, F)$ un automa finito deterministico
\
La funzione di transizione estesa $hat(delta):Q times Sigma^* -> Q$ è definita ricorsivamente come segue:
- Passo base:
$ forall q in Q, hat(delta)(q,epsilon) eq q $
Non è la transizione, ma $hat(delta) "è uno stato"$
- Passo Ricorsivo:
$ forall q in Q, w in Sigma^*, a in Sigma, $
$ hat(delta)(q,w a) eq delta(hat(delta)(q,w),a) $

==== Esempio Descrizione Ricorsiva Formale delle Stringhe che l'Automa Accetta

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
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `1`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `0`, "-|>", bend: 130deg),
  edge(<q1>, <q1>, `1`, "-|>", bend: 130deg),
  edge(<q1>, <q2>, `0`, "-|>", bend: -20deg),
  edge(<q2>, <q1>, `0,1`, "-|>", bend: - 20deg),
)

Sia $w eq 0100$
$ hat(delta)(q_0, 0100) eq delta(hat(delta)(q_0,010),0) eq $
$ delta(delta(hat(delta)(q_0,01),0),0) eq $
$ delta(delta(delta(hat(delta)(q_0,0),1),0),0) eq $
$ delta(delta(delta(delta(hat(delta)(q_0,epsilon),0),1),0),0) eq $
Ma $hat(delta)(q_0,epsilon)$ è il passo base quindi:
$ delta(delta(delta(delta(q_0,0),1),0),0) $
Prova della correttezza:
$ hat(delta)(q_0, 0100) eq  delta(delta(delta(delta(q_0,0),1),0),0) eq $
$ delta(delta(delta(q_0,1),0),0) eq $
$ delta(delta(q_1,0),0) eq $
$ delta(q_2,0) eq q_1 $



=== DFA e Linguaggi con Cicli e senza Cicli
- L’assenza di cicli in un automa finito $M$ lungo cammini di accettazione implica che $L(M)$ è finito
- La presenza di un ciclo non implica che il linguaggio sia infinito, ma occorre che sia su un cammino accettante


=== Automa Insieme Vuoto
- $L(M) eq {}$
$ (Q,Sigma,delta,q_0,F) "dove" Q eq {q_0}, Sigma eq {a,b}, F eq emptyset $
$ delta(q_0,a) eq delta(q_0,b)eq q_0 $
- Non è unico 
#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  //node((1,0), $q_2$, radius: 1.5em, shape: circle, extrude: (0, 2pt), name: <q2>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q0>, `a,b`, "-|>", bend: 130deg),
  //edge(<q1>, <q2>, `1`, "-|>", bend: 20deg),
  //edge(<q2>, <q1>, `0`, "-|>", bend: 20deg),
  //edge(<q2>, <q2>, `1`, "-|>", bend: -130deg),
)
#pagebreak()

=== Automa *$Sigma^*$*
- $L(M) eq Sigma^*$

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0, 2pt)),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  //node((1,0), $q_2$, radius: 1.5em, shape: circle, extrude: (0, 2pt), name: <q2>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q0>, `a,b`, "-|>", bend: 130deg),
  //edge(<q1>, <q2>, `1`, "-|>", bend: 20deg),
  //edge(<q2>, <q1>, `0`, "-|>", bend: 20deg),
  //edge(<q2>, <q2>, `1`, "-|>", bend: -130deg),
)

=== Automa Solo Parola Vuota

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0, 2pt)),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>),
  
  // Transizioni dell'automa M2
  //edge(<q0>, <q0>, `a,b`, "-|>", bend: 130deg),
  edge(<q0>, <q1>, `0,1`, "-|>", bend: 20deg),
  //edge(<q2>, <q1>, `0`, "-|>", bend: 20deg),
  edge(<q1>, <q1>, `0,1`, "-|>", bend: -130deg),
)

== Dal DFA al Linguaggio Riconosciuto
Complicato ma sempre possibile grazie ad algoritmi appositi
=== Esempio 1.7
#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>, extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q1>, <q1>, `0`, "-|>", bend: 130deg),
  edge(<q1>, <q2>, `1`, "-|>", bend: -20deg),
  edge(<q2>, <q1>, `0`, "-|>", bend: -20deg),
  edge(<q2>, <q2>, `1`, "-|>", bend: -130deg),
)

Forniamo la descrizione formale:
$ M_2 eq ({q_1,q_2},{0,1},delta,q_1,{q_2}) $
$ mat(delta(q_1,0) eq q_1;
delta(q_2,0) eq q_1;
delta(q_1,1) eq q_2;
delta(q_2,1) eq q_2;
delim:#none) $

Non è presente la parola vuota
$ L(M_2) eq {w "su" {0,1} | w "termina con "1} $
$ L(M_2) eq {w in {0,1}^* | w eq w' 1, w' in {0,1}^*} eq {0,1}^*{1}$



=== Esempio 1.9
#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>,extrude: (0,2pt)),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>),
  
  // Transizioni dell'automa M2
  edge(<q1>, <q1>, `0`, "-|>", bend: 130deg),
  edge(<q1>, <q2>, `1`, "-|>", bend: -20deg),
  edge(<q2>, <q1>, `0`, "-|>", bend: -20deg),
  edge(<q2>, <q2>, `1`, "-|>", bend: -130deg),
)

$ M_3 eq ({q_1,q_2},{0,1},delta,q_1,{q_1}) $

Parola vuota accettata
$ L(M_3) eq {w "su" {0,1} | w eq epsilon "oppure termina con 0"} $
$ L(M_3) eq {w in {0,1}^* | w eq epsilon "oppure" w eq w' 0, w' in {0,1}^*} eq {0,1}^*{0} union {epsilon} $

=== Esempio Slide *$1$*
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
  node((1,1), $q_4$, radius: 1.5em, shape: circle, name: <q4>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `a`, "-|>", bend: 0deg),
  edge(<q0>, <q4>, `b`, "-|>", bend: -20deg),
  edge(<q1>, <q2>, `b`, "-|>", bend: 0deg),
  edge(<q4>, <q4>, `a,b`, "-|>", bend: -130deg),
  edge(<q2>, <q2>, `a,b`, "-|>", bend: -130deg),
  edge(<q1>, <q4>, `a`, "-|>", bend: 0deg),
)

$ L(M) eq {s | s "inizia con" a b} eq $
$ L(M) eq {a b w | w in {a,b}^*} eq $
$ L(M) eq {a b}{a,b}^* $


=== Esempio Slide *$2$*

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
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `a,b`, "-|>", bend: 20deg),
  edge(<q1>, <q0>, `a,b`, "-|>", bend: 20deg),
)

$ L(M) eq {s | "lunghezza di "s "è dispari"} eq $
$ L(M) eq {a a, a b, b a, b b}^*{a,b} eq $
$ L(M) eq ({a,b}{a,b})^*{a,b} $

=== Esempio 1.6

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
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `1`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `0`, "-|>", bend: 130deg),
  edge(<q1>, <q1>, `1`, "-|>", bend: 130deg),
  edge(<q1>, <q2>, `0`, "-|>", bend: -20deg),
  edge(<q2>, <q1>, `0,1`, "-|>", bend: - 20deg),
)

$L(M) eq {w "in" {0,1}^*| w "termina con "1" oppure "$
$"tale che dopo l'ultimo "1" ha un numero pari di 0"} eq$
\
Consideriamo che $w eq w' 1 w'' " dove " w' in{0,1}^* , w'' in {00}^*$
#pagebreak()
=== Esempio 1.13

$ Q eq {q_0,q_1,q_2} $
$ Sigma eq {"RESET",0,1,2} $
- Con RESET torno nello stato iniziale $q_0$
- Leggere $0$ non fa cambiare stato
- Leggere $1$ mi fa spostare nello stato successivo
- Riconosce sicuramente solo RESET e solo $0$
- Se non consideriamo RESET allora accetta le parole in cui la somma è $0 mod 3$
- Quindi il linguaggio accettato dall'automa riguarda le parole in cui la somma è $0 mod 3$ e con RESET la somma viene azzerata, la macchine conserva un conto parziale e RESET lo riporta a $0$ ed accetta i multipli di $3$

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0,2pt)),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,1), $q_1$, radius: 1.5em, shape: circle, name: <q1>),
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q2>, `2`, "-|>", bend: 25deg),
  edge(<q0>, <q0>, `0,<RESET> `, "-|>", bend: 130deg),
  edge(<q0>, <q1>, `1`, "-|>", bend: -20deg),
  edge(<q1>, <q1>, `0`, "-|>", bend: -130deg),
  edge(<q2>, <q2>, `0`, "-|>", bend: 130deg),
  edge(<q1>, <q0>, `2,<RESET>`, "-|>", bend: -20deg),
  edge(<q1>, <q2>, `1`, "-|>", bend: 0deg),
  edge(<q2>, <q0>, `1,<RESET>`, "-|>", bend: 0deg),
  edge(<q2>, <q1>, `2`, "-|>", bend: 25deg),
)
#pagebreak()

== Liguaggi Regolari
Un linguaggio $L$ è definito regolare se e solo se esiste un DFA $M$ che lo riconosce
$ L eq L(M) $
- Non tutti i linguaggi sono regolari, ad es. ${a^n b^n | n gt.eq 0}$, dato che ogni potenza aggiunge un nuovo stato e l'automa si allunga all'infinito

=== Esempio Linguaggi Regolari
- Tutti i linguaggi finiti
- ${a^n b| n gt.eq 0}$
$ L eq {a^n b| n gt.eq 0} eq {b, a b,a a b, a a a b,...} $

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
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `b`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `a`, "-|>", bend: 130deg),
  edge(<q1>, <q2>, `a,b`, "-|>", bend: 0deg),
  edge(<q2>, <q2>, `a,b`, "-|>", bend: 130deg),
)
#pagebreak()

- Tutte le stringhe in ${a,b}^*$ con prefisso $a b$

$ L(M) eq {s | s "inizia con" a b} eq $
$ L(M) eq {a b w | w in {a,b}^*} eq $
$ L(M) eq {a b}{a,b}^* $

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
  node((1,1), $q_4$, radius: 1.5em, shape: circle, name: <q4>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `a`, "-|>", bend: 0deg),
  edge(<q0>, <q4>, `b`, "-|>", bend: -20deg),
  edge(<q1>, <q2>, `b`, "-|>", bend: 0deg),
  edge(<q4>, <q4>, `a,b`, "-|>", bend: -130deg),
  edge(<q2>, <q2>, `a,b`, "-|>", bend: -130deg),
  edge(<q1>, <q4>, `a`, "-|>", bend: 0deg),
)


- Tutte le stringhe in ${0,1}^*$ che contengono $001$ come fattore
$ L eq {x 001 y | x,y in {0,1}^*} $
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
  edge(<q0>, <q1>, `0`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `1`, "-|>", bend: 130deg),
  edge(<q1>, <q0>, `1`, "-|>", bend: 30deg),
  edge(<q1>, <q2>, `0`, "-|>", bend: 0deg),
  edge(<q2>, <q2>, `0`, "-|>", bend: 130deg),
  edge(<q2>, <q3>, `1`, "-|>", bend: 0deg),
  edge(<q3>, <q3>, `0,1`, "-|>", bend: 130deg),
)

Presenza del cappio relativo al numero $1$ spezzerebbe il fattore $001$
#pagebreak()
- Tutte le stringhe su ${0,1}$ che hanno un numero dispari di $1$
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
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `1`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `0`, "-|>", bend: 130deg),
  edge(<q1>, <q0>, `1`, "-|>", bend: 30deg),
  edge(<q1>, <q1>, `0`, "-|>", bend: 130deg)
)

== Calcolo Correttezza Automa
Dovrei dimostrare che se per $L$ ho disegnato un DFA $M eq (Q,Sigma,delta,q_0,F)$ si ha
$ w in L <=> hat(delta)(q_0,w) in F $
Tuttavia la prova per induzione potrebbe non essere facile
#pagebreak()
== Esempio Tecnica Progettazione Diretta DFA senza Calcolo Correttezza

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

Abbiamo osservato che $forall w in D "si ha che" |w|_b eq 2k +1, k gt.eq 0$
\
Quindi sto contando sia $a$ che $b$ dispari, *entrambi* devono essere dispari
$ D_a eq {w in {a,b}^* | |w|_a eq 2k+1,k gt.eq 0} $
$ D_b eq {w in {a,b}^* | |w|_b eq 2n+1,n gt.eq 0} $
Quindi
$ D eq D_a inter D_b $
#pagebreak()
E quindi sappiamo anche
$ D_("even") eq {w in {a,b}^* | |w| eq 2h,h gt.eq 0} $
$ D_a eq {w in {a,b}^* | |w|_a eq 2k+1,k gt.eq 0} $
$ D eq D_("even") inter D_a $

== Chiusura Linguaggi Regolari e Dimostrazione Correttezza DFA

Dati due linguaggi $L_1 "e" L_2$ regolari
- $L_1 union L_2$
- $L_1 dot L_2$
- $L_1^*$
- $L_1^R$ (Reversal)
- $overline(L_1)$ (Complemento)
- $L_1 inter L_2$
Sono tutti regolari

=== Operazioni Regolari
Siano $A$ e $B$ linguaggi, definiamo le operazioni regolari unione, concatenazione e star
- *Unione: *$A union B eq {x | x in A "oppure" x in B}$
- *Concatenazione: *$A dot B eq {x y | x in A, y in B}$
- *Star: *$A^* eq {w_1 w_2...w_k | k gt.eq 0, w_i in A, 1 lt.eq i lt.eq k} eq$$union.big_(n gt.eq 0) (A^k)$

=== Chiusura
Una classe di oggetti è chiusa rispetto ad un'operazione se l'applicazione di questa questa operazione a elementi della classe restituisce un oggetto ancora della classe
- *Chiusura Classe REG*: La classe REG è chiuso rispetto alle operazioni regolari, quindi comunque prendo 2 linguaggi regolari e faccio $union dot *$ ottengo comunque un linguaggio regolare
- *Esempio*: $NN$ è chiuso rispetto a $+$ e $times$, ma non è chiuso rispetto a $:$
#pagebreak()
== Teorema 1.25 Chiusura Classe REG Unione
La classe REG è chiuso rispetto alle operazioni regolari
=== Idea della Dimostrazione 
$ L_1 "e" L_2 => L_1 union L_2 "regolare" $
$ exists M_1 "t.c" L_1 eq L(M_!) "e" exists M_2 "t.c" L_2 eq L(M_2) $
$ M "t.c" L(M) eq L_1 union L_2 $
Va dimostrato per ogni linguaggio $forall L_1,L_2 "regolari", L_1 union L_2 "è regolare"$
\
Automa non copia, una volta processata una stringa e non la più usare, per farlo bisogna fare in parallelo, utilizzando una coppia di stati
\
Dobbiamo costruire un automa $M$ che accetta se e solo se una delle due accetta (Unione di Linguaggi)

=== Dimostrazione
Sia $M_1 eq (Q_1,Sigma,delta_1,q_1,F_1)$ un DFA t.c. $L(M_1) eq L_1$ \
Sia $M_2 eq (Q_2,Sigma,delta_2,q_2,F_2)$ un DFA t.c. $L(M_2) eq L_2$
\ \
Definiamo $M eq (Q,Sigma,delta,q_0,F)$ un DFA t.c. $L(M) eq L_1 union L_2$
\
Dobbiamo dimostrare il tale che della definizione
$ Q eq {(r_1,r_2)| r_1 in Q_1, r_2 in Q_2} eq Q_1 times Q_2 $
Con $q_0 eq (q_1,q_2)$
$ F eq {(r_1,r_2)| r_1 in F_1 "oppure" r_2 in F_2} eq (F_1 times Q_2) union (Q_1 times F_2) $
Di conseguenza
$ forall a in Sigma "e" forall(r_1,r_2) in Q , space delta((r_1,r_2),a) eq (delta_1(r_1,a),delta_2(r_2,a)) $
#pagebreak()
Quindi
$ w in L(M)  <=> w in L_1 union L_2 $
$ hat(delta)(q_0,w) in F <=> w in L_1 union L_2 $
$ <=> hat(delta)_1(q_1,w) in F_1 "oppure" hat(delta)_2(q_2,w) in F_2 $
Per una prova formale bisognerebbe
$ => "Vera per costruzione" $
$ arrow.l.double "Si dimostra per induzione" $
Ne consegue che $|Q| eq |Q_1|Q_2|$, rispetto ad un automa creato col processo creativo, con questo metodo potrebbe avere un numero di stati maggiore ma funziona sempre

- Se i due linguaggi non sono sullo stesso alfabeto, prima di fare la costruzione dovrei estendere i due linguaggi e i due automiù sull’alfabeto unione, in modo da poter garantire che l’automa prodotto sia ben definito per ogni stato (coppia di stati) su ogni simbolo
#pagebreak()
== Teorema 1.25 Bis Chiusura Classe REG Intersezione
Sebbene l'intersezione non sia una delle tre operazioni regolari base (unione, concatenazione, stella), la classe REG è chiusa anche rispetto all'intersezione \
La costruzione è identica a quella dell'unione, ma cambiano gli stati finali: l'automa deve accettare se e solo se *entrambi* gli automi originali accettano \
Sia $M_1 eq (Q_1,Sigma,delta_1,q_1,F_1)$ un DFA t.c. $L(M_1) eq L_1$ \
Sia $M_2 eq (Q_2,Sigma,delta_2,q_2,F_2)$ un DFA t.c. $L(M_2) eq L_2$
\ \
Definiamo $M eq (Q,Sigma,delta,q_0,F)$ un DFA t.c. $L(M) eq L_1 inter L_2$
\
Dobbiamo dimostrare il tale che della definizione
$ Q eq {(r_1,r_2)| r_1 in Q_1, r_2 in Q_2} eq Q_1 times Q_2 $
Con $q_0 eq (q_1,q_2)$
$ F eq {(r_1,r_2)| r_1 in F_1 "e" r_2 in F_2} eq F_1 times F_2 $
Di conseguenza
$ forall a in Sigma "e" forall(r_1,r_2) in Q , space delta((r_1,r_2),a) eq (delta_1(r_1,a),delta_2(r_2,a)) $
$ hat(delta)(q_0,w) in F <=> w in L_1 inter L_2 $
$ <=> hat(delta)_1(q_1,w) in F_1 "e" hat(delta)_2(q_2,w) in F_2 $
#pagebreak()
=== Esempio 1
$ D eq {w in {a,b}^* | |w| eq 2h, h gt.eq 0 "e" |w|_a eq 2k +1, k gt.eq 0} $
Quindi devono avere anche un numero dispari di $b$ essendo $Sigma eq {a,b}$
$ D eq {w in {a,b}^* | |w|_a eq 2n+1, n gt.eq 0 "e" |w|_b eq 2k +1, k gt.eq 0} $

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

Ma sappiamo che
$ D_("even") eq {w in {a,b}^* | |w| eq 2h,h gt.eq 0} $
$ D_a eq {w in {a,b}^* | |w|_a eq 2k+1,k gt.eq 0} $
$ D eq D_("even") inter D_a $
$M_("even")$

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>,extrude: (0,2pt)),
  node((1,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>),

  
  // Transizioni dell'automa M2
  edge(<q1>, <q2>, `a,b`, "-|>", bend: 0deg),
  edge(<q2>, <q1>, `a,b`, "-|>", bend: -50deg),
)
#pagebreak()
$M_a$

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $p_1$, radius: 1.5em, shape: circle, name: <p1>),
  node((1,0), $p_2$, radius: 1.5em, shape: circle, name: <p2>,extrude: (0,2pt)),

  
  // Transizioni dell'automa M2
  edge(<p1>, <p2>, `a`, "-|>", bend: 0deg),
  edge(<p2>, <p1>, `a`, "-|>", bend: -50deg),
  edge(<p1>, <p1>, `b`, "-|>", bend: -130deg),
  edge(<p2>, <p2>, `b`, "-|>", bend: -130deg),
)

Usiamo *Lazy Construction*: Partiamo dallo stato iniziale dell’automa prodotto e via via lo completiamo considerando la transizione partendo da quello stato su tutti i simboli dell’alfabeto.
\
\
- Quando non ho più transizione uscenti finisco la costruzione.
- L'automa ha $|Q_1||Q_2|$ stati, ma può capitare che non ci siano transazioni che li collegano a partire dallo stato iniziale e quindi non li disegno, ma ci sono

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $mat(q_0;p_0)$, radius: 1.5em, shape: circle, name: <qpp>),
  node((1,0),$mat(q_1;p_1)$, radius: 1.5em, shape: circle, name: <qdp>),
  node((0,1), $mat(q_1;p_0)$, radius: 1.5em, shape: circle, name: <qpd>),
  node((1,1), $mat(q_0;p_1)$, radius: 1.5em, shape: circle, name: <qdd>,extrude: (0,2pt)),

  
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

Se avessimo considerato $ D eq {w in {a,b}^* | |w|_a eq 2n+1, n gt.eq 0 "oppure" |w|_b eq 2k +1, k gt.eq 0} $
Sarebbero cambiati solo gli stati finali, e l'unico non finale sarebbe stato $mat(q_1;p_0)$

=== Esempio 2
- Costruire un DFA che riconosce le parole che hanno un numero dispari di b oppure un numero pari di a

$ L eq {w in {a,b}^* | |w|_b eq 2k+1,k gt.eq 0 "oppure" |w|_a eq 2h, h gt.eq 0} $
Lo posso riscrivere come

$ L_1 eq {w in {a,b}^* | |w|_b eq 2k+1,k gt.eq 0} $

$ L_2 eq {w in {a,b}^* | |w|_a eq 2h, h gt.eq 0} $
$ L eq L_1 union L_2 $

$M_1$

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q1>),
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q2>, extrude: (0,2pt)),

  
  // Transizioni dell'automa M2
  edge(<q1>, <q2>, `b`, "-|>", bend: 0deg),
  edge(<q2>, <q1>, `b`, "-|>", bend: -50deg),
  edge(<q2>, <q2>, `a`, "-|>", bend: -130deg),
  edge(<q1>, <q1>, `a`, "-|>", bend: -130deg),
)

$M_2$

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $p_0$, radius: 1.5em, shape: circle, name: <p1>, extrude: (0,2pt)),
  node((1,0), $p_1$, radius: 1.5em, shape: circle, name: <p2>),

  
  // Transizioni dell'automa M2
  edge(<p1>, <p2>, `a`, "-|>", bend: 0deg),
  edge(<p2>, <p1>, `a`, "-|>", bend: -50deg),
  edge(<p1>, <p1>, `b`, "-|>", bend: -130deg),
  edge(<p2>, <p2>, `b`, "-|>", bend: -130deg),
)
#pagebreak()
Uso Lazy Construction
$M$

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $vec(q_0,p_0,delim: #none)$, radius: 1.5em, shape: circle, name: <q0p0>, extrude: (0,2pt)),
  node((1,0), $vec(q_0,p_1,delim: #none)$, radius: 1.5em, shape: circle, name: <q0p1>),
  node((0,1), $vec(q_1,p_0,delim: #none)$, radius: 1.5em, shape: circle, name: <q1p0>, extrude: (0,2pt)),
  node((1,1), $vec(q_1,p_1,delim: #none)$, radius: 1.5em, shape: circle, name: <q1p1>, extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0p0>, <q0p1>, `a`, "-|>", bend: 0deg),
  edge(<q0p0>, <q1p0>, `b`, "-|>", bend: 0deg),
  edge(<q0p1>, <q0p0>, `a`, "-|>", bend: -50deg),
  edge(<q0p1>, <q1p1>, `b`, "-|>", bend: 0deg),
  edge(<q1p0>, <q1p1>, `a`, "-|>", bend: 0deg),
  edge(<q1p0>, <q0p0>, `b`, "-|>", bend: 50deg),
  edge(<q1p1>, <q1p0>, `a`, "-|>", bend: 50deg),
  edge(<q1p1>, <q0p1>, `b`, "-|>", bend: -50deg),
)

=== Esempio 3
- Progettare un DFA che riconosce tutte le stringhe su {0,1} che contengono 101 oppure 11 come sottostringa

$M_1$: 101 come fattore

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
  node((3,0), $q_3$, radius: 1.5em, shape: circle, name: <q4>,extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `1`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `0`, "-|>", bend: 130deg),
  edge(<q1>, <q2>, `0`, "-|>", bend: 0deg),
  edge(<q2>, <q4>, `1`, "-|>", bend: 0deg),
  edge(<q4>, <q4>, `0,1`, "-|>", bend: -130deg),
  edge(<q2>, <q0>, `0`, "-|>", bend: 40deg),
  edge(<q1>, <q1>, `1`, "-|>", bend: 130deg),
)
#pagebreak()
$M_2$: 11 come fattore

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $p_0$, radius: 1.5em, shape: circle, name: <q0>),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $p_1$, radius: 1.5em, shape: circle, name: <q1>),
  node((2,0), $p_2$, radius: 1.5em, shape: circle, name: <q2>,extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `1`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `0`, "-|>", bend: 130deg),
  edge(<q2>, <q2>, `0,1`, "-|>", bend: 130deg),
  edge(<q1>, <q2>, `1`, "-|>", bend: 0deg),
  edge(<q1>, <q0>, `0`, "-|>", bend: 40deg),
)

Applichiamo Lazy Construction

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $vec(q_0,p_0,delim: #none)$, radius: 1.5em, shape: circle, name: <q0p0>),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
 
  node((1,0), $vec(q_1,p_1,delim: #none)$, radius: 1.5em, shape: circle, name: <q1p1>),
  node((1,1), $vec(q_1,p_2,delim: #none)$, radius: 1.5em, shape: circle, name: <q1p2>,extrude: (0, 2pt)),
  node((2,0), $vec(q_2,p_0,delim: #none)$, radius: 1.5em, shape: circle, name: <q2p0>),
  node((2,1), $vec(q_2,p_2,delim: #none)$, radius: 1.5em, shape: circle, name: <q2p2>,extrude: (0, 2pt)),
  node((3,1), $vec(q_3,p_2,delim: #none)$, radius: 1.5em, shape: circle, name: <q3p2>,extrude: (0, 2pt)),
  node((2,2), $vec(q_0,p_2,delim: #none)$, radius: 1.5em, shape: circle, name: <q0p2>,extrude: (0, 2pt)),
  node((3,0), $vec(q_3,p_1,delim: #none)$, radius: 1.5em, shape: circle, name: <q3p1>,extrude: (0, 2pt)),
  node((3.9,0), $vec(q_3,p_0,delim: #none)$, radius: 1.5em, shape: circle, name: <q3p0>,extrude: (0, 2pt)),
  // Transizioni dell'automa M2
  edge(<q0p0>, <q1p1>, `1`, "-|>", bend: 0deg),
  edge(<q0p0>, <q0p0>, `0`, "-|>", bend: 130deg),
  edge(<q1p1>, <q1p2>, `1`, "-|>", bend: 0deg),
  edge(<q1p1>, <q2p0>, `0`, "-|>", bend: 0deg),
  edge(<q1p2>, <q1p2>, `1`, "-|>", bend: -130deg, loop-angle: 0deg),
  edge(<q1p2>, <q2p2>, `0`, "-|>", bend: 0deg),
  edge(<q2p2>, <q3p2>, `1`, "-|>", bend: 0deg),
  edge(<q3p2>, <q3p2>, `0,1`, "-|>", bend: -130deg, loop-angle: 130deg),
  edge(<q2p2>, <q0p2>, `0`, "-|>", bend: 0deg),
  edge(<q0p2>, <q1p2>, `1`, "-|>", bend: 0deg),
  edge(<q2p0>, <q3p1>, `1`, "-|>", bend: 0deg),
  edge(<q2p0>, <q0p0>, `0`, "-|>", bend: -40deg),
  edge(<q3p1>, <q3p2>, `1`, "-|>", bend: 0deg),
  edge(<q3p1>, <q3p0>, `0`, "-|>", bend: 0deg),
  edge(<q3p0>, <q3p1>, `1`, "-|>", bend: -50deg),
  edge(<q3p0>, <q3p0>, `0`, "-|>", bend: -130deg),
  edge(<q0p2>, <q0p2>, `0`, "-|>", bend: -130deg),
)

$ |Q|eq |Q_1||Q_2| $
Sono disegnati solo gli stati raggiugiili dallo stato iniziale, ci sono stati non raggiungibili come $vec(q_0,p_1)$, ma sono comunque presenti e definiti nella funzione di transizione

$ L(M) eq L_1 union L_2 $

Uso metodo creativo
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
  node((3,0), $q_3$, radius: 1.5em, shape: circle, name: <q4>,extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `1`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `0`, "-|>", bend: 130deg),
  edge(<q1>, <q4>, `1`, "-|>", bend: 50deg),
  edge(<q2>, <q4>, `1`, "-|>", bend: 0deg),
  edge(<q4>, <q4>, `0,1`, "-|>", bend: -130deg),
  edge(<q2>, <q0>, `0`, "-|>", bend: 40deg),
  edge(<q1>, <q2>, `0`, "-|>", bend: 0deg),
)

Abbiamo più stati rispetto al metodo creativo, ma l'automa è corretto grazie al Teorema 1.25

#pagebreak()

== Teorema (4.5 HUM) Chiusura Classe REG Complemento
La classe REG è chiusa rispetto all'operazione di complemento
$ #overline[L]_1 eq Sigma^* - L_1 $
Creo una copia di $M_1$ che risolve una condizione e poi complemento gli stati per ottenere quindi il complemento di $L_1$.
\
Si prova attraverso la dimostrazione costruttiva sull'unione.
\
Un'altra prova è rispetto la chiusura all'intersezione, non costruttiva.
\
Si possono applicare le leggi di DeMorgan $ L_1 inter L_2 = overline(overline(L_1) union overline(L_2)) $
- $L_1,L_2$ regolari
- $overline(L_1),overline(L_2)$ regolari
- $overline(L_1) union overline(L_2)$ regolari
- $overline(overline(L_1) union overline(L_2))$ regolari
- $L_1 inter L_2$ regolari

== Teorema 1.26 Chiusura Classe REG Concatenazione
- *Idea*: L'automa accetta solo se l'input può essere diviso in due parti, la prima accettata dal primo automa e la seconda parte dal secondo automa, quindi una computazione in parallelo


== Organizzazione Riposta DFA con Teorema Chiusura
1) Scrivete esplicitamente che fornite un DFA che riconosce il linguaggio sfruttando le proprietà di chiusura (e dite quale). Disegnate i 2 automi da cui partite e riportate le quintuple, esplicitando anche le tabelle di transizione
\ \
2) Riportate la definizione dell’automa prodotto, cioè la quintipla così come data nella prova del Teorema 1.25, specificando chi è lo stato iniziale e quali sono gli stati finali di Q1xQ2
\ \
3) Per la funzione di transizione, dopo aver riportato la definizione nel 2) dovete esplicitarla: o scrivete la tabella di transizione o il diagramma di stato. Questo servirà quando cercheremo di fornire (nelle prossime lezioni) una forma al linguaggio accettato, che diventa complicato capire leggendo la tabella di transizione. Nel fare il diagramma di stato, dichiarate che usate la lazy construction, quindi che rappresentate solo gli stati raggiungibili dallo stato iniziale. Eventuali stati di Q1xQ2 non disegnati, sono stati su cui la funzione di transizione è definita ma non viene esplicitata perchè non contribuiscono alla determinazione del linguaggio accettato dall’automa.

= Automi Finiti Non Deterministici
- Consentiamo $epsilon$-transizioni, aggiungendo la stringa vuota $epsilon$
  - La computazione si dive in più copie parallele per ogni scelta
  - Con $epsilon$, quindi, una computazione resta nello stato ed un'altra segue la transizione, ma la stringa rimane sempre unica
- Eliminiamo l'obbligo che per ogni stato esista esattamente una transizione per ogni simbolo dell'alfabeto

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
  node((3,0), $q_3$, radius: 1.5em, shape: circle, name: <q4>,extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `1`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `0,1`, "-|>", bend: 130deg),
  edge(<q2>, <q4>, `1`, "-|>", bend: 0deg),
  edge(<q4>, <q4>, `0,1`, "-|>", bend: -130deg),
  edge(<q1>, <q2>, $0,epsilon$, "-|>", bend: 0deg),
)

Quindi una computazione resta in $q_1$ dove non leggo $1$, mentre in parallelo un'altra va in $q_3$ dove posso leggere $1$, quindi esplorazione di tutti i possibili cammini.
\
\
Con $epsilon$ non consumo l'input.

\
Dove non ci sono transizione per alcuni simboli dell'alfabeto abbiamo $emptyset$.
\ \
Una computazione è accetta se almeno un cammino per quella stringa è accettato.
\ \
Si può sempre esprimere un NFA come un DFA0

- Albero della computazione rispetto l'automa precedente

#diagram(
  node-stroke: 1pt,
  spacing: 3em,
  edge((-0.8,0), (0,0), "-|>"),
  // Livello 0: Start
  node((0,0), $q_0$, name: <start>),
  edge(<start>, <start1>, ``, "-|>"),
  node((0,1), $q_0$, name: <start1>),
  
  // Livello 1: Lettura di '1'
  node((-1,2), $q_0$, name: <l1_q0>),
  node((1,2), $q_2$, name: <l1_q1>),
  node((0,2), $q_1$, name: <l1_q2>),
  
  edge(<start1>, <l1_q0>, ``, "-|>"),
  edge(<start1>, <l1_q2>, ``, "-|>"),
  edge(<start1>, <l1_q1>, ``, "-|>"),
  
  // Livello 2: Lettura di '0'
  node((-1,3), $q_0$, name: <l2_q0>),
  node((0,3), $q_2$, name: <l2_q2>), // q1 -> q2 leggendo 0 (grazie alla epsilon o transizione diretta)
  
  edge(<l1_q0>, <l2_q0>, ``, "-|>"),
  edge(<l1_q2>, <l2_q2>, ``, "-|>"),
  
  // Livello 3: Lettura di '1'
  node((-1.5,4), $q_0$, name: <l3_q0>),
  node((-0.5,4), $q_2$, name: <l3_q1>),
  node((-0.999,4), $q_1$, name: <l3_q2>),
  node((1,4), $q_3$, name: <l3_q3>, extrude: (0, 2pt)), // Stato finale!
  
  edge(<l2_q0>, <l3_q0>, ``, "-|>"),
  edge(<l2_q0>, <l3_q2>, ``, "-|>"),
  edge(<l2_q0>, <l3_q1>, ``, "-|>"),
  edge(<l2_q2>, <l3_q3>, ``, "-|>"),
  
  // Etichette laterali per i passi
  node((-2.5, 0), [Start:], stroke: none),
  node((-2.5, 1), [Leggi $0$], stroke: none),
  node((-2.5, 2), [Leggi $1$], stroke: none),
  node((-2.5, 3), [Leggi $0$], stroke: none),
  node((-2.5, 4), [Leggi $1$], stroke: none),
)
#pagebreak()
== Linguaggio Accettato o Riconosciuto NFA
Un NFA accetta tutte e sole le stringhe di $Sigma^*$ per le quali esiste un cammino di accettazione, ovviamente non è detto che esista sempre un cammino e  che sia unico
- Accetto la stringa vuota se lo stato iniziale è finale, oppure se esiste un path dallo stato iniziale ad uno stato finale ottenuto seguendo esclusivamente transizioni etichettate con la stringa vuota

Sia $A eq {Q,Sigma,delta,q_0,F}$ un automa non deterministico, il linguaggio accettato o riconosciuto da $A$ è
$ L(A) eq {w in Sigma^* | hat(delta)(q_0,w) inter F eq.not emptyset} $

== Semplici NFA
- $L(M) eq emptyset$
#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>),
)

- $L(M) eq {epsilon}$

#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,0), (0,0), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,0), $q_0$, radius: 1.5em, shape: circle, name: <q0>,extrude: (0, 2pt)),
  
)

== Esempio NFA
=== Esempio 1
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
  node((3,0), $q_3$, radius: 1.5em, shape: circle, name: <q4>,extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `1`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `0,1`, "-|>", bend: 130deg),
  edge(<q2>, <q4>, `1`, "-|>", bend: 0deg),
  edge(<q1>, <q2>, $0,1$, "-|>", bend: 0deg),
)
$ L(M) eq {w in {0,1}^+ | w "ha" 1 "nella terza posizione dalla fine"} $
$ L(M) eq {w in {0,1}^+ | w eq x l y,x in {0,1}^*, y in {0,1}^2} $

#pagebreak()
=== Esempio 2
#diagram(
  node-stroke: 1pt,
  spacing: 4em,
  
  // Stato iniziale (freccia che arriva da sinistra)
  edge((-0.8,1), (0,1), "-|>"),
  
  // Stato q1: Cerchio singolo
  node((0,1), $q_0$, radius: 1.5em, shape: circle, name: <q0>),
  
  // Stato q2: DOPPIO CERCHIO (Stato Accettante)
  // Usiamo extrude: (0, 2pt) per creare il secondo cerchio esterno
  node((1,0), $q_1$, radius: 1.5em, shape: circle, name: <q1>,extrude: (0,2pt)),
  node((2,0), $q_2$, radius: 1.5em, shape: circle, name: <q2>),
  node((1,2), $q_3$, radius: 1.5em, shape: circle, name: <q3>),
  node((1,1), $q_4$, radius: 1.5em, shape: circle, name: <q4>,extrude: (0,2pt)),
  node((2,1), $q_5$, radius: 1.5em, shape: circle, name: <q5>),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, $epsilon$, "-|>", bend: 0deg),
  edge(<q1>, <q2>, `0`, "-|>", bend: 40deg),
  edge(<q2>, <q1>, `0`, "-|>", bend: 40deg),
  edge(<q0>, <q4>, $epsilon$, "-|>", bend: 0deg),
  edge(<q4>, <q5>, $0$, "-|>", bend: 0deg),
  edge(<q5>, <q3>, $0$, "-|>", bend: 0deg),
  edge(<q3>, <q4>, $0$, "-|>", bend: 0deg),
)

$ L(M) eq$ accetta tutte le stringhe della forma $0^k$ con $k$ multiplo di 2 o 3

#pagebreak()
=== Esempio 3
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
  node((3,0), $q_3$, radius: 1.5em, shape: circle, name: <q4>,extrude: (0,2pt)),
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, `1`, "-|>", bend: 0deg),
  edge(<q0>, <q0>, `0,1`, "-|>", bend: 130deg),
  edge(<q2>, <q4>, `1`, "-|>", bend: 0deg),
  edge(<q4>, <q4>, `0,1`, "-|>", bend: -130deg),
  edge(<q1>, <q2>, $0,epsilon$, "-|>", bend: 0deg),
)
$ N eq (Q,Sigma,delta,q_1,F) $
$ Q eq {q_1,q_2,q_3,q_4} $
$ Sigma eq {0,1} $
$ mat(space,0,1,epsilon;
q_1,{q_1},{q_1,q_2},emptyset;
q_2,{q_3},emptyset,{q_3};
q_3,emptyset,{q_4},emptyset;
q_4,{q_4},{q_4},emptyset;
;augment: #(hline: 1, vline: 1)
)
$
$ q_1 "è lo stato iniziale" $
$ F eq {q_4} $
#pagebreak()
== Definizione Formale NFA
Un automa a stati finiti non deterministico è una quintupla \ $A eq (Q,Sigma,delta,q_0,F)$
- $Q$: Insieme finito degli stati
- $Sigma$: Alfabeto finito
- $q_0 in Q$: Stato iniziale
- $delta : (Q times Sigma_epsilon) arrow.r P(Q)$: Funzione di transizione con $Sigma_epsilon eq Sigma union {epsilon}$ che traduce il comportamento non deterministico dell'automa, \ $P(Q)$ è l'insieme potenza, ovvero la collezione di tutti i possibili insiemi
- $F subset.eq Q$: Insieme degli stati finali

== Epsilon-Chiusura (HUM 2.5.3-2.5.4)
Sia $A eq (Q,Sigma,delta,q_0,F)$ un automa finito non deterministico, sia $q in Q$.
\
La $epsilon$-chiusura $E(q)$ di $q$ è un sottoinsieme di $Q$ definito ricorsivamente come segue:
- Passo base: $q in E(q)$
- Passo ricorsivo: $forall p in E(q), delta(p,epsilon) subset.eq E(q)$
Quindi sia $R subset.eq Q$, la $epsilon$-chiusura $E(R)$ di $R$ è \
$ E(R) eq union_(q in R) E(q) $
- $epsilon$-chiusura non è mai $emptyset$, essendo l'insieme con almeno il primo stato. \
- Rappresenta tutti gli stati raggiungibili con le $epsilon$-transizioni
- Per ogni stato in $R$, considero le $epsilon$-chiusure di ogni stato
#pagebreak()
=== Esempio *$epsilon$*-chiusura
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
  edge(<q0>, <q0>, $a$, "-|>", bend: 130deg),
  edge(<q1>, <q1>, $b$, "-|>", bend: 130deg),
  edge(<q1>, <q2>, $epsilon$, "-|>", bend: 0deg),
  edge(<q2>, <q2>, $c$, "-|>", bend: 130deg),
)

Calcolo $E(q) eq ?$
- $q_0 in E(q_0)$, quindi $E(q_0) eq {q_0,$ 
- $delta(q_0,epsilon) eq {q_1} arrow.r q_1 in E(q_0)$, quindi $E(q_0) eq {q_0,q_1$
- $delta(q_1,epsilon) eq {q_2} arrow.r q_2 in E(q_0)$, quindi $E(q_0) eq {q_0,q_1,q_2$ 
- $delta(q_2,epsilon) eq emptyset$, quindi $E(q_0) eq {q_0,q_1,q_2}$
Quindi considero la $delta$ e $epsilon$-chiusura

- Altro metodo
- $E(q_0) eq {q_0} union E(q_1)$
- $E(q_1) eq {q_1} union E(q_2)$
- $E(q_2) eq {q_2}$

Quindi è equivalente
- $E(q_0) eq {q_0,q_1,q_2}$
- $E(q_1) eq {q_1,q_2}$
- $E(q_2) eq {q_2}$

#pagebreak()

== Funzione di Transizione Estesa NFA
Sia $A eq (Q,Sigma,delta,q_0,F)$ un automa finito non deterministico, la funzione di transizione estesa $hat(delta):Q times Sigma^* arrow.r P(Q)$ è definita ricorsivamente come segue
\

- Passo base: $forall q in Q$, $space$$hat(delta)(q,epsilon) eq E(q)$
- Passo ricorsivo: $forall q in Q, w in Sigma^*, a in Sigma,$
$ hat(delta)(q,w a) eq E(union_(p in hat(delta)(q,w))delta(p,a)) eq $
$ union_(p in hat(delta)(q,w)) E(delta(p,a))  $
Quindi per ogni possibili cammino in cui lo stato segue una transizione in $a$

=== Esempio Funzione di Transizione Estesa
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
  edge(<q0>, <q0>, $a$, "-|>", bend: 130deg),
  edge(<q1>, <q1>, $b$, "-|>", bend: 130deg),
  edge(<q1>, <q2>, $epsilon$, "-|>", bend: 0deg),
  edge(<q2>, <q2>, $c$, "-|>", bend: 130deg),
)

- $E(q_0) eq {q_0,q_1,q_2}$
- $E(q_1) eq {q_1,q_2}$
- $E(q_2) eq {q_2}$

Calcolo $hat(delta)(q_0,c a)$
- $hat(delta)(q_0,c a) eq E(union_(p in hat(delta)(q_0,c)) delta(p,a)) eq$
- $hat(delta)(q_0,c) eq E(union_(p in hat(delta)(q_0,epsilon)) delta(p,c)) eq $
- $hat(delta)(q_0,epsilon) eq E(q_0) eq {q_0,q_1,q_2}$
Quindi risalendo con la ricorsione
- $hat(delta)(q_0,c) eq E(union_(p in hat(delta)(q_0,epsilon)) delta(p,c)) eq $
- $eq E(delta(q_0,c) union delta(q_1,c) union delta(q_2,c)) eq$
- $E(emptyset union emptyset union {q_2}) eq E(q_2) eq {q_2}$
#pagebreak()
Quindi risalendo nella ricorsione
- $hat(delta)(q_0,c a) eq E(union_(p in hat(delta)(q_0,c)) delta(p,a)) eq$ 
- $E(delta(q_2,a)) eq E(emptyset) eq emptyset$

Questo automa accetta $L eq {a^i b^j c^k | i,j,k gt.eq 0}$
#pagebreak()
== Teorema 1.45 Chiusura Classe REG Unione NFA
Dato due qualsiasi linguaggi regolari $A_1 "e" A_2 arrow.double.r A_1 union A_2$ è 
#image("img/NFA/nfaUnione.png")
*Dimostrazione*: \
Sia $N_1 eq (Q_1,Sigma,delta_1,q_1,F_1)$ che riconosce $A_1$ ed \
$N_2 eq (Q_2,Sigma,delta_2,q_2,F_2)$ che riconosce $A_2$
\
Costruiamo $N eq (Q,Sigma,delta,q,F)$ per riconoscere $A_1 union A_2$
- $Q eq {q_0} union Q_1 union Q_2$
Gli stati di $N$ sono tutti gli stati di $N_1$ e $N_2$ con l'aggiunta di un nuovo stato iniziale $q_0$
- Stato $q_0$ è lo stato iniziale di $N$
- Insieme degli stati accettati $F eq F_1 union F_2$
Gli stati accettati di $N$ sono tutti gli stati accettati di $N_1 "e" N_2$, in questo modo $N$ accetta se $N_1$ accetta o $N_2$ accetta
- Definiamo $delta$ in modo che per ogni $q in Q$ e ogni $a in Sigma_epsilon$
$ delta(q,a) eq cases(
  delta_1(q,a) space space q in Q_1,
  delta_2(q,a) space space q in Q_2,
  {q_1,q_2} space space q eq q_0 "e" a eq epsilon,
  emptyset space space q eq q_0 "e" a eq.not epsilon
) $

== Teorema 1.47 Chiusura Classe REG Concatenazione NFA
#image("img/NFA/nfaConcatenazione.png")
*Dimostrazione*: \
Sia $N_1 eq (Q_1,Sigma,delta_1,q_1,F_1)$ che riconosce $A_1$ ed \
$N_2 eq (Q_2,Sigma,delta_2,q_2,F_2)$ che riconosce $A_2$
\
Costruiamo $N eq (Q,Sigma,delta,q_1,F_2)$ per riconoscere $A_1 dot A_2$
- $Q eq Q_1 union Q_2$
Gli stati di $N$ sono tutti gli stati di $N_1$ e $N_2$ 
- Stato $q_1$ è uguale allo stato iniziale di $N_1$
- Gli stati accettati $F_2$ sono uguali agli stati accettati di $N_2$
- Definiamo $delta$ in modo che per ogni $q in Q$ e ogni $a in Sigma_epsilon$
$ delta(q,a) eq cases(
  delta_1(q,a) space space q in Q_1 "e" q in.not F_1,
  delta_1(q,a) space space q in F_1 "e" a eq.not epsilon,
  delta_1(q,a) union {q_2} space space q in F_1 "e" a eq epsilon,
  delta_2(q,a) space space q in Q_2,
) $
#pagebreak()
== Teorema 1.49 Chiusura Classe REG Chiusura di Kleene
#image("img/NFA/nfaChiusuraKleene.png")
*Dimostrazione*: \
Sia $N_1 eq (Q_1,Sigma,delta_1,q_1,F_1)$ che riconosce $A_1$
\
Costruiamo $N eq (Q,Sigma,delta,q_0,F)$ per riconoscere $A_1^*$
- $Q eq {q_0} union Q_1$
Gli stati di $N$ sono gli stati di $N_1$ più un nuovo stato iniziale
- Stato $q_0$ nuovo stato iniziale
- $F eq {q_0} union F_1$ 
Gli stati accettati sono i vecchi stati accettati più il nuovo stato iniziale
- Definiamo $delta$ in modo che per ogni $q in Q$ e ogni $a in Sigma_epsilon$
$ delta(q,a) eq cases(
  delta_1(q,a) space space q in Q_1 "e" q in.not F_1,
  delta_1(q,a) space space q in F_1 "e" a eq.not epsilon,
  delta_1(q,a) union {q_1} space space q in F_1 "e" a eq epsilon,
  {q_1} space space q eq q_0 "e" a eq epsilon,
  emptyset space space q eq q_0 "e" a eq.not epsilon
) $

== Chiusura Classe REG Reverse
#image("img/NFA/nfaReverse.png")
#image("img/NFA/nfaReverseEstremo.png")

== Chiusura Classe REG Prefissi e Suffissi
- Prefissi di $L$: ${x in Sigma^* | exists y in Sigma^* : x y in L}$
- Suffissi di $L$: ${y in Sigma^* | exists x in Sigma^* : x y in L}$
Si può dimostrare che se $L$ è regolare allora:
- Pref(L) è regolare
- Suff(L) è regolare

#pagebreak()
= Ogni NFA è un DFA e Viceversa
Per i DFA
$ hat(delta)(q,a) eq delta(q,a),space  a in Sigma$ è sempre vero

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
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, $a$, "-|>", bend: 0deg),
)

$ delta(q_0,a) eq q_1 $
$ hat(delta)(q_0,a) eq delta(hat(delta)(q_0,epsilon),a) eq delta(q_0,a)  $

Per gli NFA, invece, $hat(delta)(q,a) eq delta(q,a),space  a in Sigma$ non è vero in generale

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
  
  // Transizioni dell'automa M2
  edge(<q0>, <q1>, $epsilon$, "-|>", bend: 0deg),
  edge(<q1>, <q2>, $a$, "-|>", bend: 0deg),
)
$ delta(q_0,a) eq emptyset $
$ hat(delta)(q_0,a) eq hat(delta)(q_0,epsilon a) eq $
$ eq E(union_(p in hat(delta)(q_0,epsilon)) delta(q_0,a)) eq $
$ eq E(delta(q_0,a) union delta(q_1,a)) eq $
$ eq E(emptyset union q_2) eq emptyset union {q_2} eq {q_2} $

#pagebreak()

== Ogni DFA è un NFA
$ "DFA" M eq {Q,Sigma,delta,q_0,F}, space space delta:Q times Sigma arrow.r Q $
$ "NFA" N eq {Q,Sigma_epsilon, delta_N,q_0,F}, space space delta_N : Q times Sigma_epsilon arrow.r P(Q) $
$ L(N) eq L(M) $
$ delta(q,a) eq p arrow.double.r delta_N(q,a) eq {p} $
Quindi considero un singolo stato di un DFA come il singleton di quello stato nel NFA, a parità di linguaggio
$ L(M) eq {w in Sigma^* | hat(delta)_M(q_0,w) in F} eq $
$ {w in Sigma^* | hat(delta)_N(q_0,w) inter F eq.not emptyset} eq L(N) $
#pagebreak()
== Teorema 1.39 NFA e DFA equivalenti
Per ogni automa finito non deterministico $A$ esiste un automa finito deterministico $B$ tale che $L(A) eq L(B)$
- Se nel NFA parto da $q_0$ ma ci sono anche $epsilon$-transizioni, allora anche quegli stati sono iniziali
- Se nel NFA termino in uno stato finale allora nel DFA ogni stato che contiene  uno stato finale del NFA rappresenta un cammino di accettazione

*Dimostrazione*:
$ forall "NFA" N eq {Q_N,Sigma,delta_N,q_N,F_N} $
$ exists "DFA" M eq {Q_M,Sigma,delta_M,q_M,F_M} $
$ "t.c." L(N) eq L(M) $
*Dim*:
$ Q_M eq P(Q_N), q_M eq E(q_n) $
$ F_M eq {R in Q_M | R inter F_N eq.not emptyset} $
$ delta_M (R,a) eq E(union_(r in R) delta_N (r,a)) $
Ora dimostriamo che $L(N) eq L(M)$
$ forall w in Sigma^*, hat(delta)(q_M,w) eq hat(delta)(q_N,w) $
- Passo base:
Sia $w eq epsilon$
$ hat(delta)(q_M,epsilon) scripts(=)^"def DFA" q_M scripts(=)^"Costruzione" E(q_N) scripts(=)^"def NFA" hat(delta)(q_N,epsilon) $
- Passo induttivo:
Sia $w eq x a, x in Sigma^*, a in Sigma$ \
Supponiamo $hat(delta)_M (q_M,x) eq hat(delta)_N (q_N,x)$
$ hat(delta)_M (q_M,x a) script(=)^"def DFA" delta_M (hat(delta)_M (q_M,x),a) script(=)^"Costruzione" $
$  E(union_(r in hat(delta)_M (q_M,x)) delta_N (r,a)) $
Applico ipotesi induttiva
$ eq E(union_(r in hat(delta)_N (q_N,x)) delta_N (r,a)) eq hat(delta)_N (q_n,x a) $

=== Corollario Teorema 1.39
Un linguaggio è regolare se e solo se esiste un automa finito non deterministico che lo riconosce
- Quindi se esiste un NFA, un DFA o usando le proprietà di chiusura

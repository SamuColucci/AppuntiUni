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

- Quindi la macchina inizia da una condizione iniziale che appartiene alla sequenza di stati
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

Sia $M=(Q, Sigma, delta, q_0, F)$ che riconosce $L$. \
Supponiamo di voler progettare un automa finito $R=(Q’, Sigma, delta’, q’_0, F’)$ che riconosce il reverse di L
(per non perdere di generalità, sia R un NFA). Poiché $"Rev"(L)$ deve riconosce le stesse stringhe di $L$
ma lette al contrario, l’idea è quella di far partire la computazione dalla fine (stati finali) e di
andare a ritroso verso l’inizio (stato iniziale). 
\ Formalmente, per ogni $p in delta(q_a), "per ogni" q in Q, a in Sigma$ si ha che \ $q in delta'(p,a)$
. \ In questo modo stiamo “invertendo le frecce” di $M$.

Un problema può essere il fatto che la computazione per partire dalla fine, dovrebbe partire dagli
stati finali, ma lo stato iniziale degli automi è unico. Quindi l’automa $R$ avrà gli stati di $M$, con
l’aggiunta di un nuovo stato che sarà iniziale e dal quale, con epsilon transizioni, andrò negli stati
finali. Lo stato iniziale di M sarà lo stato finale di R. 
\ Formalmente, $F’={q_0}$ mentre $q’_0$ sarà un nuovo stato, cioè $Q' eq Q union {q'_0}$. 
\ Inoltre $delta'(q'_0,epsilon) eq F, "mentre" delta'(q'_0,a) eq emptyset$, per $a$ diverso dalla stringa vuota. \
Non è necessario provare rigorosamente che  \ $delta'(q'_0,epsilon) in F "se e solo se" delta'(q'_0,w^R) in F$, perché segue
dalla costruzione. Nelle slides della lezione c’è un esempio di costruzione.
#pagebreak()
== Chiusura Classe REG Prefissi e Suffissi
- Prefissi di $L$: ${x in Sigma^* | exists y in Sigma^* : x y in L}$
- Suffissi di $L$: ${y in Sigma^* | exists x in Sigma^* : x y in L}$
Si può dimostrare che se $L$ è regolare allora:
- Pref(L) è regolare
- Suff(L) è regolare

=== Chiusura Classe REG Prefissi
Innanzitutto, ricordiamo che dato un linguaggio L, indichiamo con $"Pref"(L) eq { x in Sigma^* | w eq x y in L, x,y in Sigma^*}$.
\ \
Seguiamo il ragionamento fatto durante la lezione e supponiamo che l’automa $M=(Q, Sigma, delta, q_0, F)$
che riconosce L sia un NFA in cui non ci sono archi uscenti dagli stati finali. Questa ipotesi è facile
da soddisfare aggiungendo all’automa un nuovo stato finale in cui entro leggendo la stringa vuota
a partire da ogni stato finale di M. 
\ Formalmente, consideriamo un automa $M’=(Q’, Sigma, delta’, q_0, {q_F})$
che riconosce L, con $Q’=Q union {q_F}$ dove $delta’(q,a)= delta(q,a)$, per ogni q in Q, a in $Sigma$, e in più, per ogni q in
F si ha che $q_F in delta’(q,epsilon)$. 
\ Senza perdere di generalità, essendo un NFA, possiamo eliminare tutti gli
stati pozzo, cioè quelli che non consentiranno di raggiungere gli stati finali.
\  \
Costruiamo ora $P=(Q’, Sigma, delta'’, q_0, {q_F})$ dove $delta’’(q,a)= delta’(q,a)$ per ogni $q in  Q’, a in Sigma$ e inoltre per ogni
$q in Q’, q_F in delta’’(q, epsilon)$, se q raggiunge uno stato finale. Non è necessario provare rigorosamente che
L(P)=Pref(L), cioè l’insieme dei prefissi di L, perché se w=xy, e w è accettata, allora $hat(delta)(q_0,w) eq hat(delta)(q_0, x y) eq hat(delta)(hat(delta)(q_0,x),y)$
. \
Sia $t in hat(delta)(q_0,x)$. Allora $hat(delta)(t,y) eq {q_F}$ se e solo se ${q_F} in hat(delta)'(q_0,x)$ , perché c’è la epsilon
transizione da ogni stato come t che viene raggiunto da $hat(delta)'(q_0,x) "verso" q_F$.  \ 
Inoltre, l’ipotesi
garantisce che se raggiungo $q_F$ non esco verso nessun altro stato. Se così non fosse, non garantirei
di riconosce solo i prefissi di L, ma potrei continuare e leggere altre stringhe. 
=== Chiusura Classe REG Suffissi
Innanzitutto, ricordiamo che dato un linguaggio L, indichiamo con Suff(L)$eq { y in Sigma^* | w eq x y in L, x,y in Sigma^*}$. \ \
Anche per questo esercizio, seguiamo il ragionamento fatto durante la lezione e supponiamo che
l’automa $M=(Q, Sigma, delta, q_0, F)$ che riconosce L sia un NFA in cui non ci sono archi entranti nello stato
iniziale. Se infatti questo non accadesse, potremmo trovarci in una situazione simmetrica a quella
dei prefissi, riconoscendo stringhe non suffissi di L.  \
Questa ipotesi è facile da soddisfare
aggiungendo all’automa un nuovo stato iniziale da cui usciamo leggendo la stringa vuota verso lo
stato iniziale di M. \
 Formalmente, consideriamo un automa $M’=(Q’, Sigma, delta’, q’_0, F}$ che riconosce L,
con $Q' eq Q union {q'_0}$ dove $delta'(q,a) eq delta(q,a)$, per ogni $q$ in $Q$, a in $Sigma$, mentre ${q_0} in delta'(q'_0,epsilon)$ e $delta'(q'_0,a) eq emptyset$. 
\ \
Costruiamo ora $S=(Q’, Sigma, delta’’, q’_0, F)$ dove $delta’’(q,a)= delta’(q,a)$ per ogni $q in Q’$, $a  in Sigma$ e inoltre
per ogni $q in Q’, q in delta’’(q’_0, epsilon)$, se q è raggiungibile dallo stato iniziale.
\ 
Non è necessario provare rigorosamente che L(S)=Suff(L), cioè l’insieme dei suffissi di L, perché se
w=xy, e w è accettata, allora $hat(delta)'(q_0,epsilon) subset.eq 𝐹$ , perché c’è la epsilon transizione da ogni stato
raggiunto da $hat(delta)'(q_0,epsilon)$ ad uno stato finale. 
\ Quindi con la epsilon transizione, da $q_0$ vado in $hat(delta)'(q_0,epsilon)$
a partire dal quale so che posso leggere anche y e arrivare in uno stato finale, quindi accettando y.
L’ipotesi che sullo stato iniziale non ci siamo archi entranti, garantisce che posso solo “saltare” la x
nella lettura
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

#pagebreak()

= Espressioni Regolari
*Teorema di Kleene*: Un linguaggio è regolare se e solo se esiste un espressione regolare che lo rappresenta, quindi vale il viceversa

== Definizione Formale Espressioni Regolari
- Passo Base:
Per ogni $a in Sigma$, $a$ è un espressione regolare \
$epsilon$ è un espressione regolare \
$emptyset$ è un espressione regolare
- Passo Ricorsivo:
Se $E_1,E_2$ sono espressioni regolari, allora \
$(E_1)$ è un espressione regolare \
$(E_1 union E_2)$ è un espressione regolare \
$(E_1 E_2)$ è un espressione regolare \
$(E_1^*)$ è un espressione regolare 

== Precedenza Operatori
#table(
  columns: 2, // Definisce 3 colonne di larghezza automatica
  [Operatore], [Precedenza],
  [$*$], [1],
  [$.$], [2],
  [$union$], [3]
) 

== Definizione Ricorsiva Linguaggi Rappresentati REG
Data un espressione regolare $E$, indicheremo con $L(E)$ il linguaggio che essa rappresenta, definito come segue:
- Passo base:
Per ogni $a in Sigma, L(A) eq {a}$ \
$L(epsilon) eq {epsilon}$ \
$L(emptyset) eq emptyset$
- Passo Ricorsivo:
Se $E_1,E_2$ sono espressioni regolari allora \
$L((E_1)) eq L(E_1)$ è un espressione regolare \
$L(E_1 union E_2) eq L(E_1) union L(E_2)$ è un espressione regolare \
$L(E_1 E_2) eq L(E_1) L(E_2)$ è un espressione regolare \
$L(E_1^*) eq L(E_1)^*$ è un espressione regolare 

== Proprietà Algebriche RE
- $E_1 union E_2 eq E_2 union E_1$
- $(E_1 union E_2) union E_3 eq E_1 union (E_2 union E_3)$
- $emptyset union E_1 eq E_1$
- $(E_1 E_2) E_3 eq E_1 (E_2 E_3)$
- $emptyset E_1 eq E_1 emptyset eq  emptyset$
- $epsilon E_1 eq E_1 epsilon eq  E_1$
- $ E_1 (E_2 E_3) eq E_1 E_2 union E_1 E_3$
- $(E_1 union E_2) union E_3 eq E_1 E_3 union E_2 E_3$
- $ E_1 union E_1 eq E_1$
- $((E_1)^*)^* eq E_1^*$
- $E^+ eq E E^*$
- $(E_1 union E_2)^* eq (E_1^* E_2^*)^*$

#pagebreak()

= Pumping Lemma
Se $A$ è un linguaggio regolare, allora $exists p gt 0$ tale che $forall$ stringa $s in A$ di lunghezza almeno $p$ (cioè $|s| gt.eq p$), esistono $x,y,z$ tali che $s eq x y z$ e valgono le seguenti condizioni:
- $x y^i z in A, forall i gt.eq 0$
- $|y| gt.eq 1$
- $|x y| lt.eq p$

== Tecnica Per Provare la Non Regolarità
- Supponiamo $A$ regolare (quindi vale PL)
- Deve esistere $p>O$ tale che tutte le stringhe di $A$ di lunghezza maggiore o uguale a p possono essere iterate (non sappiamo p chi sia, ma esiste)
3. Troviamo una stringa $s$ di $A$ che ha lunghezza maggiore o uguale a $p$ che però non può essere iterata considerando TUTTI $i$ possibili modi di fattorizzarla in $x,y,z$ (con le condizioni)
4. Per ogni fattorizzazione, troviamo $i$ tale che $x y^i z$ non appartiene a A. Assurdo!

#pagebreak()

= Macchine di Turing
== Descrizione Informale
- Utilizza un nastro semi-infinito
- Presenta una testina di lettura e scrittura che può muoversi avanti e dietro
- Ha due stati speciali $q_("accept") "e" q_("reject")$  che hanno effetto immediato
== Definizione Formale MdT
Un macchina di Turing deterministica è una settupla
$ (Q,Sigma,Gamma, delta,q_0,q_("accept"),q_("reject")) $
- $Q$: Insieme finito degli stati
- $Sigma$: Alfabeto dei simboli in input, con $union.sq in.not Sigma$
- $Gamma$: Alfabeto finito dei simboli di nastro, con $union.sq in Gamma, Sigma subset Gamma, space L,R in.not Gamma$
- $delta$: Funzione di transizione
$ (Q backslash {q_("accept"),q_("reject")}) times Gamma arrow.r Q times Gamma times {L,R} $
- $q_0 in Q$: Stato iniziale
- $q_("accept") in Q$: Stato di accettazione
- $q_("reject") in Q$: Stato di rifiuto, $q_("accept") eq.not q_("reject")$ 

== Funzione di Transizione MdT
Se $delta(q,gamma) eq (q',gamma',d)$ sappiamo che $q,q' in Q,gamma,gamma'in Gamma, d in {L,R} $

== Diagramma di Stato
Grafo i cui nodi sono gli stati della macchina e le etichette sugli archi hanno la seguente forma
$ "simbolo" arrow.r "simbolo",d $
Con il simbolo $in Gamma$ e $d in {L,R}$
#pagebreak()
== Computazione di una MdT Informale
- Inizia dallo stato iniziale $q_0$
- Con l'input $w in Sigma^*$ posizionato sulla parte più a sinistra del nastro, e con la testina posizionata sulla cella più a sinistra del nastro
- Se input $epsilon$, allora il nastro contiene solo $union.sq$
-  La computazione di M procede fino a quando non viene raggiunto uno stato di accettazione o rifiuto. Se nessuno dei due stati viene raggiunto, la computazione di M continua per sempre
- Dato che $Sigma$ non contiene $union.sq$ all'inizio della computazione il primo simbolo $union.sq$ segna la fine della computazione
- La computazione termina se ha raggiunto $q_("accept")$ e $q_("reject")$, oppure può non terminare

== Configurazione di una MdT
Una configurazione $C$ di una MdT $M eq (Q,Sigma,Gamma, delta,q_0,q_("accept"),q_("reject"))$ è una stringa $C eq u q v in Gamma^* Q Gamma^S$, con $Gamma^S eq Gamma^* (Gamma backslash {union.sq}) union {union.sq, epsilon}$ con
- $q in Q$: Stato corrente di $M$
- $u v in Gamma^*$ è il contenuto del nastro
  - Convenzione nel eliminare tutti i simboli $union.sq$ che seguono ultimo carattere di $v "se" v eq.not epsilon$
  - Tutti i simboli $union.sq$ che seguono $u$ altrimenti
- Testina posizionata sul primo simbolo di $v$ se $v eq.not epsilon$, su $union.sq$ altrimenti
\
\
Una configurazione $C$ di una MdT M si dice:
- *Iniziale*: (Con input $w$) se $C eq q_o w, w in Sigma^*$
- *Di arresto*: Se $C eq u q v, u,v in Gamma^* "e" q in {q_("accept"),q_("reject")}$
  - Non esiste nessuna configurazione $C'$ tale che $C arrow.r C'$
- *Di accettazione*: Se $C eq u q v, u,v in Gamma^* "e" q eq q_("accept")$
- *Di rifiuto*: Se $C eq u q v, u,v in Gamma^* "e" q eq q_("reject")$

=== Configurazioni Particolari
- Se $C eq q v$ allora la testina è posizionata sulla prima cella del nastro
- Se $C eq u q$ allora la testina è posizionata sulla prima cella della porzione del nastro contenete solo $union.sq$


== Passo di Computazione
Sia $M eq  (Q,Sigma,Gamma, delta,q_0,q_("accept"),q_("reject"))$ una MdT deterministica
\ 
Siano $q_i,q_j in Q, space a,b,c in Gamma, "e" u,v in Gamma^*$
\ \
Diremo che $ u a q_i b v "produce" u q_j a c v $
Se $delta(q_i,b) eq (q_j,c,L)$ \
Diremo che $ u a q_i b v "produce" u a c q_j v $
Se $delta(q_i,b) eq (q_j,c,R)$
\ 
\
Quindi $C_1 arrow.r C_2$ prende il nome di passo di computazione

== Computazione
Siano $C,C'$ configurazioni \
$C arrow.r^* C'$ se esistono configurazioni $C_1,...,C_k, k gt.eq 1$ tali che:
- $C_1 eq C$
- $C_i arrow.r C_(i+1)$, per $i in {1,...,k-1}$
- $C_k eq C'$
Diremo che $C arrow.r^* C'$ è una *computazione*
\
\
Sia $M$ una MdT e $C$ una configurazione ci sono tre possibili casi:
- $C arrow.r^* C'$ con $C' eq u q_("accept") v$ configurazione di accettazione
  - $M$ si ferma in $q_("accept")$
- $C arrow.r^* C'$ con $C' eq u q_("reject") v$ configurazione di rifiuto
  - $M$ si ferma in $q_("reject")$
- Per ogni configurazione $C'$ tale che $C arrow.r^* C'$ esiste una configurazione $C''$ tale che $C arrow.r^* C'arrow.r C''$
  - M non si arresta

== Parola Accetta da una MdT
Un MdT $M$ accetta una parola $w in Sigma^*$ se esiste una computazione $C arrow.r^* C'$, dove $C eq q_0,w$ è la configurazione iniziale di $M$ con input $w$ e $C' eq u q_("accept") v$ è una configurazione di accettazione
\ \
Quindi $M$ accetta $w in Sigma^*$ se e solo se esistono configurazioni $C_1,...,C_k$ di $M$ tali che:
- $C_1 eq q_0 w$ è la configurazione iniziale di $M$ con input $w$
- $C_i arrow.r C_(i+1)$ per ogni $i in {1,...,k-1}$
- $C_k$ è una configurazione di accettazione

== Parola Rifiutata da una MdT
Un MdT $M$ rifiuta una parola $w in Sigma^*$ se esiste una computazione $C arrow.r^* C'$, dove $C eq q_0,w$ è la configurazione iniziale di $M$ con input $w$ e $C' eq u q_("reject") v$ è una configurazione di rifiuto
\ \
Quindi $M$ si ferma su $w in Sigma^*$ se $M$ accetta $w$ oppure rifiuta $w$, cioè esistono configurazioni $C_1,...,C_k$ di $M$ tali che:
- $C_1 eq q_0 w$ è la configurazione iniziale di $M$ con input $w$
- $C_i arrow.r C_(i+1)$ per ogni $i in {1,...,k-1}$
- $C_k$ è una configurazione di arresto
#pagebreak()
== Linguaggio Riconosciuto da una MdT
Sia $M eq  (Q,Sigma,Gamma, delta,q_0,q_("accept"),q_("reject"))$ un MdT, il linguaggio $L(M)$ riconosciuto da $M$ è l'insieme delle stringhe che $M$ accetta
$ L(M) eq {w in Sigma^* | exists u,v in Gamma^* space q_0 w arrow.r^* u q_("accept") v} $
Quindi
$ L(M) eq {w in Sigma^* | M "accetta" w} $

- Data una MdT $M$, esiste sempre il linguaggio riconosciuto da $M$ ma non è detto che esista il linguaggio deciso da $M$, ciò è possibile se e solo se $M$ è un decider

- Se $M$ è un decider, esiste il linguaggio deciso da $M$ e coincide con il linguaggio riconosciuto da $M$

- Se $M$ non è un decider, esiste il linguaggio riconosciuto da $M$ ma non il linguaggio deciso da $M$
== MdT Decisore
Sia $R(M) eq {w in Sigma^* | M "rifiuta" w}$
\ In generale $L(M) union R(M)$ non coincide con $Sigma^*$, ma se coincide allora $M$ è un decider
\
*Definizione Formale*: \
Un MdT $M eq  (Q,Sigma,Gamma, delta,q_0,q_("accept"),q_("reject"))$ è un decisore se per ogni $w in Sigma^*$, esistono $u,v in Gamma^*$ e $q in {q_("accept"),q_("reject")}$ tali che:
$ q_0 w arrow.r^* u q v $

== Linguaggio Deciso
Un linguaggio $L$ è deciso da un MdT $M eq  (Q,Sigma,Gamma, delta,q_0,q_("accept"),q_("reject"))$ se $M$ è un decisore ed $L eq L(M)$

Una MdT $M eq  (Q,Sigma,Gamma, delta,q_0,q_("accept"),q_("reject"))$ decide un linguaggio $L$ se per ogni $w in Sigma^*, q_0 w arrow.r^* C$ con $C eq u q v$
configurazione di arresto ed $L eq L(M)$ 

== Linguaggio Riconoscibile
Un linguaggio $L subset.eq Sigma^*$ è Turing riconoscibile se esiste una macchina di Turing $M eq  (Q,Sigma,Gamma, delta,q_0,q_("accept"),q_("reject"))$ tale che 
- $M$ riconosce $L$
$ L eq L(M) eq {w in Sigma^*| exists u,v in Gamma^* space q_0 w arrow.r^* u q_("accept") v} $
== Linguaggio Decidibile
Un linguaggio $L subset.eq Sigma^*$ è decidibile se esiste una macchina di Turing $M eq  (Q,Sigma,Gamma, delta,q_0,q_("accept"),q_("reject"))$ tale che 
- $M$ riconosce $L$
$ L eq L(M) eq {w in Sigma^*| exists u,v in Gamma^* space q_0 w arrow.r^* u q_("accept") v} $
- $M$ si arresta su ogni input
$ "Per ogni" w in Sigma^*, q_0 w arrow.r^* u q v "con" q in {q_("accept"),q_("reject")} $
\
Rappresenta un sottoinsieme proprio dei linguaggio Turing riconoscibili, quindi un linguaggio $L$ è Turing riconoscibile ma non decidibile se:
- Esiste una MdT che riconosce $L$
- Non esiste nessuna MdT tale che $M$ accetta tutte le stringhe di $L$ e rifiuta tutte quelle che appartengono al complemento $overline(L)$

#pagebreak()

= Varianti di MdT
Siano $T_1$ e $T_2$ due famiglie di modelli computazionali. Per dimostrare che i modelli in $T_1$ hanno lo stesso potere computazionale dei modelli in $T_2$ occorre far vedere che per ogni macchina $M_1 in T_1$ esiste $M_2 in T_2$ equivalente ad $M_1$ e viceversa
  - Due macchine sono equivalenti se hanno lo stesso linguaggio

== Macchine di Turing che Stanno Ferme
Questa caratteristica non aggiunge potere computazionale al modello scelto
\
\
La parte non ovvia è mostrare che possiamo trasformare qualsiasi macchina di Turing che ha la possibilità di stare ferma in una macchina di Turing equivalente che non ha tale capacità
  - Lo dimostriamo costruendo una MdT in cui simuliamo ogni transizione in cui resta ferma come una transizione che va prima a destra e poi ritorna a sinistra

Sia $T_((L,R))$ l'insieme delle macchine di Turing
$ (Q backslash {q_("accept"),q_("reject")}) times Gamma arrow.r Q times Gamma times {L,R} $
Chiamiamo $T_((L,R,S))$ il nuovo insieme di macchine di Turing tali che $M eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject"))$ in cui $Q,Sigma,Gamma,q_0,q_("accept"),q_("reject")$ sono definiti come in una MdT deterministica e la funzione di transizione $delta$ definita nel modo seguente:
$ (Q backslash {q_("accept"),q_("reject")}) times Gamma arrow.r Q times Gamma times {L,R,S} $
Se $delta(q,gamma) eq (q',gamma',d)$ e se $M$ si trova nello stato $q$ con la testina posizionata su una cella  $gamma$, alla fine della transizione
- $M$ si trova nello stato $q'$
- $gamma' in Gamma$ è il simbolo scritto sul nastro su cui la testina si trovava all'inizio della transizioni 
- La testina si trova sulla stessa cella dell'inzio della transizione se $d eq S$, a sinistra se $d eq L $ e a destra se $d eq R$
Le  nozioni di configurazione di linguaggio deciso e di linguaggio riconosciuto da $M' in T_((L,R))$ sono estese in maniera ovvia alle macchine $M$ in $T_((L,R,S))$
\
\
I modelli in $T_((L,R))$ hanno lo stesso potere computazionale dei modelli in $T_((L,R,S))$
\
Se $M' eq (Q,Sigma,Gamma,delta',q_0,q_("accept"),q_("reject")) in T_((L,R))$
\ Definiamo $M eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject") in T_((L,R,S))$ \
Con $delta(q,gamma) eq delta'(q,gamma)$ per ogni $(q,gamma) in (Q backslash {q_("accept"),q_("reject")}) times Gamma$ \
Ovviamente $L(M) eq L(M')$
\
\
Viceversa se $M eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject")) in T_((L,R,S))$ \
Definiamo $M' eq (Q union Q^c,Sigma,Gamma,delta',q_0,q_("accept"),q_("reject")) in T_((L,R))$ dove
- Se $delta(q_i,gamma) eq (q_j,gamma',d)$ e $d in {L,R}$ allora $delta'(q_i,gamma) eq delta(q_i,gamma)$
- Se $delta(q_i,gamma) eq (q_j,gamma',S)$ allora $delta'(q_i,gamma) eq (q_j^c,gamma',R)$ e $delta'(q_j^c, eta) eq (q_j,gamma',L)$ per ogni $eta in Gamma$
- $Q^c eq {q^c | (q,gamma,S) in delta(Q backslash {q_("accept"),q_("reject")})times Gamma)}$
Anche in questo caso $L(M) eq L(M')$

#pagebreak()
== Macchine di Turing Multinastro
Dato un numero intero positivo $K$, una macchina di Turing con $k$ nastri è una settupla
$ M eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject")) $
Dove $Q,Sigma,Gamma,q_0,q_("accept"),q_("reject")$ sono definiti come in una MdT deterministica e la funzione di transizione $delta$ è definita come segue
$ delta: (Q backslash {q_("accept"),q_("reject")}) times Gamma^k arrow.r Q times Gamma^k times {L,R,S}^k $
Con $Gamma^k$ il prodotto cartesiano di $k$ coppie di $Gamma$ e 
\ ${L,R,S}^k$ è il prodotto cartesiano di $k$ coppie di ${L,R,S}$

=== Funzione di Transizione
Il codominio della funzione di transizione di una macchina di Turing a $k$ nastri è un insieme di sequenze $(q_j,b_1,...,b_k,d_1,...,d_k)$ di lunghezza $(2k +1)$ con
- $q_j in Q$
- $b_t in Gamma, t in {1,...,k}$
- $d_t in {L,R,S}, t in {1,...,k}$
Se $delta(q_i,a_1,...,a_k) eq (q_j,b_1,...,b_k,d_1,...,d_k)$ e se $M$ si trova nello stato $q_i$ con le $k$ testine posizionate sulle celle contenenti $a_1,...,a_k$ alla fine della transizione
- $M$ si trova nello stato $q_j$
- $b_t in Gamma$ è il simbolo scritto sulla cella del $t$-esimo nastro su cui la testina si trovava all'inizio della transizione, $t in {1,...,k}$
- La testina sul $t$-esimo nastro si trova sulla stessa cella in cui si trovava all'inzio della computazione se $d_t eq S$, a sinistra se $d_t eq L $ e a destra se $d_t eq R$, $t in {1,...,k}$
#pagebreak()
=== Computazione
Una MdTM $M eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject"))$ inizia la computazione
- Partendo dallo stato iniziale $q_0$
- Con l'input $w in Sigma^*$ posizionato nella parte più a sinistra del primo nastro
- Gli altri nastri contengono solo $union.sq$
- Tutte le testine sono posizionate sulle prime celle dei rispettivi nastri
Le nozioni di configurazione, passo di computazione, di linguaggio deciso e di linguaggio riconosciuto da una MdT sono estese in maniera ovvia alle macchine MdTM
\
Una configurazione ha la forma
$ (u_1 q v_1,...,u_k q v_k) $
Dove $q in Q$ è lo stato corrente di $M$ e per $t in {1,...,k}$, $u_t q v_t in Gamma^* Q Gamma^S$, con $Gamma^S eq Gamma^*(Gamma backslash {union.sq}) union {union.sq, epsilon}$
\
La testina del $t$-esimo nastro è posizionata sul primo simbolo di $v_t$, se $v_t eq.not epsilon$, su $union.sq$ altrimenti
\
\
$(q_0 ,...,q_0)$ è una configurazione iniziale
\
$(u_1 q_("accept") v_1,...,u_k q_("accept") v_k )$ è una configurazione di accettazione

=== Linguaggio Riconosciuto
$ L(M) eq {w in Sigma^*| exists u_t,v_t in Gamma^*, t in {1,...,k}}: $
$ (q_0 w,...,q_0) arrow.r^* (u_1 q_("accept") v_1,...,u_k q_("accept") v_k ) $

#pagebreak()

== Equivalenza MdTM e MdT
Per ogni MdT multinastro $M eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject"))$
esiste una macchina di Turing a nastro singolo $S$ equivalente a $M$, cioè tale che $L(M) eq L(S)$
- *Dimostrazione*:
Supponiamo che $M$ abbia $k$ nastri \
Per ogni configurazione di $M$
$ (u_1 q v_1,...,u_k q v_k) $
La macchina $S$ che simula $M$ deve codificare su un solo nastro:
- Il contenuto $u_1 v_1,...,u_k v_k$ dei $k$ nastri
- La posizione di ciascuna testina del nastro
\
*Idea della dimostrazione*:
- Il contenuto del nastro di $S$ è la concatenazione di $k$ blocchi separati da \# 
- Un elemento $dot(gamma)$, con $gamma in Gamma$, nel blocco $t$-esimo indica la posizione della testina del nastro $t$-esimo, $t in {1,...,k}$, e quindi l'alfabeto dei simboli di nastro di $S$ è $Gamma union {dot(gamma) | gamma in Gamma} union {\#,dot(\#)}$
\
Quindi sia $w eq w_1,...,w_n$ una stringa input, $w_t in Sigma, t in {1,...,n}$
- *Generazione della configurazione iniziale di $M$*: \
$S$ passa alla configurazione
$ q' \# w_1...w_n \# dot(union.sq) \# ...\# dot(union.sq) \# $
Con la conseguente aggiunta di stati addizionali
- Per simulare un passo di computazione di $M$, per effetto dell'applicazione di $delta(q,a_1,...,a_k) eq (s,b_1,...,b_k,d_1,...,d_k)$, la macchina $S$ scorre il dato sul nastro dal primo $\#$ al $(k+1)$-esimo $\#$ da sinistra a destra e viceversa due volte
  - La prima volta $S$ determina quali sono i simboli correnti di $M$, memorizzando nello stato i simboli marcati sui singoli nastri
  - La seconda volta $S$ esegue su ogni sezione le azione che simulano quelle di $M$

\
Nel corso della simulazione $S$ potrebbe spostare delle testine sul simbolo $\#$, in questo caso $S$ deve spostare tutto il contenuto verso destra di una posizione, a partire da $dot(\#)$ fino all'ultimo $\#$ e scrivere $dot(union.sq)$ nella cella vuota creata al posto di $dot(\#)$
\ Poi la MdT entro nello stato che ricorda il nuovo stato di $M$ e riposiziona la testina all'inizio del nastro
\ Se si ferma $M$, anche $S$ si ferma rimuovendo i separatori $\#$ e sostituendo i caratteri $dot(a)_t$ con $a_t$

== MdTM e MdT Linguaggi Riconoscibile
Un linguaggio $L$ è Turing riconoscibile se e solo se esiste una macchina di Turing multinastro $M$ che lo riconosce, cioè tale che $L(M) eq L$

- *Dimostrazione*:
Se $L$ è Turing riconoscibile allora esiste una MdT $M$ tale che $L(M) eq L$, poichè $M$ è una MdT a $k$ nastri con $k=1$, esiste una macchina di Turing multinastro $M$ tale che $L(M) eq L$

\
Viceversa, se esiste una macchina di Turing multinastro $M$ tale che $L(M) eq L$, per il teorema precedente esiste una macchina di Turing a nastro singolo $S$ tale che $L(S) eq L(M) eq L$, quindi $L$ è Turing riconoscibile

#pagebreak()

== Ordine Radix
Sia $Sigma eq {a_0,...,a_k}$ un alfabeto e sia $a_0 lt a_1 lt ... lt a_k$ un ordinatamento degli elementi di $Sigma$ \
Siano $x,y in Sigma^*$, diremo che $x lt.eq y$ rispetto all'ordine radix se $x$ e $y$ verificano le condizioni seguenti
- $|x| lt |y|$
- $|x| eq |y|$ e $x eq z a x', y eq z b y', z,x',y' in Sigma^*, a,b in Sigma, a lt.eq b$
#pagebreak()

= Macchina di Turing Non deterministica
== Descrizione Formale
Una macchina di Turing non deterministica è una settupla $(Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject"))$ con
- $Q,Sigma,Gamma,q_0,q_("accept"),q_("reject")$ sono definiti come in una MdT deterministica
- La funzione di transizione $delta$ e definita come segue
$ delta: (Q backslash {q_("accept"),q_("reject")}) times Gamma arrow.r cal(P)(Q times Gamma times {L,R}) $
\
Quindi per ogni $q in Q backslash {q_("accept"),q_("reject")}$, per ogni $gamma in Gamma$ risulta
$ delta(q,gamma) eq {(q_1,gamma_1,d_1),...,(q_k,gamma_k,d_k)}, "con" k gt.eq 0 "e" $
$ (q_j,gamma_j,d_j) in Q times Gamma times {L,R}, "per" j in {1,...,k} $
\
- La computazione continua ad essere una successione finita di configurazioni $C arrow.r^* C'$, quindi *non è un albero*
- Ma dato che ci possono essere più configurazioni $u' q' v'$ che sono prodotte da $u q v$ in un passo, ed è possibile organizzarle in un albero
#pagebreak()
== Albero delle computazioni
In una macchina di Turing non deterministica, le computazioni su una stringa input $w$ possono essere organizzate in un albero radicato in cui la radice è la configurazione iniziale $q_o w$
\
\
I nodi sono configurazioni e i figli di ogni nodo rappresentano le possibili configurazioni raggiungibili da quel nodo in un passo di computazione
\
\
In particolare, ogni configurazione in cui lo stato è $q_("reject")$ o $q_("accept")$ è una foglia

== Linguaggio Riconosciuto da una MdT non Deterministica
Sia $N eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject"))$ una MdT non deterministica, il linguaggio $L(N)$ riconosciuto da $N$, è l'insieme
$ L(N) eq {w in Sigma^*|"esiste una computazione" q_0 w arrow.r^* u q_("accept") v, u,v in Gamma^*} $

#pagebreak()

= Equivalenza Modello Deterministico e non Deterministico
Per ogni macchina di Turing non deterministica $N$ esiste una macchina di Turing deterministica $D$ equivalente ad $N$, cioè tale che $L(N) eq L(D)$

== Idea della Prova
- Ogni computazione di $N$ deriva da una sequenza di scelte che $D$ deve riprodurre
- Per ogni input $w$, $D$ esplora l'albero delle computazioni di $N$ su $w$
- Se D trova lo stato di accettazione su uno qualsiasi dei rami dell'albero, accetta
  - *Visita per livelli*, se esiste una computazione $q_0 w arrow.r ^* u q_("accept") v,$ \ $D$ prima o poi effettuerà la sequenza di scelte corrispondenti 
- Questo assicura che $L(D) eq L(N)$
\
La macchina MdT deterministica $D$ che simula $N$ ha tre nastri
- *Nastro 1*: Contiene la stringa di input e non viene modificato
- *Nastro 2*: Mantiene una copia del nastro di $N$ corrispondente a qualche diramazione della sua computazione non deterministica
- *Nastro 3*: Deve tenere traccia della posizione di $D$ nell'albero delle computazioni di $N$
#pagebreak()
== Rappresentazione delle Computazioni
Sia $N eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject"))$ una macchina di Turing non deterministica
\
Sia $b$ il massimo numero di scelte per $N$ su ogni stato e ogni carattere
$ b eq max{|delta(q ,sigma)| | q in Q, sigma in Sigma} $
Consideriamo l'alfabeto $Gamma_b eq {1,...,b}$
\
Per ogni coppia stato-simbolo $(q,sigma)$ esistono al più $b$ scelte a ognuna delle quali associamo un diverso simbolo in $Gamma_b$
\
Quindi per ogni configurazione $u q sigma v$ esistono al più $b$ successive configurazioni a ognuna delle quali risulta associato un simbolo diverso di $Gamma_b$
\
\
Ogni albero di computazione di $N$ è un albero $b$-ario, cioè ogni nodo ha al più $b$ figli
\
Ogni cammino in ogni albero di computazione può essere rappresentato da una stringa sull'alfabeto $Gamma_b eq {1,...,b}$
- A ogni computazione è associata una stringa su $Gamma_b$
- Viceversa, a ogni stringa su $Gamma_b$ è associata al più una computazione
- Non è sempre vero che una stringa rappresenta una computazione
#pagebreak()
== Rappresentazione dei Cammini
Se una stringa rappresenta una computazione, ogni simbolo nella stringa rappresenta una scelta tra le possibili alternative proposte dalla $delta$ in un passo di computazione
\
La stringa vuota corrisponde alla configurazione iniziale, è l'indirizzo della radice dell'albero
\
Una visita per livelli dell'albero corrisponde alla lista delle stringhe su $Gamma_b$ in ordine radix

== Descrizione dei 3 Nastri
- Sul *primo nastro* è memorizzata la stringa input $w$ e il contenuto del primo nastro non verrà alterato dalle computazioni di $D$
- Sul *secondo nastro* viene eseguita la simulazione di $N$, il nastro 2 mantiene una copia del nastro di $N$ corrispondente a qualche diramazione dell'albero delle computazioni
- Sul *terzo nastro* vengono generate le codifiche delle possibili computazioni di $N$ con input $w$, tenendo traccia delle posizioni

== Descrizione di D
1. Inizialmente il nastro 1 contiene l'input $w$ e i nastri 2 e 3 contengono solo $union.sq$
2. $D$ copia il contenuto del nastro 1 sul nastro 2
3. Utilizza il nastro 2 per simulare $N$ con input $w$ sulla ramificazione della sua computazione non deterministica corrispondente alla stringa sul nastro 3
 - Prima di ogni passo di $N$, consulta il simbolo sul nastro 3 per determinare quale scelta fare tra quelle consentite dalla funzione di transizione di $N$
 - Se si raggiunge una configurazione di accettazione $D$ accetta l'input, altrimenti passa al passo 4 
4. $D$ genera sul nastro 3 la stringa successiva a quella corrente in ordine radix e torna al passo 2
\
$D$ accetta se e solo se $N$ accetta $w$, quindi $L(D) eq L(N)$

== Corollario Macchina di Turing non Deterministica
*Corollario*: \
Un linguaggio $L$ è Turing riconoscibile se e solo se esiste una macchina di Turing non deterministica $N$ che lo riconosce, cioè tale che $L(N) eq L$
\
\
*Dimostrazione*: \
Se $L$ è il linguaggio $L(N)$ riconosciuto da un macchina di Turing non deterministica $N$, per il teorema precedente esiste una MdT deterministica $D$ tale che $L(D) eq L(N) eq L$
\
Quindi $L$ è Turing riconoscibile
\
\
Viceversa, se $L$ è Turing riconoscibile allora esiste una macchina di Turing deterministica $M eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject"))$ che lo riconosce, cioè tale che $L(M) eq L$
\ \
La macchina di Turing non deterministica \ $M' eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject"))$, dove $delta'(q,gamma) eq {delta(q,gamma)}$,per ogni $q in Q backslash {q_("accept"),q_("reject")}$ e $gamma in Gamma$, è tale che $L(M') eq L(M) eq L$

#pagebreak()

== Decisori non Deterministici
Una macchina di Turing non deterministica è un decisore se, per ogni stringa input $w$, tutte le computazioni a partire da $q_0 w$ terminano
\ \
Una macchina di Turing non deterministica $N$ decide $L$ se $N$ è un decisore e $L eq L(N)$
\ \
Sia $N$ un decisore non deterministico e sia $w$ una stringa
- $N$ *accetta* $w$ se e solo se esiste almeno una computazione \ $q_0 w arrow.r^* u q_("accept") v$, dove $q_0 w$ è la configurazione iniziale di $N$ con input $w$ e $u q_("accept") v$ è una configurazione di accettazione
  - L'albero della computazione di $N$ su $w$ è finito e contiene almeno una foglia con stato $q_("accept")$

- $N$ *non accetta* $w$ se e solo se nessuna computazione della configurazione iniziale $q_0 w$ con input $w$ termina in una configurazione di accettazione
  - L'albero delle computazione di $N$ su $w$ è finito e non contiene nessuna foglia con stato $q_("accept")$

\
Se $N$ è una macchina di Turing non deterministica tale che, per ogni input $w$, $N$ si ferma sempre su tutte le ramificazioni dell'albero delle computazioni su $w$, allora esiste una MdT deterministica $D$ che simula $N$ e che si arresta su ogni input
\
\
Diremo che una MdT non deterministica è un decisore se tutte le sue ramificazioni si fermano su ogni input
\
\
*Corollario*: \
Un linguaggio $L$ è decidibile se e solo se esiste una macchina di Turing non deterministica $N$ che lo decide
- Quindi, per ogni input $w$, l'albero delle computazioni di $N$ su $w$ ha un numero finito di nodi
#pagebreak()
*Teorema*: \
Se ogni nodo in un albero ha un numero finito di figli e ogni cammino dell'albero ha un numero finito di nodi, allora l'albero ha un numero finito di nodi
\
*Corollario*: \
Un linguaggio $L$ è decidibile se e solo se esiste una macchina di Turing non deterministica $N$ che lo decide
\
*Prova*: \
Se un linguaggio $L$ è decidibile, esiste una macchina di Turing deterministica $M$ che è un decisore e che accetta $L$ \
$M$ può essere facilmente trasformata in una macchina di Turing non deterministica che decide $L$
\
\
Viceversa, se un linguaggio $L$ è deciso da una macchina di Turing non deterministica $N$, definiamo una macchina di Turing deterministica $D'$, modificando la precedente definizione di $D$ come segue
\
*Descrizione di $D'$*
1. Inizialmente il nastro 1 contiene l'input $w$ e i nastri 2 e 3 contengono solo $union.sq$
2. $D'$ copia il contenuto del nastro 1 sul nastro 2
3. Utilizza il nastro 2 per simulare $N$ con input $w$ sulla ramificazione della sua computazione non deterministica corrispondente alla stringa sul nastro 3
 - Prima di ogni passo di $N$, consulta il simbolo sul nastro 3 per determinare quale scelta fare tra quelle consentite dalla funzione di transizione di $N$
 - Se si raggiunge una configurazione di accettazione $D'$ accetta l'input, altrimenti passa al passo 4 
4. Rifiuta se tutti i cammini dell'albero delle computazioni di $N$ su $w$ non hanno portato a una configurazione di accettazione, altrimenti $D'$ passa al passo 5
5. $D'$ genera sul nastro 3 la stringa successiva a quella corrente in ordine radix e torna al passo 2
\
Quindi possiamo dedurre che $D'$ è un decisore per $L$
\
\
Se $N$ accetta il suo input $w$, allora $D'$ troverà un cammino che termina in una configurazione di accettazione e $D'$ accetta $w$
\
\
Se $N$ non accetta  il suo input $w$, nessuna delle sue computazioni su $w$ termina in una configurazione di accettazione, siccome $N$ è un decisore, ciascuno dei cammini ha un numero finito di nodi poichè ogni arco nel cammino rappresenta un passo di computazione di $N$ su $w$, quindi, $D'$ si fermerà e rifiuterà quando l'intero albero sarà stato esplorato

\
$D'$ deve avere un controllo sulle stringhe che rappresentano codifiche di computazioni su $w$ che terminano in una configurazione di rifiuto oppure in una configurazione che non produce nessuna altra configurazione. Se $x$ è una stringa che codifica una tale computazione, $D'$ deve bloccare la generazione di stringhe in ordine radix con prefisso $x$. Analogamente, se la stringa $x$ è una stringa non valida, cioè non corrisponde a una computazione, $D'$ deve bloccare la generazione di stringhe in ordine radix con prefisso $x$

= Problemi di Decisione
Un problema di decisione è un problema che ha come soluzione una risposta si o no
- *Decidibile*: Se il liguaggio associato è decidibile
- *Semidecidibile*: Se il liguaggio associato è Turing riconoscibile
- *Indecidibile*: Se il liguaggio associato non è decidibile
== Richiami di Logica
*Variabili Booleane*: Variabili che possono assumere valore vero o falso
\
*Operazioni Booleane*: $or ("OR"), and ("AND"), not ("NOT")$
\
Denotiamo $not x$ con $overline(x)$

#pagebreak()

Dato un insieme di variabili booleane $X$, le formule booleane su $X$ sono definite induttivamente come segue:
- Le costanti $0,1$ e le variabili $x, overline(x), "con" x in X$, sono formule booleane
- Se $Phi, Phi_1, Phi_2$ sono formule booleane allora $(Phi_1 or Phi_2),(Phi_1 and Phi_2), overline(Phi)$ sono formule booleane
\
Una formula booleana $Phi$ è soddisfacibile se esiste un insieme di valori $0$ e $1$ per le variabili di $Phi$ che renda la formula uguale a $1$

\
*Cammino Hamiltoniano*: In un grafo orientato è un cammino orientato che passa per ogni vertice del grafo una e una sola volta

== Istanze Problema di Decisione
*Istanze*: Gli elementi di un insieme considerati dal problema di decisione, ovvero un particolare input per quel problema
\ \
*L'insieme delle istanze*: Rappresenta l'unione del sottoinsieme delle istanze con risposta si e del sottoinsieme con risposta no

== Problemi di Ricerca
Chiamiamo problemi di ricerca quelli per i quali cerchiamo una soluzione se esiste
\
\
Dato un problema di ricerca possiamo in genere usare come sottoprogramma un algoritmo per il corrispondente problema di decisione, se tale algoritmo esiste
#pagebreak()
== Livelli di Descrizione di una Macchina di Turing
- *Descrizione Formale*: Livello più basso e dettagliato, specificando gli elementi della settupla che definisce la MdT
- *Descrizione Implementativa*: Descriviamo verbalmente il modo in cui memorizza i dati sul nastro
- *Descrizione di Alto Livello*: Usiamo frasi del linguaggio per descrivere un algoritmo, ignorando come la macchina gestisce il nastro o la testina

== Codifiche
La corrispondenza che a una istanza associa una stringa deve essere un codifica, cioè deve rappresentare univocamente l'istanza
\
\
- Useremo $angle.l cal(O) angle.r$ per denotare una stringa che codifica l'oggetto $cal(O)$
- Useremo $angle.l cal(O)_1,...,cal(O)_k angle.r$ per denotare una stringa che codifica gli oggetti $cal(O)_1,...,cal(O)_k$
\
- Una MdT è codificabile con una stringa
- Una MdT e una stringa $w$ sono codificabili con una stringa

== Codifica di una MdT
In generale per codificare una macchina di Turing \ $M eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject"))$ occore stabilire come codificare
- I simboli dell'alfabeto in input
- I simboli dell'alfabeto di nastro
- Gli stati
- I possibili movimenti della testina
- I valori della funzione di transizione
- Lo stato iniziale $q_0$ e gli stati $q_("accept"),q_("reject")$
\
\
#pagebreak()
Un possibile codifica di una macchina di Turing $M eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject"))$ mediante una stringa su ${0,1}$
- Fissiamo un alfabeto infinito universale $Sigma_U eq {a_1,a_2...}$ e assumiamo che tutti i simboli di input e di nastro siano estratti da $Sigma_U$
- Fissiamo un insieme infinito universale di stati $Q_U eq {q_0,q_1,...}$ e assumiamo che tutte le MdT usano nomi di stati scelti da $Q_U$
- Codifichiamo un elemento $a_i in Sigma_U$ con la stringa $e(a_i) eq 0^(i+1)$
- Codifichiamo il simbolo $union.sq$ con la stringa $e(union.sq) eq 0$
- Codifichiamo un alfabeto $Delta eq {b_1,b_2,...,b_r}$ mediante la stringa
$ e(Delta) eq 111 e(b_1)1e(b_2)1 dot dot dot 1e(b_r)111 $
Quindi $e(Sigma)$ e $e(Gamma)$ sono definiti
- Codifichiamo un elemento $q_i in Q_U$ con la stringa $e(q_i) eq 0^(i+1)$
- Codifichiamo i movimenti della testina con
$ e(L) eq 0, e(R) eq 00, e(S) eq 000 $
- Codifichiamo una transizione $m$ di una MdT, ad esempio $delta(q,a) eq (p,b,D)$ con 
$ e(m) eq 11e(q)1e(a)1e(p)1e(b)1e(D)11 $
- Infine codifichiamo una l'intera MdT  $M eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject"))$ con transizioni $m_1,...,m_t$ mediante la stringa
$ 11111e(q_0)1e(q_("accept"))1e(q_("reject"))1e(Sigma)1e(Gamma)1e(m_1)1dot dot dot 1 e(m_t)11111 $

- Codifichiamo una stringa $w eq b_1 b_2 dot dot dot b_r$ mediante 
$ e(w) eq 11e(b_1)1e(b_2)1 dot dot dot 1e(b_r)11 $
- Codifichiamo una MdT $M$ e una stringa $w$ con la stringa
$ angle.l M,w angle.r eq e(M) e(w) $

== Linguaggio Associato a un Problema di Decisione
Il linguaggio $L$ associato a un problema di decisione $PP$ è il linguaggio delle codifiche delle istanza che hanno risposta si
\
\
Se esiste una macchina di Turing che decide $L$ il problema viene detto *decidibile*, altrimenti viene detto *indecidibile*
\
\
Se esiste una macchina di Turing che riconosce $L$ il problema viene detto *semidecidibile*

=== INDEPENDENT-SET
Sia $G eq (V,E)$ un grafo non orientato, con $V$ insieme di nodi ed $E$ insieme di archi
\
Un sottoinsieme $V'$ di nodi di $G$ è un independet-set in $G$ se per ogni $u,v in V'$, la coppia $(u,v)$ non è un arco, cioè $u "e" v$ non sono adiacenti
$ "INDEPENDENT-SET" eq {angle.l G,k angle.r | G "è un grafo non orientato", $
$ k "è un intero positivo e " G "ha un independent set di cardinalità" k} $

== Problemi di Decisione nella Teoria degli Automi
=== Problema Accettazione di un DFA
Sia $cal(B)$ unn DFA e $w$ una parola, il corrispondente linguaggio è
$ A_("DFA") eq {angle.l cal(B),w angle.r | cal(B) "è un DFA che accetta la parola" w} $
\
*Teorema*:
\
$A_("DFA")$ è un linguaggio decidibile

=== Problema del Vuoto
$ E_("DFA") eq {angle.l cal(A) angle.r | cal(A) "è un DFA e" L(cal(A)) eq emptyset} $

*Teorema*:
\
$E_("DFA")$ è un linguaggio decidibile

== Problema del Equivalenza di due DFA

$ E Q_("DFA") eq {angle.l cal(A),cal(B) angle.r | cal(A),cal(B) "sono DFA e" L(cal(A)) eq L(cal(B))} $

*Teorema*:
\
$E Q_("DFA")$ è un linguaggio decidibile

=== Alcuni Esempi con NFA
Potremmo formulare i tre precedenti attraverso rappresentazioni equivalenti come NFA o espressioni regolari
$ A_("NFA") eq {angle.l cal(B),w angle.r | cal(B) "è un NFA che accetta la parola" w} $
$ A_("REX") eq {angle.l cal(R),w angle.r | cal(R) "è un espressione regolare e" w in L(R)} $

= Metodo della Diagonalizzazione
== Funzione 
Dati due insiemi non vuoti $X$ e $Y$, una funzione $f: X arrow.r Y$ da $X$ in $Y$ è una relazione che associa a ogni elemento $x$ in $X$ uno e uno solo  \ $y eq f(x)$ in $Y$
- $X$ è il dominio della funzione
- $Y$ è il codominio della funzione

== Funzione Iniettiva 
Una funzione $f: X arrow.r Y$ è iniettiva se \ $forall x,x' in X, x eq.not x' arrow.double.r f(x) eq.not f(x')$

== Funzione Suriettiva 
Una funzione $f: X arrow.r Y$ è suriettiva $arrow.double.r.l forall y in Y, exists x in X: y eq f(x)$

== Funzione Biettiva 
Una funzione $f.X arrow.r Y$ è una funzione biettiva di $X$ su $Y$ se $f$ è iniettiva e suriettiva
#pagebreak()
== Cardinalità
Due insiemi $X$ e $Y$ hanno la stessa cardinalità se esiste una funzione biettiva $f: X arrow.r Y$ di $X$ su $Y$
$ |X| eq |Y| arrow.double.r.l "esiste una funzione biettiva" f: X arrow.r Y $
\
- $|X| lt.eq |Y| arrow.r.l.double$ esiste una funzione iniettiva $f: X arrow Y$
- $|X| lt.eq |Y|, |X| eq.not |Y| arrow.double.r |X| lt |Y|$
- $|X| lt.eq |Y|, |X| gt.eq |Y| arrow.double.r |X| eq |Y|$
=== Esempio $NN$
Sia $NN$ l'insieme dei numeri interi positivi e sia $NN_p eq {2n|n in NN}$ l'insieme dei numeri interi positivi pari
$ f: NN arrow.r {2n | n in NN} $
Dove $f(n) eq 2n$, per ogni $n in NN$, è biettiva

#align(center)[
  #image("img/Diagonalizzazione/esempio1.png")
]
#pagebreak()
=== Esempio $QQ^+$
Consideriamo l'insieme $QQ^+ eq {x/y|x,y in NN, x gt 0, y gt 0}$ dei numeri razionali positivi, quindi $NN$ e $QQ^+$ hanno la stessa cardinalità e lo possiamo vedere costruendo la seguente matrice, con la riga i-esima che contiene tutti i numeratori e la riga j-esima che contiene tutti i denominatori

#align(center)[
  #image("img/Diagonalizzazione/esempio2.png")
]
#pagebreak()
=== Esempio 3
Sia $NN^2 eq {(x,y)|x,y in NN, x,y gt 0}$, la funzione $f: NN^2 arrow.r NN$ definita come segue è biettiva
$ forall (x,y) in NN^2 f(x,y) eq ((x+y)(x+y+1))/2 + x eq $
$ eq 1/2 ((x+y)^2 + 3x +y) in NN $
La funzione $f$ è nota come la funzione coppia di Cantor

#align(center)[
  #image("img/Diagonalizzazione/esempio3.png")
]

== Numerabilità 
Un insieme $X$ è numerabile se esiste una funzione biettiva $f: NN arrow X$ di $NN$ su $X$
\
Un insieme $X$ è enumerabile se esiste una funzione biettiva calcolabile $f: NN arrow X$ di $NN$ su $X$
\
Un insieme $X$ è contabile se è finito o numerabile
#pagebreak()
=== $RR$ non è Numerabile
*Dimostrazione per Contraddizione*:
\
Supponiamo quindi che esista una funzione biettiva $f$ di $NN$ su $RR$
\
Costruiamo una tabella che contiene alcuni valori ipotetici della biezione e scegliamo $x$ in modo che sia diverso dagli elementi della tabella procedendo in diagonale

#align(center)[
  #image("img/Diagonalizzazione/rNonNum.png")
]

*Idea della Prova*: \
Supponiamo per assurdo che esista una funzione biettiva $f$ di $NN$ su $RR$, allora costruiamo la tabella seguente

#align(center)[
  #image("img/Diagonalizzazione/rNonNum2.png")
]

Se consideriamo $r eq 0,d_(1,1) d_(2,2)...$ e il numero reale $x eq 0,d'_(1,1) d'_(2,2)...$ che abbiamo ottenuto prima in modo che sia diverso dagli elementi della tabella procedendo in diagonale, non è immagine di nessun intero positivo \ In generale $x eq.not f(i)$ per un qualsiasi $i$, perchè $d'_(i,i) eq.not d_(i,i)$

== Metodo della Diagonalizzazione Linguaggi non Turing riconoscibili
\
*Corollario*: \
Esistono linguaggi che non sono Turing riconoscibili
\
Per la prova si usa il metodo della diagonalizzazione e cosiste nel provare le seguenti condizioni
- Dato un alfabeto $Sigma$, l'insieme $Sigma^*$ è numerabile
- L'insieme delle codifiche delle macchine di Turing è numerabile
- L'insieme dei linguaggi Turing riconoscibili è numerabile
- L'insieme dei linguaggi sull'alfabeto $Sigma$ ha cardinalità maggiore del numerabile

=== Numerabilità dell'Insieme delle Parole
*Teorema*: \
Se ogni insieme $S_n$ è numerabile, anche $S eq union_(n in NN) S_n$ è numerabile
\
*Corollario*: \
$Sigma^*$ è numerabile
\
*Dimostrazione*: \
$ Sigma^* eq union_(n in NN) Sigma^n $
Sia $Sigma eq {a_1,a_2,...,a_k}$ un alfabeto \
Possiamo definire una corrispondenza biunivoca tra $NN$ e $Sigma^*$ che permette di enumerare le stringhe in ordine Radix
$ w_1 eq epsilon, w_2 eq a_1,... $
In generale per la stringa $w_n$ abbiamo
$ n eq |{y in Sigma^* | y lt w_n ("Rispetto all'ordine Radix")}| +1 $
Dato che è possibile definire un algoritmo per calcolare tale indice abbiamo una funzione biettiva e calcolabile di $NN$ in $Sigma^*$
#pagebreak()

==== Dimostrazione alternativa
*Idea della Dimostrazione*: \
Provare che $|NN| lt.eq |Sigma^*|$ e poi che $|Sigma^*| lt.eq |NN times NN| eq |NN|$
#align(center)[
  #image("img/Diagonalizzazione/dimalt1.png")
]
#align(center)[
  #image("img/Diagonalizzazione/dimalt2.png")
]
#pagebreak()
*Dimostrazione*:
#align(center)[
  #image("img/Diagonalizzazione/dimalt3.png")
]
#align(center)[
  #image("img/Diagonalizzazione/dimalt4.png")
]
#pagebreak()

=== Numerabilità Insieme Codifiche MdT
L'insieme ${chevron.l M chevron.r | M "è una macchina di Turing"}$ è numerabile
\
*Dimostrazione*: 
\
È possibile codificare una MdT M con una stringa su un alfabeto $Sigma$ e l'applicazione $f: chevron.l M chevron.r arrow.r chevron.l M chevron.r in Sigma^*$ è iniettiva
\
Quindi
$ |{chevron.l M chevron.r | M "è una macchina di Turing"}| lt.eq |Sigma^*| eq |NN| $
Sia $w$ una stringa su un alfabeto $Delta$, il linguaggio ${w}$ è decidibile, sia $M_w$ una fissata MdT che decide ${w}$, l'applicazione $g$ tale che $g(w) eq chevron.l M_w chevron.r$ è iniettiva \
Quindi 
$ |NN| eq |Delta^*| lt.eq |{chevron.l M chevron.r |M "è una macchina di Turing" }| $
Da cui 
$ |{chevron.l M chevron.r | M "è una macchina di Turing"}| eq |NN| $
#pagebreak()
=== Numerabilità dei Linguaggi Turing Riconoscibili

L'insieme ${L | L "è un linguaggio Turing riconoscibile"}$ è numerabile \
*Dimostrazione*: \
Possiamo associare a ogni linguaggio Turing riconoscibile una fissata MdT che lo riconosce e questa corrispondeza è iniettiva
\
Quindi \
$ |{L subset.eq Sigma^* | L "è un linguaggio Turing riconoscibile" }| lt.eq $ 
$ |{chevron.l M chevron.r | M "è una macchina di Turing"}| eq |NN| $
Sia $w$ una stringa su un alfabeto $Delta$, il linguaggio ${w}$ è Turing riconoscibile
\
L'applicazione $h$ tale che $h(w) eq {w}$ è iniettiva
\
Quindi
$ |NN| eq |Delta^*| lt.eq |{L subset.eq Sigma^* | L "è un linguaggio Turing riconoscibile" }| $
Da cui $ |{L subset.eq Sigma^* | L "è un linguaggio Turing riconoscibile" }| eq |NN| $
#pagebreak()
=== Non Numerabilità dell'Insieme dei Linguaggi
Sia $Sigma^* eq {w_1,w_2,...}$
\
Sia $cal(B)$ l'insieme delle sequenze binarie infinite cioè delle sequenze infinite di 0 e 1
\

È possibile associare a ogni linguaggio $L$ una sequenza binaria infinita $cal(X)_L$, la sequenza caratteristica definita in questo modo:

- Il bit i-esimo di $cal(X)_L$ è 1 se l'i-esima stringa $w_i$ è in L
- Il bit i-esimo di $cal(X)_L$ è 0 se l'i-esima stringa $w_i in.not L$ 

#align(center)[
  #image("img/Diagonalizzazione/NonNumLing.png")
]

Questa relazione è una corrispondenza biunivoca tra l'insieme $cal(B)$ delle sequenze binarie infinite e l'insieme $cal(P)(Sigma^*)$ dei linguaggi su $Sigma$
- A ogni linguaggio $L$ su $Sigma$ è associata una sola sequenza binaria infinita $cal(X)$ tale che $cal(X) eq cal(X)_L$
- A ogni sequenza binaria infinita $cal(X)$ è associato un solo linguaggio $L$ su $Sigma$ tale che $cal(X) eq cal(X)_L$
Quindi l'applicazione $f:cal(P)(Sigma^*) arrow.r cal(B)$ definita da $f(L) eq cal(X)_L$ è biettiva
#pagebreak()
=== Non Numerabilità dell'Insieme delle Sequenze Binarie
L'insieme $cal(B)$ non è numerabile
\
*Idea della Dimostrazione*: \
Mostriamo che non esiste nessuna funzione biettiva di $NN$ sull'insieme $cal(B)$ delle sequenze binarie infinite, supponiamo per assurdo che esista una funzione biettiva $f$ du $NN$ su $cal(B)$

#align(center)[
  #image("img/Diagonalizzazione/nonNumSeqBin.png")
]

Le cifre sulla diagonale di questa matrice $d_(1,1),d_(2,2),...$ definiscono una sequenza binaria infinita $cal(X)$
\
La sequenza binaria infinita $overline(cal(X)) eq overline(d)_(1,1),overline(d)_(2,2),... $ che si ottiene scegliendo in ogni posizione il complemento della corrispondente cifra in $cal(X)$ non è immagine di nessun intero positivo
\
Quindi, per ogni $i, overline(cal(X)) eq.not f(i)$ perchè $overline(d)_(i,i) eq.not d_(i,i)$

=== Non Numerabilità Insieme delle Parti dei Linguaggi
L'insieme $cal(P)(Sigma^*)$ dei linguaggi su $Sigma$ non è numerabile
\
*Dimostrazione*: 
\
Esiste un applicazione biettiva di $f "in" cal(P)(Sigma^*) "in" cal(B)$, \ 
quindi $|cal(B)| eq |cal(P)(Sigma^*)|$
#pagebreak()

==== Dimostrazione alternativa
#align(center)[
  #image("img/Diagonalizzazione/dmialtL1.png")
]
#align(center)[
  #image("img/Diagonalizzazione/dmialtL2.png")
]
#align(center)[
  #image("img/Diagonalizzazione/dmialtL3.png")
]

== Esistono dei Linguaggi non Turing Riconoscibili
*Corollario*:
\
L'insieme ${L subset.eq Sigma^* | L "è Turing riconoscibile"}$ è numerabile mentre \
$cal(P)(Sigma^*)$ non è numerbaile, quindi
$ |{L subset.eq Sigma^* | L "è Turing riconoscibile"}| eq |NN| eq.not |cal(P)(Sigma^*)| $
Inoltre
$ h: {L subset.eq Sigma^* | L "è Turing riconoscibile"} arrow.r cal(P)(Sigma^*) "dove" $
$ h(L) eq L "è iniettiva" $
Ne consegue
$ |{L subset.eq Sigma^* | L "è Turing riconoscibile"}| lt |cal(P)(Sigma^*)| $
Quindi esistono linguaggi che non sono Turing riconoscibili

#pagebreak()
= Indecidibilità
== Linguaggio Indecidibile
*Teorema*: \
Il linguaggio $A_("TM")$ è Turing riconoscibile ma non è decidibile
 $ A_("TM") eq {chevron.l M,w chevron.r | M "è un macchina di Turing e" $
$ M "accetta la parola "w} $

== Macchina di Turing Universale

Una macchina di Turing universale $U$, quando riceve in input una codifica $chevron.l M,w chevron.r $ di una macchina di Turing $M$ e di una stringa $w$, simula la computazione di $M$ sull'input $w$

== Teorema Esistenza MdT Universale
Esiste una MdT universale

#align(center)[
  #image("img/Indecibilita/mdtUniversale.png")
]

Durante la sua computazione $U$
- Usa il primo nastro per simulare la computazione di $M$
- Lascia sul secondo nastro la codifica di $M$
- Ha sul terzo nastro la codifica dello stato corrente di $M$
$U$ individua l'istruzione corrente sul secondo nastro, usando il contenuto del terzo nastro e il simbolo corrente codificato sul primo nastro, quindi decodifica l'istruzione e la esegue
#pagebreak()
== $A_("TM")$ è Turing Riconoscibile

Il linguaggio è Turing riconoscibile
$ A_("TM") eq {chevron.l M,w chevron.r | M "è una macchina di Turing e" $
$ M "accetta la parola "w} $

*Dimostrazione*: \
La seguente MdT $U$ riconosce $A_("TM")$
\
$U eq "Sull'input "chevron.l M,w chevron.r$ dove $M$ è una MdT e $w$ è una stringa
- Simula $M$ sull'input $w$
- Se $M$ accetta $w$, accetta l'input $chevron.l M,w chevron.r$
- Se $M$ rifiuta $w$, rifiuta l'input $chevron.l M,w chevron.r$
Quindi $U$ accetta una stringa $y$ se e solo se è della forma $chevron.l M,w chevron.r$ dove $M$ è una MdT, $w$ è una stringa e $M$ accetta $w$
\
Quindi, $U$ accetta una stringa $y$ se e solo se $y eq chevron.l M,w chevron.r$ è un elemento di $A_("TM")$
\
Da cui otteniamo che 
$ L(U) eq A_("TM") $
*Nota*: \
$U$ non termina su $chevron.l M,w chevron.r$ se e solo se $M$ non termina su $w$, quindi $U$ non decide $A_("TM")$
#pagebreak()
== $A_("TM")$ è Indecidibile
Il linguaggio $A_("TM")$ è indecidibile, ma è Turing riconoscibile
\
*Dimostrazione*: \
Supponiamo per assurdo che $A_("TM")$ sia decidibile, quindi che esista un decisore $H$ che riconosca $A_("TM")$
\
- $H$ accetta $chevron.l M,w chevron.r$ se $chevron.l M,w chevron.r in A_("TM")$
- $H$ rifiuta $chevron.l M,w chevron.r$ se $chevron.l M,w chevron.r in.not A_("TM")$

$ H(chevron.l M, w chevron.r) = cases(
  "accetta" & "se" M "accetta" w,
  "rifiuta" & "se" M "non accetta" w
) $

Costruiamo una nuova MdT $D$ che usa $H$ come sottoprogramma, che chiama $H$ su $chevron.l M chevron.l M chevron.r chevron.r$
- $H$ accetta se $M$ accetta $chevron.l M chevron.r$
- $H$ rifiuta se $M$ rifiuta $chevron.l M chevron.r$
Ora costruiamo $D$ in modo che
- Rifiuta se $M$ accetta
- Accetta se $M$ rifiuta

#align(center)[
  #image("img/Indecibilita/atmind1.png")
]
Dato che $D$ può essere facilmente costruita a partire da $H$, se esiste $H$ allora esiste anche $D$
\
*Descrizione di $D$*:
$D eq$ Sull'input $chevron.l M chevron.r$, dove $M$ è una MdT
- Simula $H$ quando $H$ riceve in input $chevron.l M chevron.l M chevron.r chevron.r$
- Fornisce come output l'opposto di $H$, cioè se $H$ accetta $chevron.l M chevron.l M chevron.r chevron.r$, rifiuta
- Se $H$ rifiuta $chevron.l M chevron.l M chevron.r chevron.r$, accetta

$ D(chevron.l M chevron.r) = cases(
  "rifiuta" & "se" M "accetta" chevron.l M chevron.r,
  "accetta" & "se" M "non accetta" chevron.l M chevron.r
) $

Ma se diamo in input la sua stessa codifica otteniamo
$ D(chevron.l D chevron.r) = cases(
  "rifiuta" & "se" D "accetta" chevron.l D chevron.r,
  "accetta" & "se" D "non accetta" chevron.l D chevron.r
) $
Cioè $D$ accetta $chevron.l D chevron.r$ se e solo se $D$ non accetta $chevron.l D chevron.r$ il che è una contraddizione, quindi $H$ non può esistere

== Linguaggi co-Turing Riconoscibili
Un linguaggio $L$ è co-Turing riconoscibile se il suo complemento è Turing riconoscibile
#pagebreak()
== La Classe dei Linguaggi Decidibili è Chiusa Rispetto al Complemento
*Soluzione*: \
Sia $A$ un linguaggio decidibile, sia $M_A$ una MdT che decide $A$ \
Definiamo la MdT $M_overline(A)$ sull'input $w$, $M_overline(A)$ simula $M_A$ e accetta $W$ se e solo se $M_A$ rifiuta $w$
\
Poiché $M_A$ si arresta su ogni input anche $M_overline(A)$ si arresta su ogni input
\
Il linguaggio di $M_overline(A)$ è $overline(A)$, dato che accetta $w$ se e solo se $M_A$ rifiuta $w$, quindi se e solo se $w in.not A$
\
Quindi $M_overline(A)$ è una MdT che decide $overline(A)$ ed $overline(A)$ è decidibile
\
\
Formalmente sia $M_A$ un decisore che decide $A$
$ M_A eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject")) $ 
Sia 
$ M_overline(A) eq (Q,Sigma,Gamma,delta',q_0,q_("accept"),q_("reject")) $ 
Dove per ogni $q in Q backslash {q_("accept"),q_("reject")}$, per ogni $gamma in Gamma$

$ delta'(q,gamma) eq cases(
  delta(q,gamma) & "se" delta(q,gamma) eq (q',gamma',d),
  & "con" q' in.not {q_("accept"),q_("reject")},
  (q_("accept"),gamma',d) & "se" delta(q,gamma) eq (q_("reject"),gamma',d),
  (q_("reject"),gamma',d) & "se" delta(q,gamma) eq (q_("accept"),gamma',d),
) $
È Semplice verificare che $M_(overline(A))$ è un decisore e che $L(M_(overline(A))) eq overline(A)$

#pagebreak()
== Linguaggio Decidibile Se e Solo se Turing e co-Turing Riconoscibile
*Dimostrazione*: \
Dobbiamo mostrare che $L$ è decidibile $arrow.double.l.r$ $L$ e il suo complemento sono entrambi Turing Riconoscibili
\
\
$arrow.double.r$ \
Se $L$ è decidibile allora esiste un decider tale che $M$ accetta $w$ se e solo se $w in L$
, in particolare $M$ ricosce $L$ e quindi $L$ è Turing riconoscibile
\
Dato che $L$ decidibile allora anche $overline(L)$ decidibile, quindi $overline(L)$ è Turing riconoscibile
\
\
$arrow.double.l$ \
Supponiamo che $L$ e il suo complemento siano entrambi Turing riconoscibili\
Sia $M_1$ una MdT che riconosce $L$ e $M_2$ una MdT che riconosce $overline(L)$
\
Definiamo una MdT M \
$M eq$ Sull'input $w$:
- Esegue sia $M_1$ che $M_2$ su input $w$ in parallelo
- Se $M_1$ accetta, accetta
- Se $M_2$ accetta, rifiuta
Vogliamo provare che $M$ decide $L$, quindi dobbiamo provare che
- $M$ è un decisore
- $M$ riconosce $L$, cioè $L eq L(M)$
$M$ è un decisore, infatti per ogni stringa $w$ o $w in L$, oppure $w in overline(L)$
\
Poichè $M$ si ferma ogni volta che $M_1$ accetta o $M_2$ accetta, allora $M$ si ferma sempre, quindi è un decisore
\
\
#pagebreak()
Ora dobbiamo provare $L eq L(M)$
- $w in L$ se e solo se $M_1$ accetta $w$, quindi $M$ accetta $w$
$ w in L arrow.double.r M "accetta" w $
- $w in.not L$ se e solo se $M_2$ accetta $w$, quindi $M$ rifiuta $w$
$ w in.not L arrow.double.r M "non accetta" w $
Siccome $M$ accetta $w$ se e solo se $w in L$ possiamo concludere che $L(M) eq L$
 \ *Nota*: Abbiamo usato il contronominale per dimostrare questa doppia inclusione

== $overline(A_("TM"))$ non è Turing Riconoscibile
*Dimostrazione*: \
Supponiamo per assurdo che $overline(A_("TM"))$ sia Turing riconoscibile\
Sappiamo che $A_("TM")$ è Turing riconoscibile\
Quindi $A_("TM")$ sarebbe Turing riconoscibile e co-Turing riconoscibile, quindi per il precedente teorema sarebbe decidibile, ma è un assurdo dato che $A_("TM")$ è indecidibile

== Chiusura Linguaggi Turing Riconoscibili Rispetto al Complemento
La classe dei linguaggi Turing riconoscibili non è chiusa rispetto al complemento, infatti $A_("TM")$ è Turing riconoscibile, ma $overline(A_("TM"))$ non è Turing riconoscibile
\
*Note*:   \
- Questo teorema non può essere usato per provare la proprietà di chiusura dei linguaggi decidibili rispetto al complemento
- Non può essere considerato una definizione di linguaggio decidibile

#pagebreak()
= Riducibilità
== Esempio Descrizione Informale
$ Sigma eq {0,1} $
Denotiamo con $chevron.l n chevron.r$ la rappresentazione binario di $n in NN$
$ "EVEN" eq {w in Sigma^* | w eq chevron.l n chevron.r, n in NN "pari"} $
$ "ODD" eq {w in Sigma^* | w eq chevron.l n chevron.r, n in NN "dispari"} $
Costruiamo la MdT INCR
#align(center)[
  #image("img/Riducibilità/rid1.png")
]

$"INCR" eq "Sulla stringa di input "w$:

- Se $w in.not ({1 Sigma^* union {0}})$ si ferma sul primo carattere di $w$, altrimenti esegue i passi successivi
- Trasforma $w$ in $dollar w$
- Nello stato $q_r$ scorre l'input da sinistra a destra fino a incontrare il simbolo $union.sq$
- Passa nello stato $q_cal(l)$, si sposta a sinistra cambiando ogni carattere 1 che vede in 0 fino a leggere un carattere diverso da 1
  - Se questo carattere è 0 lo cambia in 1, e si sposta a sinistra fino a leggere $dollar$, elimina $dollar$ e sposta a sinistra di una casella la stringa di caratteri 0 e 1 sul nastro e poi si ferma
  - Se questo carattere è $dollar$, l'input era una stringa si caratteri uguali a 1, allora cambia $dollar$ in 1 e si ferma su quest'ultimo carattere
#pagebreak()
Abbiamo definito una funzione calcolabile
$ f: w in Sigma^* arrow w' in Sigma^* $
Tale che
$ w eq chevron.l n chevron.r in "EVEN" arrow.double.r.l f(w) eq w' eq chevron.l n+1 chevron.r in "ODD" $
*Nota*: $f$ è definito su tutto $Sigma^*$

#align(center)[
  #image("img/Riducibilità/rid2.png")
]
- Se esiste una MdT Rc he decide $"ODD"$, la MdT S decide EVEN
- Se EVEN è indecidibile proviamo che anche ODD lo è

== Riducibilità Descrizione Informale
*Idea*: \
Convertire le istanze di un problema P nelle istanze di un problema P' in modo che un algoritmo P', se esiste, possa essere utilizzato per progettare un algoritmo per P
- Sia A il linguaggio associato a P e B il linguaggio associato a P', allora
 - B decidibile $arrow.double.r$ A decidibile
 - A indecidibile $arrow.double.r$ B indecidibile
#pagebreak()
== Richiamo di Logica
#align(center)[
  #image("img/Riducibilità/richiamologica1.png")
]
#align(center)[
  #image("img/Riducibilità/richiamologica2.png")
]
#pagebreak()
== Riduzione Mediante Funzione
*Definizione*: \
Un linguaggio $A subset.eq Sigma^*$ è riducibile mendiante una funzione a un linguaggio $B subset.eq Sigma^* space (A lt.eq_m B)$ se esiste una funzione calcolabile \ $f: Sigma^* arrow.r Sigma^*$ tale che
$ forall w in Sigma^* space w in A arrow.double.r.l f(w) in B $
\
*Definizione*: \
Una riduzione da un linguaggio $A subset.eq Sigma^*$ a un linguaggio $B subset.eq Sigma^*$ è una funzione $f: Sigma^* arrow.r Sigma^*$ calcolabile e tale che:
$ forall w in Sigma^* space w in A arrow.double.r.l f(w) in B $

== Teorema 1 $A lt.eq_m B$ se e solo se $overline(A) lt.eq_m overline(B)$
$ A lt.eq_m B$ se e solo se $overline(A) lt.eq_m overline(B) $

*Dimostrazione*: \
Per ipotesi $ A lt.eq_m B$ quindi esiste una riduzione $f$ di $A$ a $B$ \
Poichè $f$ è una riduzione, $f$ è calcolabile e inoltre 
$ forall w in Sigma^* space w in A arrow.double.r.l f(w) in B $
Quindi 
$ forall w in Sigma^* space w in.not A arrow.double.r.l f(w) in.not B $
Cioè
$ forall w in Sigma^* space w in overline(A) arrow.double.r.l f(w) in overline(B) $
Quindi per definizione $f$ è una riduzione da $overline(A)$ a $overline(B)$
#pagebreak()

== Teorema 5.22 $A lt.eq_m B$ e $B$ è Decidibile, allora $A$ è Decidibile
Se $A lt.eq_m B$ e $B$ è decidibile, allora $A$ è decidibile \
*Dimostrazione*: \

Sia $M_B$ una MdT che decide $B$, sia $f$ una riduzione da $A$ a $B$ e sia $M_f$ una MdT che calcola $f$
\
Consideriamo la MdT $M_A$ \
$M_A eq "Sull'input" w:$
- Simula $M_f$ e calcola $f(w)$
- Simula $M_B$ su $f(w)$
  - Se $M_B$ accetta $f(w)$, accetta
  - Se $M_B$ rifiuta $f(w)$, rifiuta

#align(center)[
  #image("img/Riducibilità/teo522.png")
]
- $M_A$ decide $A$, quindi è un decider
- Per ogni $w, M_f$ si ferma con $f(w)$ sul nastro 
- Per ogni $w,M_B$ si ferma su $f(w)$ perchè $M_B$ è un decider
Inoltre $M_A$ riconosce $A$
$ w in L(M_A) arrow.double.l.r f(w) in L(M_B) ("Definizione di "M_A) $
$ arrow.double.l.r f(w) in B (M_B "decide" B) $
$ arrow.double.r.l w in A ("Definizione di riduzione") $

#pagebreak()

== Teorema 5.28 $A lt.eq_m B$ e $B$ è Turing Riconoscibile, allora $A$ è Turing Riconoscibile
Se $A lt.eq_m B$ e $B$ è Turing riconoscibile, allora $A$ è Turing riconoscibile
\
*Dimostrazione*: \
Sia $M_B$ una MdT che riconosce $B$, sia $f$ una riduzione di $A$ a $B$ e sia $M_f$ una MdT che calcola $f$
\
Consideriamo la MdT $M_A$
\
$M_A eq "Sull'input" w$
- Simula $M_f$ e calcola $f(w)$
- Simula $M_B$ su $f(w)$
  - Se $M_B$ accetta $f(w)$, accetta
  - Se $M_B$ rifiuta $f(w)$, rifiuta

$M_A$ riconosce $A$
$ w in L(M_A) arrow.double.l.r f(w) in L(M_B) ("Definizione di "M_A) $
$ arrow.double.l.r f(w) in B (M_B "decide" B) $
$ arrow.double.r.l w in A ("Definizione di riduzione") $

== Corollario Se $A lt.eq_m B$ e $A$ è Indecidibile, allora $B$ è Indecidibile
Se $A lt.eq_m B$ e $A$ è indecidibile, allora $B$ è indecidibile

*Dimostrazione*: \
Se $B$ fosse decidibile lo sarebbe anche $A$ in virtù del teorema 5.22
\ *Nota*: \
Usiamo il contronominale

#pagebreak()
== Corollario Se $A lt.eq_m B$ e $A$ non è Turing Riconoscibile, allora $B$ non è Turing Riconoscibile
Se $A lt.eq_m B$ e $A$ non è Turing Riconoscibile, allora $B$ non è Turing Riconoscibile
\
*Dimostrazione*: \
Se $B$ fosse Turing riconoscibile lo sarebbe anche $A$ in virtù del Teorema 5.28

== Funzioni Calcolabili
Una funzione $f: Sigma^* arrow.r Sigma^*$ è calcolabile se esiste una macchina di Turing $M eq  (Q,Sigma,Gamma, delta,q_0,q_("accept"),q_("reject"))$ tale che su ogni input, $M$ si arresta con $f(w)$, e solo con $f(w)$, sul nastro \
*Scrittura Compatta*: \
$ forall w in Sigma^* space q_0 w arrow.r^* q_("accept") f(w) $
- La MdT si deve arrestare su ogni input
- $M$ si arresta con $f(w)$ e solo con $f(w)$ sul suo nastro
\
- Le funzioni possono essere anche trasformazioni di codifiche di MdT

=== Funzioni Aritmetiche Calcolabili
- $"incr"(n) eq n+1$
- $"dec"(n) eq cases(
  n-1 & "se" n gt 0,
  0 & "se" n eq 0
)$
- $(m.n) arrow.r m+n$
- $(m.n) arrow.r m-n$
- $(m.n) arrow.r m dot n$
#pagebreak()
=== Esempio Funzioni Calcolabili
Data una MdT $M eq (Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject"))$, denotiamo con $M'$ la MdT che accetta le stringhe rifiutate da $M$ e rifiuta quelle accettate, ma in generale $M'$ non riconosce il complemento di $L(M)$\
Consideriamo la funzione $f: Sigma^* arrow Sigma^*$
$ f(y) eq cases(
  epsilon & "se" y eq.not chevron.l M chevron.r"," M "MdT",
  chevron.l M' chevron.r & "se" y eq chevron.l M chevron.r
) $
Consideriamo la MdT $F$ sull'input  $y$\
- Se $y eq.not chevron.l M chevron.r$, restituisce $epsilon$
- Se $y eq chevron.l M chevron.r$, "costruisce" la MdT $M' eq $ Sull'input $x$
  - Simula $M$ su $x$
  - Se $M$ accetta, rifiuta
  - Se $M$ rifiuta, accetta
Chiamiamo $delta$ la funzione di transizione di $M$ e $delta'$ quella della MdT $M'$
\
$F$ cerca nella codifica di $M$ le codifiche delle transizioni della forma $delta(q,a) eq (q_("accept"),a',D), D in {L,R}, a,a' in Gamma, q in Q$ e cambia ognuna di esse con la codifica \ $delta'(q,a) eq (q_("reject"),a',D), D in {L,R}, a,a' in Gamma, q in Q$
\
Analogamente $F$ cerca nella codifica di $M$ le codifiche delle transizioni della forma $delta(q,a) eq (q_("reject"),a',D), D in {L,R}, a,a' in Gamma, q in Q$ e cambia ognuna di esse con la codifica \ $delta'(q,a) eq (q_("accept"),a',D), D in {L,R}, a,a' in Gamma, q in Q$
\
Esiste una MdT $F$ dato che deve solo scorrere l'input e verificare lo stesso cambiando i caratteri in esso \
La stringa in output è la codifica $chevron.l M' chevron.r$ di $M'$ che simula $M$

#pagebreak()

=== Esempio Funzioni Calcolabili 2
Consideriamo $A_("TM")$ e $B eq {a b}$
\
Consideriamo la funzione $f: Sigma^* arrow.r Sigma^*$, dove $a,b in Sigma$
$ f(y) eq cases(
  a b & "se" y eq chevron.l M","w chevron.r in A_("TM"),
  a & "altrimenti"
) $

Quindi $f$ è una funzione tale che $f(y) eq a$ se $y$ non è della forma $chevron.l M","w chevron.r$, oopure se $y eq chevron.l M","w chevron.r$ con $chevron.l M","w chevron.r in A_("TM")$
\ Quindi per ogni $y in Sigma^*$
$ y in A_("TM") arrow.double.l.r f(y) in {a b} $
*Idea*:  \
- Supponiamo per assurdo che questa funzione sia calcolabile
- Se fosse calcolabile allora grazie alla definizione di riduzione \ $A_("TM") lt.eq_m {a b}$
- Sappiamo che ${a b}$ è decidibile
- Tuttavia applicando il Teorema 5.22 se $A_("TM") lt.eq_m {a b}$ e ${a b}$ è decidibile, allora $A_("TM")$ deve essere decidibile, ma è un assurdo
#pagebreak()
== ${a b} lt.eq_m A_("TM")$
Sia $M$ la MdT tale che $L(M) eq L(a^*)$ \
Consideriamo la funzione $f: Sigma^* arrow.r Sigma^*$, dove $a,b in Sigma$
$ f(y) eq cases(
  chevron.l M","a chevron.r & "se" y eq a b,
  chevron.l M","b chevron.r & "altrimenti"
 ) $
Con $chevron.l M,a chevron.r in A_("TM")$ e $chevron.l M,b chevron.r in.not A_("TM")$
\ \  Dobbiamo dimostrare che $f$ è una riduzione da ${a b}$ ad $A_("TM")$
La funzione $f$ è calcolabile, la MdT $F$ che calcola $f$ sull'input $y$:
- Se $y eq a b$, scrive la stringa $chevron.l M,a chevron.r$ e si ferma
- Se $y eq.not a b$, scrive la stringa $chevron.l M,b chevron.r$ e si ferma
Inoltre
$ y in {a b} arrow.double.r y eq a b arrow.double.r f(y) eq chevron.l M,a chevron.r in A_("TM") $
$ y in.not {a b} arrow.double.r y eq.not a b arrow.double.r f(y) eq chevron.l M,b chevron.r in.not A_("TM") $

Quindi per ogni stringa $y$
$ y in {a b} arrow.double.r.l f(y) in A_("TM") $
In conclusione ${a b} lt.eq_m A_("TM")$
#pagebreak()
== $A_("TM") lt.eq_m "HALT"_("TM")$
$ "HALT_TM" eq {chevron.l M,w chevron.r | M "è un MdT e "M "si arresta su "w} $
*Teorema*: \
$ A_("TM") lt.eq_m "HALT"_("TM") $
*Dimostrazione*: \
Definiamo una funzione calcolabile $f: Sigma^* arrow.r Sigma^*$ tale che per ogni stringa $chevron.l M,w chevron.r$ con $M$ MdT e $w$ stringa e $M'$ MdT
$ f(chevron.l M,w chevron.r) eq chevron.l M',w chevron.r $
Inoltre 
$ chevron.l M,w chevron.r in A_("TM") arrow.double.l.r chevron.l M',w chevron.r in "HALT"_("TM") $

Consideriamo la MdT $F$ sull'input $chevron.l M,w chevron.r$
- Costruisce la MdT $M' eq$ Sull'input $x$
  - Simula $M$ su $x$
  - Se $M$ accetta, accetta
  - Se $M$ rifiuta, cicla
- Fornisce in output $chevron.l M',w chevron.r$

La funzione $f$ calcolata da $F$ è una riduzione da $A_("TM")$ a $"HALT"_("TM")$
$ chevron.l M,w chevron.r arrow.double.r.l M "accetta" w arrow.double.r.l M' "si arresta su" w $
$ arrow.double.r.l chevron.l M',w chevron.r in "HALT"_("TM") $
#pagebreak()

== $"HALT"_("TM")$
$ "HALT_TM" eq {chevron.l M,w chevron.r | M "è un MdT e "M "si arresta su "w} $
È indecidibile

== $A_("TM") lt.eq_m overline(E_("TM"))$
$ E_("TM") eq {chevron.l M chevron.r | M "è una MdT e" L(M) eq emptyset} $
Proviamo che 
$ A_("TM") lt.eq_m overline(E_("TM")) $
*Dimostrazione*: \
Definiamo una funzione calcolabile $f: Sigma^* arrow Sigma^*$ che per ogni stringa $chevron.l M,w chevron.r$ con $M$ MdT e $w$ stringa e $M_1$ MdT
$ f(chevron.l M,w chevron.r) eq chevron.l M_1 chevron.r $
Inoltre 
$ chevron.l M,w chevron.r in A_("TM") arrow.double.l.r chevron.l M_1 chevron.r in overline(E_("TM")) $
Sia $M_1 eq$ Sull'input $x$
- Se $x eq.not w$ allora $M_1$ si ferma e rifiuta $x$
- Se $x eq w$ allora $M_1$ simula $M$ su $w$ e accetta $x$ se $M$ accetta $x eq w$
La funzione che associa a $chevron.l M,w chevron.r$ la stringa $chevron.l M_1 chevron.r$
 è una riduzione da $A_("TM")$ a $overline(E_("TM"))$
\
$f$ è calcolabile e possiamo costruire la MdT $F$ che sull'input $chevron.l M,w chevron.r$ fornisce in output $chevron.l M_1 chevron.r$
\
Inoltre
$ chevron.l M,w chevron.r in A_("TM") arrow.double.r M "accetta" w arrow.double.r L(M_1) eq.not emptyset arrow.double.r chevron.l M_1 chevron.r in overline(E_("TM"))  $
e 
$ chevron.l M,w chevron.r in.not A_("TM") arrow.double.r M "non accetta" w arrow.double.r L(M_1) eq emptyset arrow.double.r chevron.l M_1 chevron.r in.not overline(E_("TM"))  $
Quindi 
$ chevron.l M,w chevron.r in A_("TM") arrow.double.r.l M "accetta" w arrow.double.r.l L(M_1) eq.not emptyset arrow.double.r.l chevron.l M_1 chevron.r in overline(E_("TM"))  $

== Teorema 5.27 $overline(E_("TM"))$
$overline(E_("TM"))$ è indecidibile
== Corollario $E_("TM")$
$E_("TM")$ è indecidibile
\
*Prova*: \
Se $E_("TM")$ fosse decidibile lo sarebbe anche $overline(E_("TM"))$, ma questo è in contraddizione col teorema 5.27
\
*Nota*: \
Non esiste nessuna riduzione da $A_("TM")$ a $E_("TM")$


== $A_("TM") lt.eq_m "REGULAR"_("TM")$
$ "REGULAR"_("TM") eq {chevron.l M chevron.r | M "è una MdT e" L(M) "è regolare"} $
Proviamo che $A_("TM") lt.eq_m "REGULAR"_("TM")$
\
*Dimostrazione*: \
Definiamo una funzione calcolabile $f: Sigma^* arrow Sigma^*$ che per ogni stringa $chevron.l M,w chevron.r$ con $M$ MdT e $w$ stringa e $R$ MdT
$ f(chevron.l M,w chevron.r) eq chevron.l R chevron.r $
Inoltre 

$ chevron.l M,w chevron.r in A_("TM") arrow.double.l.r chevron.l R chevron.r in "REGULAR"_("TM") $
Data una MdT $M$ e una stringa $w$, sia $R eq $Sull'input $x$:
- Se $x in {0^n 1^n | n in NN}$, allora $R$ si ferma e accetta $x$
- Se $x in.not {0^n 1^n | n in NN}$, allora $R$ simula $M$ su $w$ e accetta $x$ se $M$ accetta $w$

$ L(R) eq cases(
  Sigma^* & "se" chevron.l M","w chevron.r in A_("TM"),
  {0^n 1^n | n in NN} & "altrimenti"
) $
La funzione che associa a $chevron.l M,w chevron.r$ la stringa $chevron.l R chevron.r$
 è una riduzione da $A_("TM")$ a $"REGULAR"_("TM")$
\
$f$ è calcolabile e possiamo costruire la MdT $F$ che sull'input $chevron.l M,w chevron.r$ fornisce in output $chevron.l R chevron.r$
\
Inoltre
$ chevron.l M,w chevron.r in A_("TM") arrow.double.r M "accetta" w arrow.double.r L(R) eq Sigma^* "è regolare" $
$ arrow.double.r chevron.l R chevron.r in "REGULAR"_("TM") $
\
$ chevron.l M,w chevron.r in.not A_("TM") arrow.double.r M "non accetta" w arrow.double.r L(R) eq Sigma^* "non è regolare" $
$ arrow.double.r chevron.l R chevron.r in.not "REGULAR"_("TM") $

In conclusione
$ chevron.l M,w chevron.r in A_("TM") arrow.double.r.l M "accetta" w arrow.double.r.l L(R) eq Sigma^* "è regolare" $
$ arrow.double.r.l chevron.l R chevron.r in "REGULAR"_("TM") $

== Teorema $"REGULAR"_("TM")$
$ "REGULAR"_("TM") eq {chevron.l M chevron.r | M "è una MdT e" L(M) "è regolare"}$ è indecidibile

#pagebreak()
== $E_("TM") lt.eq_m E Q_("TM")$
$ E_("TM") eq {chevron.l M chevron.r | M "è una MdT e" L(M) eq emptyset} $
$ E Q_("TM") eq {chevron.l M_1,M_2 chevron.r | M_1,M_2 "sono MdT e" L(M_1) eq L(M_2)} $

Proviamo che $E_("TM") lt.eq_m E Q_("TM")$ \
Sia $M_1$ una MdT tale che $L(M_1) eq emptyset$, quindi data una MdT $M$ avremmo che $L(M) eq L(M_1)$ se e solo se $L(M) eq emptyset$
\

La funzione che associa a $chevron.l M chevron.r$ la stringa $chevron.l M,M_1 chevron.r$
 è una riduzione da $E_("TM")$ a $E Q_("TM")$
\
$f$ è calcolabile e possiamo costruire la MdT $F$ che sull'input $chevron.l M chevron.r$ fornisce in output $chevron.l M,M_1 chevron.r$
\
Inoltre

$ chevron.l M chevron.r in E_("TM") arrow.double.r.l L(M) eq emptyset arrow.double.r.l L(M) eq L(M_1) $
$ arrow.double.r.l chevron.l M,M_1 chevron.r in E Q_("TM") $

== Teorema $E Q_("TM")$
$  $$ E Q_("TM") eq {chevron.l M_1,M_2 chevron.r | M_1,M_2 "sono MdT e" L(M_1) eq L(M_2)}$ è indecidibile
#pagebreak()
== $A_("TM") lt.eq_m E Q_("TM")$
Data $chevron.l M,w chevron.r$, consideriamo una MdT $M_1$ che riconosce $Sigma^*$ e una MdT $M_2$ che riconosce $Sigma^*$ se $M$ accetta $w$ \
Per ogni input $x$:
- $M_1$ accetta $x$
- $M_2$ simula $M$ su $w$, se $M$ accetta, $M_2$ accetta
Quindi $L(M) eq Sigma^*$ e
$ L(M_2) eq cases(
  Sigma^* & "se" chevron.l M","w chevron.r in A_("TM"),
  emptyset & "altrimenti"
) $
Di conseguenza $L(M_1) eq L(M_2)$ se e solo se $M$ accetta $w$
\
Consideriamo la MdT $G eq$ Su input $chevron.l M,w chevron.r$, dove $M$ MdT e $w$ è una stringa:
- Costruisce le due MdT $M_1 "e" M_2$
  - $M_1 eq$ Su ogni input:
    - Accetta
  - $M_2 eq$ Su ogni input:
    - Esegue $M$ su $w$
    - Se $M$ accetta, accetta
- Restituisce $chevron.l M_1,M_2 chevron.r$
$G$ calcola una funzione $g$ che associa a $chevron.l M,w chevron.r$ la stringa $chevron.l M_1,M_2 chevron.r$, ed è una riduzione da $A_("TM")$ a $E Q_("TM")$ ed è calcolabile
\
$ chevron.l M,w chevron.r in A_("TM") arrow.double.r.l M "accetta" w arrow.double.r.l L(M_1) eq Sigma^* eq L(M_2) $
$ arrow.double.r.l chevron.l M,M_1 chevron.r in E Q_("TM") $
#pagebreak()
== $A_("TM") lt.eq_m overline(E Q_("TM"))$
Data $chevron.l M,w chevron.r$, consideriamo una MdT $M_1$ che riconosce $emptyset$ e una MdT $M_2$ che riconosce $Sigma^*$ se $M$ accetta $w$ \
Per ogni input $x$:
- $M_1$ rifiuta $x$
- $M_2$ simula $M$ su $w$, se $M$ accetta, $M_2$ accetta
Quindi $L(M) eq emptyset$ e
$ L(M_2) eq cases(
  Sigma^* & "se" chevron.l M","w chevron.r in A_("TM"),
  emptyset & "altrimenti"
) $
Di conseguenza $L(M_1) eq.not L(M_2)$ se e solo se $M$ accetta $w$
\
Consideriamo la MdT $F eq$ Su input $chevron.l M,w chevron.r$, dove $M$ MdT e $w$ è una stringa:
- Costruisce le due MdT $M_1 "e" M_2$
  - $M_1 eq$ Su ogni input:
    - Rifiuta
  - $M_2 eq$ Su ogni input:
    - Esegue $M$ su $w$
    - Se $M$ accetta, accetta
- Restituisce $chevron.l M_1,M_2 chevron.r$
$F$ calcola una funzione $f$ che associa a $chevron.l M,w chevron.r$ la stringa $chevron.l M_1,M_2 chevron.r$, ed è una riduzione da $A_("TM")$ a $overline(E Q_("TM"))$ ed è calcolabile
\
$ chevron.l M,w chevron.r in A_("TM") arrow.double.r.l M "accetta" w arrow.double.r.l L(M_2) eq Sigma^* eq.not emptyset eq L(M_1) $
$ arrow.double.r.l chevron.l M,M_1 chevron.r in overline(E Q_("TM")) $

#pagebreak()

== Teorema $A lt.eq_m B$ se e solo se $overline(A) lt.eq_m overline(B)$
$A lt.eq_m B$ se e solo se $overline(A) lt.eq_m overline(B)$

== Corollario 4.23 $overline(A_("TM"))$ non è Turing Riconoscibile
$overline(A_("TM"))$ non è Turing riconoscibile

== Teorema $E Q_("TM")$ non è Nè Turing Riconoscibile e Nè co-Turing Riconoscibile
*Dimostrazione*: \
Supponiamo per assurdo che $E Q_("TM")$ sia Turing riconoscibile \

Siccome $A_("TM") lt.eq_m overline(E Q_("TM"))$ allora $overline(A_("TM")) lt.eq_m E Q_("TM")$ per il Teorema precedente \
Quindi per il Teorema 5.28, se $E Q_("TM")$ fosse Turing riconoscibile allora $overline(A_("TM"))$ sarebbe Turing riconoscibile, ma va in contraddizione con il Corollario 4.23
\
Supponiamo per assurdo che $E Q_("TM")$ sia co-Turing riconoscibile, cioè che $overline(E Q_("TM"))$ sia Turing riconoscibile
\
Siccome $A_("TM") lt.eq_m E Q_("TM")$ allora $overline(A_("TM")) lt.eq_m overline(E Q_("TM"))$
\
Quindi per il Teorema 5.28, se $overline(E Q_("TM"))$ fosse Turing riconoscibile allora \ $overline(A_("TM"))$ sarebbe Turing riconoscibile, ma è in contraddizione con il Corollario 4.23

#pagebreak()
== Teorema di Rice
Sia $L eq {chevron.l M chevron.r | M "una MdT che verifica una proprità" cal(P)}$ un linguaggio che soddisfa
le seguenti tre condizioni:
- L'appartenenza di $chevron.l M chevron.r$ a $L$ dipende solo da $L(M)$, ovvero $forall M_1,M_2 "MdT tali che" L(M_1) eq L(M_2)$
$ chevron.l M_1 chevron.r in L arrow.double.r.l chevron.l M_2 chevron.r in L $
$cal(P)$ non è banale, cioè $L$ non è vuoto e non contiene tutte le codifiche delle MdT
- $exists$ una MdT $M_1$ tale che $chevron.l M_1 chevron.r in L$
- $exists$ una MdT $M_2$ tale che $chevron.l M_2 chevron.r in.not L$
Allora $L$ è indecidibile

#pagebreak()
= Complessità di Tempo
== Definizione Complessità di Tempo
Sia $M eq Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject")$ una MdT deterministica che si arresta su ogni input
\
La complessità di tempo $M$ è la funzione $f: NN arrow NN$ dove $f(n)$ è il massimo numero di passi di computazione eseguiti da $M$ su un input di lunghezza $n,n in NN$
\
\
Se $M$ ha complessità di tempo $f(n)$, diremo che $M$ decide $L(M)$ in tempi (deterministico) $f(n)$
\
\
Quindi se $M$ è una MdT deterministica a nastro singolo, che si arresta su ogni input e $C_1,C_2,...,C_(k+1), k gt.eq 1$, sono configurazioni di $M$, tali che:
- $C_1 eq q_0 w$ è la configurazione inziale di $M$ con input $w$
- $C_i eq C_(i+1)$ per ogni $i in {1,...,k}$
- $C_(k+1)$ è una configurazione di arresto
Il numero di passi eseguiti da $M$ su $w$ è $k$
$ f(n) eq "Max num. di passi in "q_0 w arrow.r^* u q v, q in {q_("accept"),q_("reject")}, "al variare di" w in Sigma^* $

== Astrazioni 
- Input hanno la stessa lunghezza
- Valutazione del caso peggiore
- Uso della notazione asintotica $O$-grande
#pagebreak()
== Analisi Asintotica
Sia $f$ e $g$ due funzioni 
$ f: NN arrow RR^+, g : NN arrow RR^+ $
Diremo che $f(n)$ è $O(g(n))$ oppure $f(n) eq O(g(n))$ se esiste una costante $c gt 0$ e una costante $n_0 gt.eq 0$ tali che per ogni $n gt.eq n_0$
$ f(n) lt.eq c g(n) $
Diremo che $g(n)$è un limite superiore per $f(n)$

== Classi di Complessità
Sia $f:NN arrow RR^+$ una funzione, sia $cal(M)$ l'insieme delle MdT deterministiche che si arrestano su ogni input
\
La classe di complessità di tempo deterministico $"TIME"(f(n))$ è
$ "TIME"(f(n)) eq {L | exists M in cal(M) "che decide" L "in tempo "O(f(n))} $
- $"TIME"(1)$: Insieme dei linguaggi per i quali esiste un decider che li decide in tempo $O(1)$ (Tempo costante)
- $"TIME"(n)$: Insieme dei linguaggi per i quali esiste un decider che li decide in tempo $O(n)$ (Tempo lineare)
- $"TIME"(n^k)$: Insieme dei linguaggi per i quali esiste un decider che li decide in tempo $O(n^k)$ (Tempo polinomiale)
- $"TIME"(2^n)$: Insieme dei linguaggi per i quali esiste un decider che li decide in tempo $O(2^n)$ (Tempo esponenziale)

== Osservazione sulla Complessità di Tempo
- La complessità di tempo dipende dal modello di calcolo
Le varianti delle MdT deterministiche sono polinomialmente equivalenti, cioè possono simularsi tra di loro con un sovraccarico computazionale equivalente, fanno eccezione le MdT non deterministica
- La complessità di tempo dipende dalla codifica utilizza, in particolare cambia la lunghezza del valore della funzione rispetto alla lunghezza dell'input


#align(center)[
  #image("img/Riducibilità/calcoloComplessita.png")
]

#align(center)[
  #image("img/Riducibilità/calcoloComplessita2.png")
]


== Relazione fra Modelli: MdT Multinastro
*Teorema*: \
Sia $t(n)$ una funzione tale che $f(n) gt.eq n$, per ogni MdT deterministica multinastro $M$ con complessità di tempo $t(n)$ esiste una MdT deterministica a nastro singolo $M'$ con complessità di tempo $O(t^2(n))$ equivalente a $M$
\
\
La funzione $f: NN arrow NN$ è la funzione definita da $t^2(n) eq (t(n))$, il teorema afferma che $M'$ utilizza $O([t(n)]^2)$ passi per simulare $t(n)$ passi di $M$
#pagebreak()
== Tempo di Esecuzione MdT non Deterministica
Sia $N eq Q,Sigma,Gamma,delta,q_0,q_("accept"),q_("reject")$ una MdT non deterministica che sia un decisore
\
Il tempo di esecuzione di $N$ è la funzione $f : NN arrow NN$ dove $f(n)$ è il massimo numero di passi eseguiti da $N$ in ognuna delle computazioni su ogni input di lunghezza $n,n in NN$
\
\
Il tempo di esecuzione di una MdT non deterministica su input $w$ viene definito come il tempo usato dalla ramificazione più lunga
\
Quindi la funzione $f: NN arrow NN$ dove
$ f(n) eq "Max altezze degli alberi, ognuno dei quali" $
$ "rappresenta le possibili computazioni su input" w," al variare di" w in Sigma^n $

== Relazione fra Modelli: MdT non Deterministica
*Teorema*:\
Sia $t(n)$ una funzione tale che $t(n) gt.eq n$
\
Per ogni MdT a nastro singolo non deterministica $N$ avente tempo di esecuzione $t(n)$ esiste una MdT a nastro singolo deterministica e di complessità di tempo $2^(O(t(n)))$, equivalente ad $N$

== La Classe P: Tempo Polinomiale
*Definizione*: \
La classe $P$ è l'insieme dei linguaggi $L$ per i quali esiste una MdT deterministica $M$ con un solo nastro che decice $L$ in tempo $O(n^k)$ per qualche $k gt.eq 1$
$ P eq union_(k gt.eq 1) "TIME"(n^k) $
- $P$ corrisponde alla classe di problemi che sono realisticamente risolubili mediante programmi su computer reali
#pagebreak()
== Teorema Classe $P$
Sia $t(n)$ una funzione tale che $t(n) gt.eq n$\
Per ogni MdT multinastro $M$ con complessità di tempo $t(n)$ esiste una MdT a nastro singolo $M'$ con complessità di tempo $O(t^2(n))$, equivalente a $M$
\
Quindi, se $L$ è deciso in tempo polinomiale su una MdT multinastro, allora $L$ è deciso in tempo polinomiale su una MdT a nastro singolo
- $P$ è invariante per tutti i modelli di computazione che sono polinomialmente equivalenti alla MdT deterministica a nastro singolo
- La classe $P$ è invariante rispetto alla scelta di una codifica ragionevole dell'input
\
*Nota*: \
Per mostrare che un algoritmo può essere eseguito in tempo $O(n^k)$ su un input di lunghezza $n$
- Dobbiamo fornire un limite superiore polinomiale al numero dei passi eseguiti dall'algoritmo
- Mostrare che ogni passo può essere eseguito in tempo polinomiale da un qualsiasi ragionevole modello di computazione deterministico
#pagebreak()
=== PATH
$ "PATH" eq {chevron.l G,s,t chevron.r | G "è un grafo orientato in cui c'è un cammino da" s "a" t} $
*Teorema*:  \
$"PATH" in P$
- Una generazione esaustiva dei cammini di $G$ condurrebbe a un algoritmo di complessità esponenziale, quindi con $V$ insieme dei nodi di $G$, ovvero $O(2^(chevron.l G,s,t chevron.r))$
Il seguente algoritmo $M$ decide $"PATH"$ in tempo deterministico polinomiale
$ M eq "Sull'input" <chevron.l G,s,t chevron.r, "dove" G "è un grafo con nodi "s "e" t $
- Marca il nodo $s$
- Ripete questa operazione finchè nessun nuovo vertice viene marcato:
 - Scansiona tutti gli archi di $G$, se trova un arco $(a,b)$ che va da un nodo $a$ marcato ad un nodo $b$ non marcato, manca il nodo $b$
- Se $t$ è marcato, accetta. Altrimenti rifiuta

$M$ decide il $"PATH"$ in tempo deterministico polinomiale
\
Il passo 3 viene eseguito al più m volte, se $m$ il numero dei vertici di $G$, quindi il totale dei passi è al più $1+1+m$
\
Infine i passi 1,3,4 possono essere implementati in tempo polinomiale nella lunghezza sull'input su una MdT deterministica

#pagebreak()
=== RELPRIME
Due numeri interi positivi $x,y$ sono relativamente primi se il loro massimo comun divisore è $1$
$ "RELPRIME" eq {chevron.l x,y chevron.r | x "e" y "sono interi positivi relativamente primi"} $
*Teorema*: \
$"RELPRIME" in P$ \
- Una ricerca esaustiva dei divisori non banale $x$ e $y$ condurrebbe a un algoritmo di complessità esponenziale
Se $chevron.l x chevron.r eq a_k dot dot dot a_0$ è la rappresentazione binaria di $x$ allora $x-2$ è $O(2^k) eq O(2^(|chevron.l x chevron.r|))$
- Per provare che $"RELPRIME" in P$ ci basiamo sull'algoritmo di Euclide
*Teorema Ricorsione del MCD*: \
Per un qualsiasi numero intero $a$ non negativo e qualunque intero $b$ positivo, $M C D(a,b) eq M C D(b,a(mod b))$
\ \
*Algoritmo di Euclide*: \
` 
MCD(a,b)
if  b=0 then MCD = a
  else MCD = MCD(b,a (mod b))
`
- Sono necessarie $O(log b)$ chiamate ricorsive
Quindi consideriamo l'algoritmo $R$: \
$R eq "Sull'input" chevron.l x,y chevron.r," dove" x "e" y "sono numeri naturali in binario:"$
- Simula $M C D$ su $chevron.l x,y chevron.r$
- Se il risulta è $1$ accetta, altrimenti rifiuta
Quindi $R$ decide $"RELPRIME"$ in tempo deterministico polinomiale

#pagebreak()
== Tipi di Problemi
- *Trattabili*: Problemi per i quali esistono algoritmi polinomiali per decidere i linguaggi associati
- *Intrattabili*: Problemi per i quali esistono algoritmi esponenziali per decidere i linguaggi associati

== Classe EXPTIME
$ "EXPTIME" eq union_(K gt.eq 1) "TIME"(2^n^k) $

In particolare 
$ P subset "EXPTIME" $
Esistono linguaggi del tipi $"EXPTIME" backslash P$ come 
$ E Q_("REX" arrow.t) eq {chevron.l Q,R chevron.r | Q "ed" R "sono" E R G "equivalenti"} $
Risulta che $E Q_("REX" arrow.t) in "EXPTIME" backslash P$

== HAMPATH
Un cammino Hamiltoniano in un grafo orientato è un cammino che passa per ogni vertice del grafo una e una sola volta
$ "HAMPATH" eq {chevron.l G,s,t chevron.r | G "è un grafo orientato e" $
$ "ha un cammino Hamiltoniano da "s "a" t $
Anche se non conosciamo un algoritmo polinomiale per determinare se un grafo contiene un cammino Hamiltoniano, se un tale cammino esiste la verifica che si tratta di un cammino Hamiltoniano può essere fatta in tempo polinomiale
\
Quindi esiste un algoritmo $N$, polinomiale in $|chevron.l G,s,t chevron.r|$ che sull'input $chevron.l chevron.l G,s,t chevron.r ,c chevron.r$, dove $c eq (u_1,...,u_(|V|))$, decide il linguaggio
$ {chevron.l chevron.l G,s,t chevron.r ,c chevron.r | G "è un grafo orientato e" $
$ c "è un cammino Hamiltoniano da" s "a" t } $
Basta verificare che i nodi della sequenza siano distinti, che $u_1 eq s, u_(|V|) eq t$ e che per ogni $i, 2 lt.eq i lt.eq n, (u_(i-1),u_i) in E$

*Teorema*: \
$"HAMPATH" in N P$
\
*Dimostrazione*: \
Un algoritmo $N$ che verifica HAMPATH in tempo polinomiale: \
$N eq "Sull'input" chevron.l chevron.l G,s,t chevron.r ,c chevron.r$, dove $G eq (V,E)$ è un grafo orientato \
- Verifica se $c eq (u_1,...,u_(|V|))$ è una sequenza di $|V|$ vertici di $G$, altrimenti rifiuta 
- Verifica se i nodi della sequenza sono distinti, $u_1 eq s, u_(|V|) eq t$ e per ogni $i$ con $2 lt.eq i lt.eq n$ se $(u_(i-1),u_i) in E$, accetta in caso affermativo, altrimenti rifiuta
$exists c: chevron.l chevron.l G,s,t chevron.r ,c chevron.r in L(N) arrow.double.r.l chevron.l G,s,t chevron.r in "HAMPATH"$



== COMPOSITES
$ "COMPOSITES" eq {chevron.l x chevron.r | "esistono interi "p,q, "con" p gt 1, $
$ q gt 1 "tali che "x eq p q } $
Dati $x,p$, verificare che $p$ è un divisore di $x$, con $p gt 1, p eq.not x$, può essere fatto in tempo polinomiale

== Algoritmo di Verifica 
*Definizione*: \
Un algoritmo di verifica (o verificatore) $V$ per un linguaggio $A$ è un algoritmo tale che 
$ A eq {w | exists c "tale che "V "accetta" chevron.l w,c chevron.r} $
La stringa $c$ prende il nome di certificato o prova\
$A$ è il linguaggio verificato da $V$
#align(center)[
  #image("img/Complessità/algVerifica.png")
]

\
\
*Nota*: Algoritmo=Decider

== Complessità degli Algoritmi di Verifica
Misurata in termini della lunghezza $|w|$ di $w$
\
*Definizione*: \
Un algoritmo $V$ è un verificatore per $A$ in tempo polinomiale se
- $A$ è il linguaggio verificato da $V$
$ A eq {w | exists c "tale che "V "accetta" chevron.l w,c chevron.r} $
- $V$ ha complessità di tempo polinomiale $|w|$
\
*Nota*: \
Se $V$ è un algoritmo di verifica e ha complessità polinomiale in $|w|$, allora il certificato ha lunghezza polinomiale nella lunghezza di $w$, ovvero esiste $t$ tale che per ogni $w, |c| eq O(|w|^t)$
\
Questo è imposto dal limite di tempo polinomiale per la computazione di $V$, altrimenti se $c$ non avesse lunghezza polinomiale in $|w|$, non sarebbe esaminabile da $V$
#pagebreak()
== Classe NP 
NP è la classe dei linguaggi verificabili in tempo polinomiale, rappresenta l'annotazione per tempo polinomiale non deterministico
\
*Definizione*: \
Sia $t: NN arrow RR^+$ una funzione \
La classe di complessità in tempo non deterministico $"NTIME"(t(n))$ è 
$ "NTIME"(t(n)) eq { L | exists "una MdT non deterministica M" $
$ "che decide "L "in tempo "O(t(n)) $

== Teorema 7.20 Linguaggio in NP
Un linguaggio $L$ è in NP se e solo se esiste una MdT non deterministica che decide $L$ in tempo polinomiale

== Corollario 7.22
$ N P eq union_(k gt.eq 1) "NTIME"(n^k) $

== CLIQUE
*Definizione*: \
Una clique in un grafo non orientato $G$ è un sottografo di $G$ in cui ogni coppia di vertici è connessa da un arco \
Una k-clique è una clique che contiene k vertici 
$ "CLIQUE" eq {chevron.l G,k chevron.r | G "è un grafo non orientato in cui esiste una k-clique"} $

*Teorema*: \
$"CLIQUE" in N P$
\
*Dimostrazione*: \
Un algoritmo $V$ che verifica CLIQUE in tempo polinomiale: \
$V eq "Sull'input" chevron.l chevron.l G,k chevron.r ,c chevron.r$:
- Verifica se $c$ è un insieme di $k$ nodi di $G$, altrimenti rifiuta 
- Verifica se per ogni coppia di nodi in $c$, esiste un arco in $G$ che li connette, accetta in caso affermativo, altrimenti rifiuta 

$exists c :chevron.l chevron.l G,k chevron.r ,c chevron.r in L(V) arrow.double.r.l chevron.l G,k chevron.r in "CLIQUE"$
#pagebreak()
== SUBSET-SUM
Dato un insieme finito $S$ di numeri interi e un numero intero $t$, esiste un sottoinsieme $S'$ di $S$ tale che la somma dei suoi numeri sia uguale a $t$
\
$ "SUBSET-SUM" eq {chevron.l S,t chevron.r | S eq {x_1,...,x_k} "ed esiste" $
$ S' subset.eq S "tale che" sum_(s in S') s eq t $
*Teorema*: \
$"SUBSET-SUM" in N P$
\
*Dimostrazione*: \
Un algoritmo $V$ che verifica SUBSET-SUM in tempo polinomiale: \
$V eq "Sull'input" chevron.l chevron.l S,t chevron.r ,c chevron.r$: \
- Verifica se $c$ è un insieme di numeri la cui somma è $t$, altrimenti rifiuta 
- Verifica se $S$ contiene tutti i numeri in $c$, accetta in caso affermativo, altrimenti rifiuta
$exists c: chevron.l chevron.l S,t chevron.r ,c chevron.r in L(V) arrow.double.r.l chevron.l S,t chevron.r in "SUBSET-SUM"$
#pagebreak()
== $P subset.eq N P$
*Teorema 1*: \
*Dimostrazione*: \
Se $L in P$, esiste un algoritmo $M$ che decide $L$ in tempo polinomiale \
Consideriamo l'algoritmo di verifica $V$ che sull'input $y$
- Se $ y eq.not chevron.l w,epsilon chevron.r$, $w$ stringa, rifiuta $y$
- Se $ y eq chevron.l w,epsilon chevron.r$, $w$ stringa, simula $M$ su $w$
- Accetta $y eq chevron.l w,epsilon chevron.r$ se e solo se $M$ accetta $w$
$ A eq {w | exists c "tale che" V "accetta" chevron.l w,c chevron.r} $
$ eq {w | V "accetta" chevron.l w,epsilon chevron.r} ("Definizione di" V) $
$ eq {w | M "accetta" w} ("Definizione di" V) $
$ eq L $
Inoltre $V$ verifica $L$ in tempo polinomiale perchè $M$ ha complessità di tempo polinomiale in $|w|$


#align(center)[
  #image("img/Complessità/dimalternativa.png")
]

#pagebreak()
== Una Gerarchia di Classi 
$ P subset.eq N P eq union_(k gt.eq 1) "NTIME"(n^k) subset.eq "EXPTIME" eq union_(k gt.eq 1) "TIME"(2^n^k) $

== Chiusura Classe P Rispetto al Complemento
La classe $P$ è chiusa rispetto al complemento

== coNP 
$ c o N P eq {L | overline(L) in N P} $
*Esempi*:
- $overline("HAMPATH")$
- $overline("CLIQUE")$
- $overline("SUBSET-SUM")$

#align(center)[
  #image("img/Complessità/4scenari.png")
]

#align(center)[
  #image("img/Complessità/4scenari2.png")
]
#pagebreak()
== Funzioni Calcolabili in Tempo Polinomiale
Una funzione $f: Sigma^* arrow.r Sigma^*$ è calcolabile in tempo polinomiale se esiste una macchina di Turing $M eq  (Q,Sigma,Gamma, delta,q_0,q_("accept"),q_("reject"))$ di complessità di tempo polinomiale tale che su ogni input, $M$ si arresta con $f(w)$, e solo con $f(w)$, sul nastro \

== Riduzioni di Tempo Polinomiali 
*Definizione*: \
Siano $A,B$ linguaggi sull'alfabeto Sigma \
Una riduzione di tempo polinomiale $f$ di $A$ e $B$ è
- Una funzione $f: Sigma^* arrow Sigma^*$
- Calcolabile in tempo polinomiale
Tale che 
$ forall w in Sigma^*, w in A arrow.double.r.l f(w) in B $


Un linguaggio $A subset.eq Sigma^*$ è riducibile in tempo polinomiale mendiante una funzione a un linguaggio $B subset.eq Sigma^* space (A lt.eq_p B)$ se esiste una riduzione di tempo polinomiale di $A$ a $B$ \
\

*Nota*: 
- Se un linguaggio $A$ su un alfabeto $Sigma$ associato ad un problema di decisione $PP_D$, le stringhe $w in Sigma^*$ si dividono in tre gruppi
- $w$ è la codifica di una istanza di $PP_D$ per la quale ammette risposta si 
- $w$ è la codifica di una istanza di $PP_D$ per la quale ammette risposta no 
- $w$ non è la codifica di una istanza di $PP_D$
Quindi dato $A$ e $f$ è una riduzione di $A$ a $B$, la MdT $F$ che calcola $f$ utilizza inizialmente un algoritmo polinomiale nella lunghezza dell'input $w$ per decide se è una codifica di un'istanza di $PP_D$
#pagebreak()
== Riducibilità in Tempo Polinomiale
*Teorema*: \
Se $A lt.eq_P B$ e $B in P$, allora $A in P$
\
*Dimostrazione*: \
Per ipotesi $B in P$, quindi esiste un algoritmo $M$ di complessità $O(m^t)$ che decide $B$
\
Inoltre $A lt.eq_P B$, sia $f$ la riduzione di tempo polinomiale di $A$ e $B$ e sia $F$ l'algoritmo di complessità $O(n^k)$
che calcola $f$
\
Consideriamo l'algoritmo $N$ che sull'input $w$:
- Simula $F$ su $w$ e calcola $f(w)$
- Simula $M$ sull'input $f(w)$ per decidere se $f(w) in B$
- $N$ accetta $w$ se $M$ accetta $f(w)$, $N$ rifiuta $w$ se $M$ rifiuta $f(w)$

#align(center)[
  #image("img/Complessità/ridpolinomiale.png")
]
$N$ decide $A$, infatti si ferma su $w$ se si fermano $F$ ed $M$
\
Per ogni $w$, $F$ si ferma con $f(w)$ sul nastro e $M$ si ferma su $f(w)$ essendo un decider 
\
Inoltre $N$ riconosce $A$
$ w in L(N) arrow.double.l.r f(w) in L(M) ("Definizione di "N) $
$ arrow.double.l.r f(w) in B (M "decide "B) $
$ arrow.double.l.r w in A (f "è una riduzione polinomiale di" A "a" B) $
$N$ è un algoritmo polinomiale in $n eq |w|$, infatti $F$ calcola $f(w)$ in $O(n^k)$ passi, quindi in $q(n)$ passi per qualche polinomio $q$
\
In particolare $|f(w)| lt.eq q(n)$ dato che la lunghezza sull'output di $F$ è limitata dalla complessità di tempo di $F$
\
Al secondo passo $M$ viene eseguito sull'input $f(w)$ e si arresta dopo $p(|f(w)|) lt.eq p(q(n))$ passi per qualche polinomio $p$
\
In conclusione $N$ ha complessità polinomiale e quindi $A in P$
#pagebreak()
== Proprietà Transitiva di $lt.eq_P$
Se $A lt.eq_P B$ e $B lt.eq_P C$, allora $A lt.eq_P C$
\
*Dimostrazione*: \
Per ipotesi esiste una riduzione di tempo polinomiale $f: Sigma^* arrow Sigma^*$ di $A$ a $B$ ed esiste una riduzione di tempo polinomiale $g: Sigma^* arrow Sigma^*$ di $B$ in $C$
\
\
Consideriamo la composizione $g circle.tiny f: Sigma^* arrow Sigma^*$ delle funzioni $f$ e $g$, definita da $(g circle.tiny f)(w) eq g(f(w))$
\
Risulta per ogni $w in Sigma^*$:
$ w in A arrow.double.l.r f(w) in B (f "riduzione polinomiale di" A "a" B) $
$ arrow.double.l.r g(f(w)) in C (g "riduzione polinomiale di" B "a" C) $
Inoltre $g circle.tiny f$ è una funzione calcolabile in tempo polinomiale
\
\
Sia $F$ l'algortimo di complessità $O(n^k)$ che calcola la funzione $f$
\
Sia $G$ l'algortimo di complessità $O(m^t)$ che calcola la funzione $g$
\
Consideriamo l'algortimo $G F$ che sull'input $w$:
- Simula $F$ su $w$ e calcola $f(w)$
- Simula $G$ sull'input $f(w)$ e calcola $g(f(w))$
- Fornisce in output l'output di $G$

$G F$ è un algoritmo polinomiale in $n eq |w|$, infatti $F$ calcola $f(w)$ in $O(n^k)$ passi, quindi in $q(n)$ passi per qualche polinomio $q$
\
In particolare $|f(w)| lt.eq q(n)$ dato che la lunghezza sull'output di $F$ è limitata dalla complessità di tempo di $F$
\
Al secondo passo $G$ viene eseguito sull'input $f(w)$ e si arresta dopo $p(|f(w)|) lt.eq p(q(n))$ passi per qualche polinomio $p$
\
In conclusione $G F$ ha complessità polinomiale

#pagebreak()
== Richiami di Logica 

#align(center)[
  #image("img/Complessità/richiami1.png")
]

#align(center)[
  #image("img/Complessità/richiami2.png")
]
Si definisce letterale ogni presenza in forma diretta o negata di una variabile in una espressione e numero di letterali il loro numero 
\
\
Una formula booleana $phi.alt$ è soddisfacibile se esiste un insieme di valori 0 e 1 per le variabili di $phi.alt$ che renda la formula uguale a 1

#align(center)[
  #image("img/Complessità/richiami3.png")
]
#align(center)[
  #image("img/Complessità/richiami4.png")
]
#align(center)[
  #image("img/Complessità/richiami5.png")
]

#pagebreak()
== SAT 
$ "SAT" eq {chevron.l phi.alt chevron.r | phi.alt "è una formula booleana soddisfacibile"} $
*Teorema*: \
$"SAT" in N P$
\
*Dimostrazione*: \
Un certificato per $chevron.l phi.alt chevron.r$ sarà un assegnamento $c$ di valori alle variabili di $phi.alt$
\
Un algoritmo $V$ che verifica SAT in tempo polinomiale nella lunghezza di $chevron.l phi.alt chevron.r$:
\
\
$V eq "Sull'input" y:$
- Verifica se $ y eq chevron.l chevron.l phi.alt chevron.r, c chevron.r$, altrimenti rifiuta 
- Sostituisce ogni variabile della formula con il suo corrispondente valore e quindi valuta l'espressione 
- Accetta se $phi.alt$ assume valore 1, altrimenti rifiuta 
$ exists c : chevron.l chevron.l phi.alt chevron.r, c chevron.r in L(V) arrow.double.r.l chevron.l phi.alt chevron.r in "SAT" $

== 3SAT è Riducibile in Tempo Polinomiale a CLIQUE

$ "3SAT" eq {chevron.l phi.alt chevron.r | phi.alt "è una formula 3CNF soddisfacibile"} $
3CNF è un AND di clausole e tutte le clausole hanno tre letterali

#align(center)[
  #image("img/Complessità/3sat.png")
]
*Teorema*: \
3SAT è riducibile in tempo polinomiale a CLIQUE 
\
*Dimostrazione*: \
Sia $phi.alt$ una formula 3CNF a $k$ clausole 
$ (a_1 or b_1 or c_1) and (a_2 or b_2 or c_2)and ... and (a_k or b_k or c_k) $
Consideriamo la funzione $f$ che associa a $chevron.l phi.alt chevron.r$ la stringa $chevron.l G,k chevron.r$, dove $G$ è il grafo non orientato definito come segue 
- $V$ ha $3 times k$ vertici, i vertici sono divisi in $k$ gruppi di tre nodi $t_1,...,t_k:t_j$ corrisponde alla clausola $(a_j or b_j or c_j)$ e ogni vertice in $t_j$ corrisponde a un letterale in $(a_j or b_j or c_j)$
\
Quindi $V eq {a_1,b_1,c_1,...,a_k,b_k,c_k}$
- Non ci sono archi fra vertici in una tupla $t_j$
- Non ci sono archi tra un vertice associato a un letterale $x$ e i vertici associati al letterale $overline(x)$
- Ogni altra coppia di vertici è connessa da un arco 
La funzione $f$ è calcolabile in tempo polinomiale
\
\
Per provare che $f$ è una riduzione polinomiale di 3SAT a CLIQUE occorre dimostrare che $phi.alt$ è soddisfacibile se e solo se $G$ ha una $k$-clique

\
\
Supponiamo che $phi.alt$ abbia una assegnamento di soddisfacibilità, quindi esiste almeno un letterale vero in ogni clausola
- Scegliamo un letterale vero in ogni clausola e consideriamo il sottografo $G'$ indotto dai nodi corrispondenti ai letterali scelti, quindi $G'$ è una $k$-clique, dato che due qualsiasidei vertici non appartengono alla stessa clausola e non corrispondono a una coppia $x,overline(x)$ dato che abbiamo preso letterali veri nell'assegnamento 

\
\
Viceversa supponiamo che $G$ abbia una $k$-clique $G'$
\
Poichè due nodi in una tripla non sono connessi da un arco, ognuna delle $k$ triple contiene esattamente uno dei nodi della $k$-clique 
\
Consideriamo l'assegnamento dei valori alle variabili di $phi.alt$ che rende veri i letterali corrispondenti ai nodi di $G'$
\
Ogni tripla contiene un nodo di $G'$ e quindi ogni clausola contiene un letterale vero, quindi questo è un assegnamento di soddisfacibilità \ $phi.alt in "3SAT"$

== Definizione Linguaggio NP-Completo 
*Definizione*: \
Un linguaggio $B$ è NP-Completo se soddisfa le seguenti due condizioni:
- $B$ in NP 
- Ogni $A$ in NP è riducibile in tempo polinomiale a $B$

== Teorema NP-Completo 
*Teorema*: \
SE $B$ è NP-Completo e $B$ è in P, allora P $eq$ NP \
*Dimostrazione*: \
Siccome $B$ è in NP-Completo, per ogni $A in$ NP, risulta $A lt.eq_P B$
\
Ma abbiamo provato che se $A lt.eq_P B$ e $B in P$, allora $A in P$
\
Quindi $N P subset.eq P$ e siccome $P subset.eq N P$ risulta $P eq N P$
#pagebreak()
== Riducibilità Polinomiale e NP-Completezza 
Se $B$ è in NP-Completo e $B lt.eq_P C$, con $C in N P$, allora $C$ è NP-Completo
\
*Dimostrazione*: \
Per ipotesi 
- $C in N P$
- Per ogni $A in N P, A lt.eq_P B$
- $B lt.eq_P C$
Allora utilizzando la proprietà transitiva di $lt.eq_P$
- $C in N P$
- Per ogni $A in N P, A lt.eq C$
Quindi $C$ è in NP-Completo

== Strategia per Mostrare che $B$ è NP-Completo
- Mostrare che $B in N P$
- Scegliere un linguaggio $A$ che sia NP-Completo
- Definire una riduzione di tempo polinomiale di $A$ in $B$

#pagebreak()

== Teorema di Cook-Levin
SAT è NP-Completo \
*Conseguenza*:$S A T in P$ se e solo se $P eq N P$
\
La prova del teorema consiste nel mostrare che ogni $A in N P$ è riducibile in tempo polinomiale a SAT, la riduzione di tempo polinomiale si ottiene definendo per ogni input $w$ una formula booleana $phi.alt$ che simula la MdT non deterministica che decide $A$ sull'input $w$
$ "SAT"_("CNF") eq {chevron.l phi.alt chevron.r | phi.alt "è una formula booleana soddisfacibile in CNF"} $
$ "SAT"_("CNF") in N P $
$ "SAT" lt.eq_P "SAT"_("CNF") $

== Teorema $"SAT"_("CNF")$ è NP-Completo
$"SAT"_("CNF")$ è NP-Completo

== Teorema $"3SAT"$ è NP-Completo
$"3SAT"$ è NP-Completo
\
*Dimostrazione*: \
3SAT è in NP 
\
Per provare che 3SAT è NP-Completo basta dimostrare che \ $"SAT"_("CNF") lt.eq_P 3"SAT"$
\
La prova consiste nel costruire una formula booleana $psi$ in 3CNF tale che $phi.alt$ è soddisfacibile se e solo se $psi$ è soddisfacibile
\
Inoltre $psi$ può essere costruita in tempo polinomiale a partire da $phi.alt$
#pagebreak()
== CLIQUE è NP-Completo
*Teorema*: \
CLIQUE è NP-Completo
\
*Dimostrazione*: \
Sappiamo che CLIQUE $in N P$
\
Inoltre 3SAT è NP-Completo e 3SAT $lt.eq_P$ CLIQUE
\
Quindi CLIQUE è NP-Completo


== VERTEX-COVER

Un vortex cover $V'$ di $G$, un grafo non orientato, è un sottoinsieme di $V$ tale che per ogni $(u,v) in E$ risulta ${u,v} inter V' eq.not emptyset$, quindi $V'$ copre ogni arco $(u,v)$ in $G$


#align(center)[
  #image("img/Complessità/vertex.png")
]
$ "VERTEX-COVER" eq {chevron.l G,k chevron.r | G "è un grafo non orientato che ha " $
$ "un vertex cover di cardinalità "k $


*Teorema*: \
VERTEX-COVER $in N P$
\
*Dimostrazione*: \
Un algoritmo $V$ che verifica VERTEX-COVER in tempo polinomiale \
$V eq "Sull'input "chevron.l chevron.l G,k chevron.r ,c chevron.r:$
- Verifica se c'è un insieme $V'$ di $k$ nodi di $G$, altrimenti rifiuta
- Verifica se $V'$ copre ogni arco in $G$, accetta in caso affermativo, altrimenti rifiuta 
$ exists c: chevron.l chevron.l G,k chevron.r ,c chevron.r in L(V) arrow.double.r.l "VERTEX-COVER" $
\
*Teorema*: \
VERTEX-COVER è NP-Completo
\
*Dimostrazione*: \
Abbiamo dimostrato che VERTEX-COVER è NP-Completo, ora dobbiamo dimostrare che 
$ "3SAT" lt.eq_P "VERTEX-COVER" $
#align(center)[
  #image("img/Complessità/vortexnpcompleto.png")
]




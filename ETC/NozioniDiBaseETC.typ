#set page(paper: "a5")
#set heading(numbering: "1.1")
#set text(lang: "ita")
#set page(numbering: "1")

#align(center)[
  #block(text(weight: "bold", 2em)[Nozioni di base ETC])
  #v(1em)
]

#outline(
  title: [Indice],
  depth: 2,
)

#pagebreak()

= Insiemi
Gli insiemi sono collezioni non ordinata di oggetti o elementi distinti
- Ordine e ridondanza non contano
- *Insieme universale U* è l'insieme di tutti gli elementi pertinenti al contesto
== Metodi di rappresentazione
- Insieme finito può essere descritto dalla lista dei suoi elementi separati da virgola tra {}
- Insieme infinito può essere descritto mediante la notazione "..."
 - N = {0, 1, 2, . . . , n, . . .}
- Altro modo per definire un insieme è di specificare la proprietà caratteristica dei suoi elementi
  - A = {w | w ha la proprietà P}

=== Esempio di rappresentazione
  - L’ insieme dei numeri interi non negativi pari è
    -  {0, 2, 4, . . . , 2n, . . .} = {2n | n ∈ N, n ≥ 0}
  - L’ insieme dei numeri interi positivi pari è
    - {2, 4, . . . , 2n, . . .} = {2n | n ∈ N, n ≥ 1}
  - L’ insieme dei numeri interi non negativi dispari è
    - {1, 3, 5, 7, . . . , 2n + 1, . . .} = {2n + 1 | n ∈ N, n ≥ 0}

#pagebreak()

== Definizione Ricorsiva (o Induttiva)
Una definizione ricorsiva di un insieme è composta da:
- Passo base: Definisce uno o più elementi elementari dell'insieme
- Passo ricorsivo: Definisce regole per formare nuovi elementi dell'insieme a partire da quelli già definiti

=== Esempio Definizione Ricorsiva
  Sia A l’insieme definito ricorsivamente nel modo
  seguente
  - Passo base: i1 = 1 ∈ A.
  - Passo ricorsivo: Se ik ∈ A allora ik+1 = ik + 2 ∈ A.

== Cardinalità
La cardinalità |S| di un insieme finito S è il numero di elementi in S
- Insieme vuoto ∅ ha cardinalità 0

=== Lemma
  Se S e T sono finiti allora $|S ∪ T| = |S| + |T| − |S ∩ T|$
    - Se S e T sono disgiunti allora $|S ∪ T| = |S| + |T|$

== Sottoinsieme
Siano S e T insiemi, diciamo che S ⊆ T se w ∈ S implica w ∈ T
- Ogni elemento di S è anche un elemento di T

=== Esempio Sottoinsieme
  - S = {ab, ba} e T = {ab, ba, aaa} allora S ⊆ T ma $T subset.not.eq S$
  - S = {ba, ab} e T = {aa, ba} allora $S subset.not.eq T$ e $T subset.not.eq S$

== Insieme Uguali
Due insiemi T e S sono uguali se S ⊆ T e T ⊆ S

=== Esempio Insiemi Uguali
  - Siano S = {ab, ba} e T = {ba, ab}, allora S ⊆ T e T ⊆ S; quindi S = T

#pagebreak()

== Unione
Dati due insiemi S e T, la loro unione è l'insieme
- S ∪ T = { w | w ∈ S oppure w ∈ T}

=== Esempio Unione
  - S = {a, ba} e T = ∅, allora S ∪ T = S
  - S = {a, ba} e T = {ϵ} allora S ∪ T = {ϵ, a, ba}

== Intersezione
Dati due insiemi S e T, la loro intersezione è l'insieme
- S ∩ T = {w | w ∈ S e w ∈ T}

Due insiemi si dicono *disgiunti* se S ∩ T = ∅

== Differenza
Dati due insiemi S e T, la loro differenza è 
- S - T = { w | w ∈ S e $w in.not T$}

=== Esempio Differenza
  - Sia S = {a, b, bb, bbb} e T = {a, bb, bab} allora S − T = {b, bbb}.
  - Sia S = {ab, ba} e T = {ab, ba} allora S − T = ∅

== Complemento
Dato un insieme universale U, il completo di un insieme S ⊆ U è
- #overline[S] = {w | w ∈ U, $w in.not S$} = U − S
- #overline[S] è l'insieme di tutti gli elementi di U che non sono in S

== Sequenze
Una sequenza di oggetti è una lista di oggetti in un qualche ordine
- Denotata scrivendo la lista fra ()
- Ordine e ridondanza sono importanti

Una *k-upla* è una sequenza di k elementi

#pagebreak()

== Prodotto Cartesiano
Dati due insiemi A e B, il prodotto cartesiano A x B è l'insieme di coppie
- A x B = {(x, y) | $x in A$, $y in B$}
- A x B $eq.not$ B x A
- ∅ x B = ∅
- Se A e B sono insiemi finiti, |A x B| = |A||B|

=== Esempio Prodotto Cartesiano
  - Siano A = {a, ba, bb} e B = {ba}, allora
  - A x B = {(a, ba),(ba, ba),(bb, ba)}
  - B x A = {(ba, a),(ba, ba),(ba, bb)

=== Prodotto Cartesiano di due o più insiemi
  - A1 x . . . x Ak = {(x1, . . . , xk ) | xi ∈ Ai, 1 ≤ i ≤ k}


== Funzioni
Dati due insiemi non vuoti X e Y, una funzione f : X -> Y è una relazione che associa ad ogni elemento di x in X uno e uno solo elemento y = f(x) in Y
- X Dominio
- Y Codominio
- Occorre definire anche la relazione che associa ogni elemento del dominio a un elemento del codominio
- Un *predicato* o *proprietà* è una funzione il cui range è ${t r u e, f a l s e}$
- Una *proprietà* il cui dominio è un insieme di k-tuple è detto *relazione*, di due tuple è detta *relazione binaria*
  - Si dice *relazione di equivalenza* se è riflessiva (se per ogni x, xRx), transitiva (se per ogni x e y e z, xRy e yRz implica xRz) e simmetrica (se per ogni x e y, xRy implica yRx)

#pagebreak()

=== Classificazioni Funzioni
  - Una funzione $f: X -> Y$ è *iniettiva* se 
  $ forall x, x' in X, x != x' => f(x) != f(x') $
  - Una funzione $f: X -> Y$ è *suriettiva* se 
  $ forall y in Y, exists x in X : y = f(x) $
  - Una funzione $f: X -> Y$ è *biettiva* di X su Y se f è iniettiva e suriettiva

== Insieme Potenza
Per ogni insieme S, l'insieme potenza (o insieme delle parti) $P(S)$ è l'insieme di tutti i possibili sottoinsiemi di S
$ P(S) = {A | A subset.eq S} $

=== Lemma
 - Se S è un insieme finito allora $ |P(S)| = 2^(|S|) $

#pagebreak()

= Logica Booleana
Un'espressione booleana $Phi$ sulle variabili $x_1,...., x_n$ è soddisfatta da un assegnamento che rende vera $Phi$
- Vero = 1
- Falso = 0

== Negazione o Not
Rappresenta il valore opposto e si usa il simbolo $not$

== Congiunzione o And
Vera se entrambi i valori sono veri e si usa il simbolo $and$

== Disgiunzione o Or
Vera se almeno uno dei due valori è vero e si usa il simbolo $or$

== Or Esclusivo
Vero se esattamente uno dei due operandi è 1 e usa il simbolo $xor$

== Uguaglianza
Vera se entrambi gli operandi hanno lo stesso valore e si usa il simbolo $arrow.l.r$

== Implicazione
Falso se il suo primo operando ha valore vero e il secondo falso, vero in tutti gli altri casi $arrow.r$
- $0 arrow.r 0 eq 1$
- $0 arrow.r 1 eq 1$
- $1 arrow.r 0 eq 0$
- $1 arrow.r 1 eq 1$

== Relazioni fra Operazioni
- $P or Q eq not(not P and not Q)$
- $P arrow.r Q eq not P or Q$
- $P arrow.r.l Q eq (P arrow.r Q) and (Q arrow.r P)$
- $P xor Q eq not(P arrow.r.l Q)$

== Legge Distributiva
- $ P and (Q or R) eq (P and Q) or (P and R)$
- $ P or (Q and R) eq (P or Q) and (P or R)$


= Dimostrazioni
Ragionamento convincente per dire che un enunciato è vero
- Se un enunciato è falso si usa il controesempio
- Dimostrazione per *assurdo*: Assumiamo che il teorema sia falso per poi dimostrare che questa ipotesi porta ad una contraddizione o assurdo
- Dimostrazione *costruttiva*: Mostrare come costruire l'oggetto
- Dimostrazione per *induzione*: Permette di dimostrare che tutti gli elementi di un insieme infinito godono di una data proprietà
  - Base induttiva: Dimostra che $P(1)$ vero
  - Passo induttivo: Se $P(1)$ vero (*ipotesi induttiva*), allora per ogni $i gt.eq 1$ anche $P(i+1)$ vero
- *Lemma*: Enunciato interessante che serve alla dimostrazione di un enunciato più interessante

= Grafi
Un grafo non orientato è un insieme di punti e di linee che connettono alcuni dei punti
- Punti chiamati *nodi*
- Linee chiamate *archi*
- Numero di archi rappresenta il grado del grafo

== Sottografo
Diciamo che il grafo $G$ è un sottografo di $H$ se i nodi di $G$ sono un sottoinsieme dei nodi di $H$ e gli archi di $G$ sono anche archi di $H$ sui nodi corrispondenti

#pagebreak()

== Cammino
Un cammino in un grafo è una sequenza di nodi collegati da archi
- *Cammino semplice*: Un cammino che non contiene nodi ripetuti
- *Grafo connesso*: Se esiste un cammino per ogni coppia di nodi
- *Ciclo*: Un cammino che inizia e termina nello stesso nodo
- *Ciclo semplice*: Contiene almeno tre nodi e ripete solo il primo e ultimo nodo

== Albero
Un grafo connesso senza cicli semplici
- In un albero con $n$ nodi ci sono sempre esattamente $n-1$ archi
- Presenta una *radice* e i nodi di grado 1 ad eccezione della radice sono detti *foglie*

== Grafo Orientato o Diretto
Presenta delle frecce che indicano la direzione
- Il numero di frecce che escono da un nodo è il *grado uscente*, mentre il numero di frecce che entrano è detto *grado entrante*
- Archi rappresentati da una coppia ordinata, dove l'ordine indica la direzione
- Un grafo orientato $G$ è $(V,E)$, con $V$ insieme dei nodi ed $E$ è l'insieme degli archi
- Un cammino in cui tutte le frecce puntano nella stessa direzione è detto *cammino orientato* ed è *fortemente connesso*

= Alfabeto
Un insieme finito di elementi. \
Sia $Sigma = {a_1,...,a_k} $ un alfabeto con k simboli, la cardinalità di $|Sigma|$ è k

== Stringa
Su un alfabeto è una sequenza di simboli dell'alfabeto
- La stringa vuota $epsilon$ non contiene nessun simbolo
- Lunghezza della stringa s è denotata dal numero di simboli |s|

=== Definizione Ricorsiva di Stringa
- Passo base: La stringa vuota $epsilon$ è una stringa
- Passo ricorsivo: Se $w$ è una stringa e $x in Sigma$ è un simbolo dell'alfabeto, allora $w x$ è una stringa


== $Sigma^*$
Dato un alfabeto $Sigma$, denotiamo con $Sigma^*$ l'insieme di tutte le possibili stringhe su $Sigma$
- $Sigma$ e $Sigma^*$ sono insiemi diversi

=== Definizione Ricorsiva di $Sigma^*$
  - Passo base: $epsilon in Sigma^*$
  - Passo ricorsivo: Se $w in Sigma^*$ e $x in Sigma$, allora $w x in Sigma^*$

=== Definizione Ricorsiva di Lunghezza di una Stringa
  - Passo base: $|epsilon|=0$
  - Passo ricorsivo: Se $w$ è una stringa e $x in Sigma$, allora $|w x|=|w|+1$

== Stringhe Eguali
Due stringhe $ x = a_1 a_2...a_h $e $ y = b_1 b_2...b_k $con $a_i$ e $b_j in Sigma$,
$1 lt.eq i lt.eq h$, $1 lt.eq j lt.eq k$ \
si dicono eguali se $h=k $ e $a_i=b_i$; per
$i=1,...,h$
- Caratteri letti da destra e sinistra sono uguali

#pagebreak()

== Concatenazione di Stringhe
Date le stringhe $x = a_1 a_2...a_h$, $y=b_1 b_2...b_k$, con $a_i,b_j in Sigma$, 
$1 lt.eq i lt.eq h$, $1 lt.eq j lt.eq k$, la concatenazione è definita come
$ x dot y = a_1 a_2 ...a_h b_1 b_2...b_k $
Inoltre
$ x epsilon = epsilon x = x $
- Non è commutativa, Siano x e y stringhe $x y eq.not y x $
- La concatenazione è associativa, Siano x,y,z stringhe $(x y )z eq x(y z)$
- Lunghezza di $|x y| eq |x| + |y|$

=== Definizione Ricorsiva di Concatenazione
- Passo base: Se $w in Sigma^*$ allora $ w epsilon eq w in Sigma^*$ 
- Passo ricorsivo: Se $w_1 in Sigma^*, w_2 in Sigma^*, w_2 eq.not epsilon$, $exists w_2 in Sigma^*, x in Sigma$ tali che $w_2 eq w_2^' x $ allora $w_1 dot w_2 = w_1 dot (w_2^' x) eq (w_1 dot w_2^') x in Sigma^*$

== Potenza di una Stringa
Sia $m gt.eq 0$ un intero non negativo
- Potenza con esponente $m=0$ di una stringa è la stringa vuota $epsilon$
- Per $m gt 0$, la potenza di una stringa $w$ è la concatenazione di $w$ con se stessa $m-1$ volte

=== Definizione Ricorsiva di Potenza
  - Passo base: $w^0 eq epsilon$
  - Passo ricorsivo: $w^m=w^(m-1) w$, per $m gt 0$

== Sottostringa
$w$ è una sottostringa di s se esistono stringhe $x$ e $y$ tali che $s eq x w y$

=== Esempio Sottostringa
  - 567 è sottostringa di 34567
  - 42 non è sottostringa di 472

== Inversa di una Stringa
L'inversa $w^R$ di una stringa $w$ è la stringa ottenuta scrivendo i caratteri da destra verso sinistra
$ epsilon^R eq epsilon $ e se $ w eq a_1 a_2...a_n $ con $ a_j$ simboli
$ w^R = a_n a_(n-1)...a_1 $

=== Definizione Ricorsiva dell'Inversa di una Stringa
  - Passo base: $epsilon^R eq epsilon$
  - Passo ricorsivo: Per ogni $x in Sigma^*$ e $sigma in Sigma$, $(x sigma)^R=sigma x^R$
  
== Precedenze
- $(a b)^2 eq a b a b eq.not a b b eq a b^2$
- $(a b)^R eq b a eq.not a b^R eq a b$

== Linguaggi
Un linguaggio è un insieme di stringhe su un alfabeto $L subset.eq Sigma^*$
- $#overline[L] eq Sigma^* - L eq {w in Sigma^* | w in.not L}$
- Non sono sempre finiti
- Cardinalità è il numero delle sue stringhe $|L|=|{a b a , a a b}|=2$
- $|∅| eq 0$ 
- $epsilon in.not ∅$
- $∅ eq.not {epsilon}$

=== Esempio Linguaggi 1
 - Sia $Sigma = {a,b}$
 - $L_1 = {a a, a a a}$

#pagebreak()
=== Esempio Linguaggi 2
 - Alfabeto {a, b}
 - Linguaggio $L = {w ∈ {a, b}^*| $la prima lettera di w è b$}$
 - L: insieme delle stringhe su {a, b} che non iniziano con b.
 - NON insieme stringhe che iniziano con a (es. stringa
  vuota ϵ ∈ L)


== Prodotto di Linguaggi
Dati due linguaggi $S$ e $T$ sull'alfabeto $Sigma$, il prodotto è l'insieme di tutte le stringhe che sono concatenazione di una stringa $S$ e una stringa $T$
$ S T eq S dot T eq { u v in Sigma^* | u in S, v in T} $
- Diversa dal prodotto cartesiano in cui consideriamo le coppie
  - $S × T = {(a, ϵ),(a, b a),(b a, ϵ),(b a, b a),(b b, ϵ)}, S T eq.not S × T$
- Nel prodotto di linguaggi il risultato è un insieme di stringhe (concatenate), mentre nel prodotto cartesiano è un insieme di tuple

=== Esempio Prodotto di Linguaggi
  - Se $S = {a, a a}$ e $T = {ϵ, a, b a},$ allora
  - $S T = {a, a a, a b a, a a a, a a b a}$, $T S = {a, a a, a a a, b a a, b a a a}$


== Potenza di un Linguaggio
Sia $L$ un linguaggio sull'alfabeto $Sigma$
$ L^0 eq {epsilon} $
$ L^k eq  L^(k-1) L, k gt.eq 1$

== Casi Particolari Operazioni sui Linguaggi
- $emptyset^0 eq {epsilon} $
- $L dot emptyset = emptyset dot L eq emptyset $
- $L dot {epsilon} eq {epsilon} dot L eq L$

#pagebreak()

== Chiusura di Kleene
La chiusura di Kleene di un linguaggio L è
$ L^* eq union.big_(n gt.eq 0) (L^n) $
- $L^*$ è il linguaggio ottenuto concatenando un numero qualsiasi di stringhe L
- $L^* eq {w_1 w_2...w_k | k gt.eq 0, w_i in L, 1 lt.eq i lt.eq k}$
- Con $k=0$, $w_1 w_2...w_k eq epsilon$

=== Esempio Chiusura di Kleene
- Se $L = {a, b}$, allora $L^∗ = {ϵ, a, b, a a, a b, b a, b b, a a a, a a b, a b a, ...}$
- Se $L = emptyset$, allora $L^∗ = {epsilon}$
- Se $L = {epsilon}$, allora $L^∗ = {epsilon}$
- $(L^*)^* eq L^*$

== Chiusura Positiva
La chiusura positiva si distingue dalla chiusura di Kleene perchè nell'unione non compare la potenza $L^0$
$ L^+ eq union.big_(n gt 0)L^n eq {w_1 w_2...w_k | k gt 0, w_i in L, 1 lt.eq i lt.eq k} $

=== Esempio Chiusura Positiva
- Se $L eq {a}$, allora
- $L^+ eq {a, a a, a a a...} eq {a^n | n gt 0, n in NN}$
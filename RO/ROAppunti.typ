#set page(paper: "a5")
#set heading(numbering: "1.1")
#set text(lang: "ita")
#set page(numbering: "1")

#import "@preview/cetz:0.4.2"


#align(center)[
  #block(text(weight: "bold", 2em)[Ricerca Operativa])
  #v(1em)
]

#outline(
  title: [Indice],
  depth: 2,
)


#pagebreak()

= Richiami di Algebra vettoriale
- Operazioni sui vettori
- Combinazione lineare, combinazione conica, combinazione convessa
- Indipendenza lineare tra vettori
- Base di uno spazio

== Vettori
Definiamo un vettore ad $n$ componenti reali una n-upla ordinata di numeri reali
- *Vettore colonna*: Componenti disposte lungo una linea verticale
$ #underline[x] eq vec(3,-1,7, delim: "[") $
- *Vettore riga*: Componenti disposte lungo una linea orizzontale
$ #underline[x]^T eq mat(3,-1,7, delim: "[") $
- *Trasposizione*: Si chiama trasposizione l'operazione unaria che trasforma un vettore colonna in un vettore riga e viceversa
  - Di solito il vettore di default è il vettore colonna e il vettore riga è la sua trasposizione
- *Vettore nullo*: Vettore con tutte le componenti a 0 (nulle)
$ underline(0)^T eq mat(0,0...0, delim: "[") $
- *i-esimo Vettore Fondamentale*: Vettore con tutte le componenti nulle tranne la *i-esima* che è uguale a 1
$ #underline[e]_i^T eq mat(0,0...1...0, delim: "[") $
- *Scalare*: Un qualsiasi numero reale

#pagebreak()
=== Rappresentazione dei Vettori
Dato un sistema di assi cartesiani, ogni vettore può essere rappresentato da un segmento che connette l'origine degli assi al punto indicato dallo stesso


#cetz.canvas({
  import cetz.draw: *
  line((-1, 0), (4, 0), mark: (end: ">"), name: "asse-x1")
  line((0, -1), (0, 4), mark: (end: ">"), name: "asse-x2")
 
  content((4.3, 0), $x_1$)
  content((0, 4.3), $x_2$)

  line((0, 0), (2, 3), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))

  content((2.5, 3.5), $underline(x) = vec(2, 3, delim: "[")$ )

  line((2, 0), (2, 3), stroke: (dash: "dashed", paint: gray))
  line((0, 3), (2, 3), stroke: (dash: "dashed", paint: gray))

  content((-0.3, -0.3), $O$)
})

=== Esempio di Vettori Fondamentali

#cetz.canvas({
  import cetz.draw: *
  line((-1, 0), (4, 0), mark: (end: ">"), name: "asse-x1")
  line((0, -1), (0, 4), mark: (end: ">"), name: "asse-x2")
 
  content((4.3, 0), $x_1$)
  content((0, 4.3), $x_2$)

  line((0, 0), (0, 1), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))
  line((0, 0), (1, 0), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))

  content((-0.8, 0.8), $underline(e)_2 = vec(0, 1, delim: "[")$ )

  content((1, - 0.6), $underline(e)_1 = vec(1, 0, delim: "[")$ )

  content((-0.35, -0.6), $vec(0, 0, delim: "[")$)
})

=== Caratteristiche di un Vettore
- *Modulo*: Lunghezza del vettore
- *Direzione*: Data dalla retta sul quale giace il vettore
- *Verso*: Direzione del vettore

#pagebreak()

=== Moltiplicazione di un Vettore per uno Scalare
Restituisce un vettore, cambiando solo il modulo del vettore
$ #underline[x] eq mat(-1;2; delim: "[") $
$ 2#underline[x] eq 2 mat(-1;2; delim: "[")  eq mat(-2;4; delim: "[") $

#cetz.canvas({
  import cetz.draw: *
  line((-4, 0), (4, 0), mark: (end: ">"), name: "asse-x1")
  line((0, -1), (0, 4), mark: (end: ">"), name: "asse-x2")
 
  content((4.3, 0), $x_1$)
  content((0, 4.3), $x_2$)

  line((0, 0), (-1, 2), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))
  line((0, 0), (-2, 4), stroke: (dash: "dashed", paint: blue), mark: (end: ">", stroke: blue + 1pt, fill: blue))

  content((-1.5,1), $underline(x) = vec(-1, 2, delim: "[")$ )
  content((-2.7,3), $2underline(x) = vec(-2, 4, delim: "[")$ )


  content((-0.3, -0.3), $O$)
})

#pagebreak()

=== Addizione di Vettori
Somma delle componenti
- Sfrutta la regola del parallelogramma, che ne determina verso e direzione

$ #underline[x] eq mat(1;4; delim: "[") space #underline[w] eq mat(2;2; delim: "[") $
$ #underline[x] + #underline[w] eq vec(3,6,delim: "[") $

#cetz.canvas({
  import cetz.draw: *
  line((-4, 0), (4, 0), mark: (end: ">"), name: "asse-x1")
  line((0, -1), (0, 4), mark: (end: ">"), name: "asse-x2")
 
  content((4.3, 0), $x_1$)
  content((0, 4.3), $x_2$)

  line((0, 0), (0.5, 2), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))
  line((0, 0), (1,1), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))
  line((0, 0), (1.5, 3), stroke: (dash: "dashed", paint: blue), mark: (end: ">", stroke: blue + 1pt, fill: blue))

  line((0.5, 2), (1.5, 3), stroke: (dash: "dashed", paint: gray))
  line((1, 1), (1.5, 3), stroke: (dash: "dashed", paint: gray))

  content((-0.6,1.6), $underline(x) = vec(1, 4, delim: "[")$ )
  content((1.6,0.5), $underline(w) = vec(2, 2, delim: "[")$ )


  content((-0.3, -0.3), $O$)
})

#pagebreak()

=== Prodotto Interno (Prodotto Scalare) tra Vettori
Per convenzione il primo vettore si rappresenta come vettore riga e il secondo come vettore colonna
- Restituisce uno scalare
$ #underline[x]^T#underline[w] eq x_1 w_1 + ... + x_n w_n $

Consideriamo per esempio: 
$ #underline[x]^T eq vec(0,2,delim: "[") $ #align(center)[e] $ #underline[w] eq vec(3,4,delim: "[") $
Otteniamo come risultato:
$ #underline[x]^T#underline[w] eq 8 $

#pagebreak()

== Combinazione Lineare
Un vettore #underline[y] è combinazione lineare dei vettori $#underline[v]_1$, $#underline[v]_2$, ... ,$#underline[v]_n$, se esistono dei coefficienti lineari $lambda_1 ,lambda_2, ... ,lambda_n $ tali che:
$ #underline[y] eq lambda_1 #underline[v]_1 + lambda_2 #underline[v]_2 +...+lambda_n #underline[v]_n $

- $lambda gt 0$: Allungo il vettore
- $lambda lt 0$: Ribalto il vettore
- $0 lt lambda lt 1$: Accorcio il vettore
- $lambda eq 0$: Non uso il vettore

- Se $#underline[v]_1 eq k#underline[v]_2$, allora non esistono due coefficienti $lambda_1$ e $lambda_2$ per i quali vale $#underline[y] eq lambda_1 #underline[v]_1 + lambda_2 #underline[v]_2$

=== Esempio Combinazione Lineare fra Vettori
$ lambda_1 lt 0 , lambda_2 gt 1 $
$ #underline[y] eq lambda_1 #underline[v]_1 + lambda_2 #underline[v]_2 $

#cetz.canvas({
  import cetz.draw: *
  line((-4, 0), (4, 0), mark: (end: ">"), name: "asse-x1")
  line((0, -1), (0, 4), mark: (end: ">"), name: "asse-x2")
 
  content((4.3, 0), $x_1$)
  content((0, 4.3), $x_2$)

  line((0, 0), (0.5, 3), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))
  line((0, 0), (1.2,0.8), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))
  line((0, 0), (1.7,1.14), stroke: red + 1.5pt, mark: (end: ">", fill: red))
  line((0, 0), (-0.5,-3), stroke: red + 1.5pt, mark: (end: ">", fill: red))
  line((0, 0), (1.1, -2), stroke: (dash: "dashed", paint: blue), mark: (end: ">", stroke: blue + 1pt, fill: blue))

  line((1.7, 1.14), (1.1, -2), stroke: (dash: "dashed", paint: gray))
  line((-0.5, -3), (1.1, -2), stroke: (dash: "dashed", paint: gray))

  content((0.8,3), $underline(v)_1$)
  content((1.2,0.4), $underline(v)_2$)
  content((1.3,-2), $underline(y)$)


  content((-0.3, -0.3), $O$)
})

== Combinazione Conica fra Vettori
Un vettore $#underline[y]$ è combinazione conica dei vettori $#underline[v]_1$, $#underline[v]_2$, ... ,$#underline[v]_n$, se esistono dei coefficienti lineari $lambda_1 ,lambda_2, ... ,lambda_n $ tali che:
- $lambda_1 ,lambda_2, ... ,lambda_n gt.eq 0 $
  - Essendo sempre $lambda_i gt.eq 0$, non avviene mai il ribaltamento del vettore e le combinazioni risultanti si trovano nel cono con estremi $#underline[v]_1$ e $#underline[v]_2$
- $#underline[y] eq lambda_1 #underline[v]_1 + lambda_2 #underline[v]_2 +...+lambda_n #underline[v]_n $



#cetz.canvas({
  import cetz.draw: *
  line((-4, 0), (4, 0), mark: (end: ">"), name: "asse-x1")
  line((0, -1), (0, 4), mark: (end: ">"), name: "asse-x2")
 
  content((4.3, 0), $x_1$)
  content((0, 4.3), $x_2$)

  line((0, 0), (0.5, 3), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))
  line((0, 0), (1.2,0.8), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))

  line((0, 0), (1.5,3.5), stroke: red + 1.5pt, mark: (end: ">", fill: red))
  line((0, 0), (3,3), stroke: red + 1.5pt, mark: (end: ">", fill: red))
  line((0, 0), (1,1.5), stroke: red + 1.5pt, mark: (end: ">", fill: red))

  content((0.8,3), $underline(v)_1$)
  content((1.2,0.4), $underline(v)_2$)
  content((1.2,2), $underline(y)$)


  content((-0.3, -0.3), $O$)
})

#pagebreak()

== Combinazione Convessa fra Vettori
Un vettore $#underline[y]$ è combinazione convessa dei vettori $#underline[v]_1$, $#underline[v]_2$, ... ,$#underline[v]_n$, se esistono dei coefficienti lineari $lambda_1 ,lambda_2, ... ,lambda_n $ tali che:
- $lambda_1 ,lambda_2, ... ,lambda_n gt.eq 0 $
- $lambda_1 +lambda_2+ ... +lambda_n eq 1 $
  - Essendo $lambda_1 +lambda_2+ ... +lambda_n eq 1 $, non avviene mai l'allungamento o il ribaltamento del vettore e le combinazioni risultanti hanno un estremo sulla retta che unisce $#underline[v]_1$ e $#underline[v]_2$
  - Limiti i moduli dei vettori risultanti
- $#underline[y] eq lambda_1 #underline[v]_1 + lambda_2 #underline[v]_2 +...+lambda_n #underline[v]_n $


#cetz.canvas({
  import cetz.draw: *
  line((-4, 0), (4, 0), mark: (end: ">"), name: "asse-x1")
  line((0, -1), (0, 4), mark: (end: ">"), name: "asse-x2")
 
  content((4.3, 0), $x_1$)
  content((0, 4.3), $x_2$)

  line((0, 0), (0.5, 3), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))
  line((0, 0), (1.2,0.8), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))

  line((0, 0), (1,1.5), stroke: red + 1.5pt, mark: (end: ">", fill: red))

  line((0.5, 3), (1.2,0.8), stroke: (dash: "dashed", paint: gray))
  

  content((0.8,3), $underline(v)_1$)
  content((1.2,0.4), $underline(v)_2$)
  content((1.3,1.5), $underline(y)$)


  content((-0.3, -0.3), $O$)
})

#pagebreak()

== Lineare Indipendenza tra Vettori
I vettori $#underline[v]_1$, $#underline[v]_2$, ... ,$#underline[v]_n$ sono linearmente *indipendenti* se l'unico modo per ottenere il vettore nullo, dalla loro combinazione vettoriale, è quello di porre tutti i coefficienti $lambda$ a zero
$ lambda_1 #underline[v]_1 + lambda_2 #underline[v]_2 +...+lambda_n #underline[v]_n eq underline(0) $
implica che $lambda_1 eq 0 ,lambda_2 eq 0, ... ,lambda_n eq 0$

\

I vettori, invece, si dico linearmente *dipendenti* se esistono $lambda_1 ,lambda_2, ... ,lambda_n $ non tutti nulli tali che
$ lambda_1 #underline[v]_1 + lambda_2 #underline[v]_2 +...+lambda_n #underline[v]_n eq underline(0) $
- Sono linearmente dipendenti se uno dei vettori può essere espresso come combinazione lineare degli altri

=== Esempio Lineare Indipendenza tra Vettori
Siano: $#underline[v]_1^T eq mat(1,2,3, delim: "[")$, $#underline[v]_2^T eq mat(-1,1,-1, delim: "[")$, $#underline[v]_3^T eq mat(0,3,2, delim: "[")$

Sono linearmente *dipendenti* dato che si possono esprimere come combinazione lineare degli altri, essendo $#underline[v]_1^T + #underline[v]_2^T eq #underline[v]_3^T $

Dato che $lambda_1 #underline[v]_1 + lambda_2 #underline[v]_2 +lambda_3 #underline[v]_3 eq 0$
\ Con $lambda_1 eq lambda_2 eq 1$ e $lambda_3 eq -1$
$ 1 * vec(1,2,3,delim: "[") + 1* vec(-1,1,-1,delim: "[") + -1* vec(0,3,1,delim: "[") eq vec(0,0,0,delim: "[") $

#pagebreak()

== Spazio Generato
Un insieme di vettori $#underline[v]_1$, $#underline[v]_2$, ... ,$#underline[v]_k$ di dimensione $n$ genera l'insieme di vettori $RR^n$, se ogni vettore in $RR^n$ può essere rappresentato come combinazione lineare dei vettori $#underline[v]_1$, $#underline[v]_2$, ... ,$#underline[v]_k$
- Fanno parte dello spazio solo vettori con esattamente $n$ componenti
- Per generare tutto $RR^n$, servono almeno $n$ vettori

== Base di uno Spazio
Un insieme di vettori $#underline[v]_1$, $#underline[v]_2$, ... ,$#underline[v]_k$ in $RR^n$ è una base di $RR^n$ se
- $#underline[v]_1, #underline[v]_2, ... ,#underline[v]_k$ generano $RR^n$
- Se uno solo dei vettori viene rimosso, i rimanenti $k-1$ vettori non generano $RR^n$, quindi devono essere esattamente $n$ vettori

Quindi
- $k eq n$
- $#underline[v]_1, #underline[v]_2, ... ,#underline[v]_k$ sono linearmente indipendeti
- Definiamo *dimensione* il numero di vettori che formano una base per $RR^n$, ovvero $n$

#pagebreak()

=== Esempio Spazio Generato e Base di uno Spazio
#cetz.canvas({
  import cetz.draw: *
  line((-4, 0), (4, 0), mark: (end: ">"), name: "asse-x1")
  line((0, -4), (0, 4), mark: (end: ">"), name: "asse-x2")
 
  content((4.3, 0), $x_1$)
  content((0, 4.3), $x_2$)

  line((0, 0), (1, 0), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))
  line((0, 0), (-1,3), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))
  line((0, 0), (2,1), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))
  line((0, 0), (1,-3), stroke: blue + 1.5pt, mark: (end: ">", fill: blue))

  

  content((0.8,-0.3), $underline(v)_1$)
  content((-0.5,2.8), $underline(v)_2$)
  content((1.8,1.3), $underline(v)_3$)
  content((1,-3.2), $underline(v)_4$)


  content((-0.3, -0.3), $O$)
})
- $#underline[v]_1, #underline[v]_2, #underline[v]_3$ generano $RR^2$
- $#underline[v]_1, #underline[v]_2, #underline[v]_3$ non formano una base di $RR^2$
- $#underline[v]_1, #underline[v]_2$ formano una base di $RR^2$
- $#underline[v]_2, #underline[v]_3$ formano una base di $RR^2$
- $#underline[v]_2, #underline[v]_4$ non formano una base di $RR^2$, essendo linearmente dipendenti

#pagebreak()

= Richiami di Algebra vettoriale
- Matrici ed Operazioni tra matrici
- Inversa di una matrice
- Risoluzione di un sistema di equazioni lineari
- Metodo di Gauss

== Matrici
Tabella di $m times n$ elementi ordinatamente disposti su $m$ righe e $n$ colonne
- Si indicano con le lettere maiuscole
$ A eq mat(a_11, a_12, a_13, a_14;a_21, a_22,a_23,a_24;a_31, a_32,a_33,a_34) $
- Il generico elemento $a_(i j)$ si indica con $A_(m times n) eq {a_(i j)}$
- Si può indicare anche come un insieme di vettori riga o colonna
$ A eq vec(underline(a)^1, underline(a)^2,underline(a)^3,delim: "[") $
\
- *Matrice rettangolare*: $m eq.not n$
- *Matrice quadrata*: $m eq n$
- In una *matrice quadrata* di ordine $n$ gli elementi in posizioni $a_(i i)$ costituiscono la *diagonale principale*

== Tipi di Matrici e Operazioni fra Matrici

=== Moltiplicazione di una Matrica per uno Scalare
Moltiplicare ogni entrata della matrice per lo scalare $k${
$ k A_(m times n) eq {k dot a_(i j)} $

#pagebreak()

=== Addizioni tra Matrici
Definisco la matrice somma fra le due matrici considerate, sommando gli elementi delle varie posizioni
- Le due matrice $A$ e $B$ devono avere le stesse dimensioni
$ A_(m times n) eq {a_(i j)}, B_(m times n) eq {b_(i j)} $
$ A + B = C -> C_(m times n) eq {c_(i j)} $
$ c_(i j) eq a_(i j) + b_(i j) space space forall i eq 1,...,m, forall j eq 1,...,n $

=== Prodotto Righe per Colonne tra Matrici
Per poter fare il prodotto fra matrici il numero di righe della matrice $A$ e il numero di colonne $B$
- Ciascun elemento $c_(i j)$ della matrice risultante $C$ è il prodotto interno della riga $i$-esima di $A$ con la colonna $j$-esima
$ A_(m times n) eq {a_(i j)}, B_(n times p) eq {b_(i j)} $
$ c_(i j) eq sum_(k eq 1)^n (a_(i k) b_(k j)), forall i eq 1,...,m, forall j eq 1,...,p $
- Prodotto solo $A B$ è definito solo se $n eq q$, la matrice prodotto $A B$ è di dimensioni $m times p$
- Non vale sempre la proprietà commutativa $A times B eq.not B times A$

==== Esempio Prodotto Righe per Colonne tra Matrici
$ A_(3 times 3) eq mat(1, -1, 1; 4, -2, 5; 2, 0, 1) space space space B_(3 times 2) eq mat(5, 0; 3, 0; 1, 1) $
$ C_(3 times 2) eq A B eq mat(3, 1; 19, 5; 11, 1) $

#pagebreak()

=== Trasposta di una Matrice
Data una matrice $A$, con $m$ righe e $n$ colonne, si definisce matrice *trasposta* di $A$ e si denota con $A^T$, la matrice da $A$ scambiando le righe con le colonne

==== Proprietà Trasposta di una Matrice
- $(A^T)^T eq A$
- $(A + B)^T eq A^T + B^T$
- $(A B)^T eq B^T A^T$

=== Matrici Partizionate
Una matrice $A_(m times n)$ può essere partizionata in sottomatrici
$ A = mat(
  a_11, a_12, a_13, a_14;
  a_21, a_22, a_23, a_24;
  a_31, a_32, a_33, a_34;
  a_41, a_42, a_43, a_44;
  augment: #(hline: 3, vline: 2)
) $
\
$ A_(4 times 4) eq mat(A_(11), A_(1 2); A_(2 1), A_(2 2)) $
Da cui possiamo ottenere la sottomatrice $A_(1 1)$ con dimensione $3 times 2$
$ A_(1 1) = mat(
  a_11, a_12;
  a_21, a_22;
  a_31, a_32;
) $

#pagebreak()

=== Matrice Identità
La matrice *identità* di ordine $n$ $I_(n times m)$ è una matrice quadrata $n times m$ che ha tutti $1$ sulla diagonale principale e zero nelle restanti posizioni
$ A_(m times n) I_(n times n) eq A_(m times n) $
$ I_(m times m) A_(m times n) eq A_(m times n) $
$ I_(3 times 3) = mat(
  1, 0, 0;
  0, 1, 0;
  0, 0, 1;
  delim: "["
) $

=== Matrice Triangolare Superiore
Un matrice quadrata $A_(n times n)$ si dice *triangolare superiore* se tutti gli elementi al di sotto della diagonale principale sono nulli
$ a_(i j) eq 0, forall i gt j $
$ A = mat(
  a_11, a_12, a_13;
  0,    a_22, a_23;
  0,    0,    a_33;
  delim: "["
) $

=== Matrice Triangolare Inferiore
Un matrice quadrata $A_(n times n)$ si dice *triangolare inferiore* se tutti gli elementi al di sopra della diagonale principale sono nulli
$ a_(i j) eq 0, forall i lt j $
$ L = mat(
  a_11, 0,    0;
  a_21, a_22, 0;
  a_31, a_32, a_33;
  delim: "["
) $

#pagebreak()

=== Pivot
Data una matrice $A_(m times n)$ si definisce *pivot* della riga $i$-esima di $A$ il primo elemento non nullo della riga
$ A_(3 times 3) eq mat(1, -1, 1; 0, -2, 5; 0, 4, 1) $
- $1$ è detto pivot della prima riga

=== Matrice a scala per Righe
Una matrice $A_(m times n)$ si dice *scala per righe* se:
- Tutte le eventuali righe nulle sono in fondo alla matrice
- Il pivot della riga $i$-esima è strettamente più a destra del pivot della riga $(i-1)$-esima con $i gt.eq 2$

$ A_(3 times 3) eq mat(1, -1, 1; 0, -2, 5; 0, 0, 1) $

=== Operazioni Elementari
- *Scambio*: Scambio della riga $i$ con la riga $j$
- *Moltiplicazione*: Moltiplicazione di una riga per uno scalare *diverso* da zero
- *Sostituzione*: Sostituzione della riga $i$ con la somma della riga $i$ e della riga $j$ moltiplicata per uno scalare
\
- Permettono di calcolare:
 - Calcolare la matrice inversa di $A$ (quando $m=n$);
 - Risolvere un sistema di equazioni lineari;
 - Calcolare il rango della matrice.

#pagebreak()
=== Inversa di una Matrice
Data una matrice quadrata $A_(n times n)$, una matrice $B_(n times n)$ è l'inversa di $A_(n times n)$ se e solo se:
$ A_(n times n) B_(n times n) eq I_(n times n) $
$ B_(n times n) A_(n times n) eq I_(n times n) $
- L'inversa di una matrice quadrata $A$ se esiste è unica e si denota con $A^(-1)$
- Se ammette l'inversa viene detta *non singolare*
- Una matrice quadrata è non singolare se e solo se le sue righe o colonne sono linearmente indipendenti

==== Calcolo dell'Inversa di una Matrice - Metodo di Gauss
L'inverso di una matrice quadrata $A_(n times n)$ può essere calcolato attraverso un numero finito di operazioni elementari
- Si affianca ad $A$ la matrice identità $I$ di ordine $n$, ottenendo la matrice estesa $[A space I]$ di dimensioni $n times 2 n$
- Si effettuano una serie di operazioni elementari sulle righe della matrice estesa in modo che $A$ diventi la matrice identità $I$
  - Se una o più righe si annullano, allora non è possibile calcolare l'inversa della matrice
- La matrice estesa risultante dopo le operazioni elementari sarà $[I space A^(-1)]$ e le ultime $n$ colonne di questa matrice formano la matrice inversa di $A$

#pagebreak()

==== Calcolo dell'Inversa di una Matrice - Metodo Alternativo
- *Determinante*: Il determinante di una matrice quadrata $A$ è uno scalare che ne sintetizza alcune proprietà
$ det(A) eq sum^n_(j eq 1)(-1)^(i + j) dot a_(i j) dot m i n o r (A_(i j))$
- Si fissa una colonna o riga e si calcola ricorsivamente
- *minor($A_(i j)$)*: Rappresenta il determinante della sottomatrice di $A$ ottenuta rimuovendo la riga $i$-esima e la colonna $j$-esima
$ A^(-1) eq 1/(det(A))  mat(
  c o f(A_11), c o f(A_21), dots, c o f(A_(n 1));
  c o f(A_12), c o f(A_22), dots, c o f(A_(n 2));
  dots,      dots,      dots, dots;
  c o f(A_(1 n)), c o f(A_(2 n)), dots, c o f(A_(n n));
  delim: "["
) $
$ c o f(A_(i j)) eq (-1)^(i + j) dot m i n o r (A_(i j)) $

- *Matrice dei Cofattori*: La matrice che si ottiene sostituendo ogni elemento $a_(i j)$ con il suo rispettivo cofattore $c o f(A_(i j))$.

- *Matrice Trasposta dei Cofattori*: La matrice $C$ a cui vengono scambiati le righe con le colonne ($C^T$).

=== Rango di una Matrice
- *Rango di riga*: Data una matrice $A$ quadrata o rettangolare, il rango di riga di $A$ è il massimo numero di righe linearmente indipendenti di $A$
- *Rango di colonna*: Data una matrice $A$ quadrata o rettangolare, il rango di colonna di $A$ è il massimo numero di colonne linearmente indipendenti di $A$
- *Teorema*: Data una matrice $A$ quadrata o rettangolare, il rango di riga di $A$ coincide con il rango di colonna di $A$
- *Rango di una Matrice*: Data una matrice $A$ quadrata o rettangolare, il rango di $A$ coincide con il numero massimo di righe linearmente indipendenti di $A$ o, in maniera equivalente, al numero di colonne linearmente indipendenti di $A$
$ r a n g o(A_(m times n)) lt.eq min{m,n} $
- Se $r a n g o(A_(m times n)) eq min{m,n}$, allora $A$ è una matrice a *rango pieno*

=== Rango di una Matrice e Sistema di Equazioni Lineari
Data un sistema di equazioni lineari
$ cases(a_11 x_1+a_12 x_2+...+a_(1 n) x_n eq b_1,
a_21 x_1+a_22 x_2+...+a_(2 n) x_n eq b_2,
dots.v,
a_(m 1) x_1+a_(m 2) x_2+...+a_(m n) x_n eq b_m) $
In forma matricale $A_(m times n) #underline[x] eq #underline[b]$
- $A$: Matrice dei coefficienti di dimensione $m times n$
- $#underline[x]$: Vettore delle incognite di dimensioni $n times 1$
- $#underline[b]$: Vettore dei termini noti di dimensioni $m times 1$

Individuare una soluzione ad sistema di equazioni lineari significa trovare dei
valori da assegnare a $x_1, x_2, …, x_n$ affinchè il vettore $b$ possa essere
espresso come combinazione lineare delle colonne della matrice
\
La matrice viene definita *completa* del sistema e vale quanto segue:
- $ r a n g o[A #underline[b]] gt r a n g o(A)$, il sistema non ha soluzioni
- $ r a n g o[A #underline[b]] eq r a n g o(A)$, il sistema ha soluzioni
- Il numero di soluzioni del sistema è pari a $infinity^(n- r a n g o(A))$

=== Risoluzione Sistema di Equazioni Lineari Attraverso le Operazioni Elementari
Dato un sistema di $m$ equazioni lineari ed $n$ incognite 
$ A #underline[x] eq #underline[b] $
- *$A$*: Matrice dei coefficienti di dimensione ($m times n$)
- *$#underline[x]$*: Vettore delle incognite di dimensione ($n times 1$)
- *$#underline[b]$*: Vettore dei termini noti di dimensione ($m times 1$)
Ed è equivalente al sistema:
$ A' #underline[x] eq #underline[b]' $
- Matrice $mat(A',#underline[b]',delim: "[")$ è ottenuta dalla matrice $mat(A,#underline[b],delim: "[")$ attraverso un numero finito di operazioni elementari
\
- *Metodo di Gauss*: Permette di ridurre la matrice dei coeficienti ad una matrice a scala attraverso un numero finito di operazioni
- Bisogna assegnare dei valori $lambda, lambda_1,..$ alle variabili dopo aver ottenuto la matrice a scale
  - Il numero di valori da assegnare è dato da $n - m$

==== Esempio Risoluzione Sistema di Equazioni Lineari
Date:
$ x_1 +2 x_2 + x_3 - 2 x_4 eq 10 $
$ -x_1 + 2 x_2 - x_3 + x_4 eq 6 $
$ x_2 + x_3 eq 2 $
Otteniamo la matrice:
$ mat(1,2,1,-2,10;
-1,2,-1,1,6;
0,1,1,0,2; delim: "[",augment: #( vline: 4)) $

Aggiungiamo la prima riga alla seconda

$ mat(1,2,1,-2,10;
0,4,0,-1,16;
0,1,1,0,2; delim: "[",augment: #( vline: 4)) $
Dividiamo la seconda riga per 4 e sottraiamola alla terza
$ mat(1,2,1,-2,10;
0,4,0,-1,16;
0,0,1,1/4,-2; delim: "[",augment: #( vline: 4)) $
#pagebreak()
Dato che abbiamo ottenuto una matrice a scala possiamo riscrivere la matrice come:
$ x_1 +2 x_2 + x_3 - 2 x_4 eq 10 $
$ 4 x_2 - x_4 eq 16 $
$ x_3 + 1/4 x_4 eq -2 $

Assegnando un valore $lambda$ a $x_4$ ( $x_4 eq lambda$) otteniamo le infinite soluzioni del sistema $infinity^(n- r a n g o(A))$

#pagebreak()

= Problema di Ottimizzazione
Data una funzione $f:RR^n arrow.r RR$ e $X subset.eq RR^n$ un problema di ottimizzazione può essere formulato come:
$ min f(underline(x)) "s.t." underline(x) in X $
- *$min f(#underline[x])$*: Fuzione obiettivo
- *$#underline[x]$*: Vettore delle variabili decisionali
- *$X$*: Insieme delle soluzioni ammissibili
Consiste nel determinare se esiste un punto di minimo della funzione $f$ tra i punti dell'insieme $X$

= Problema di Programmazione Matematica
*Problema di Programmazione Matematica*: L'insieme delle soluzioni ammissibili di un problema di ottimizzazione viene espresso attraverso un sistema di disequazioni ed equazioni
$ min f(underline(x)) "s.t." g_i (underline(x)) gt.eq b_i, i eq 1,...,m $
- *$g_i (underline(x))$*: i-esimo vincolo del sistema
- *$b_i$*: i-esima componente del vettore dei termini noti

#pagebreak()

== Problema di Programmazione Matematica Lineare
- Funziona obiettivo è lineare: $f(underline(x)) eq #underline[c]^T #underline[x]$
- L'insieme $X$ è espresso in termini di relazioni lineari
$ min f(underline(x)) "s.t." g_i (underline(x)) gt.eq b_i, i eq 1,...,m $
- *Forma Esplicita*:
$
min space "s.t" space mat(c_1 x_1+,c_2 x_2+,...+,c_n x_n,;
a_(1 1) x_1+,a_12 x_2+,...+,a_(1 n) x_n,gt.eq b_1;
a_(2 1) x_1+,a_22 x_2+,...+,a_(2 n) x_n,gt.eq b_2;
a_(m 1) x_1+,a_(m 2) x_2+,...+,a_(m n) x_n,gt.eq b_m;
;delim: #none)
$
- *Forma Compatta*:
$
min quad & underline(c)^T underline(x) space
"s.t." space A underline(x) >= underline(b) 
$

- *Programmazione Lineare Continua (PL)*: Variabili $#underline[x]$ continue
$ {#underline[x] in RR^n:A #underline[x] gt.eq #underline[b]} $

- *Programmazione Lineare Intera (PLI)*: Variabili $#underline[x]$ intere
$ {#underline[x] in ZZ^n:A #underline[x] gt.eq #underline[b]} $

Un vettore $#underline[x]' "di" RR^n$:
- *Soddisfa* il vincolo $g_i (#underline[x]) gt.eq b_i "se" g_i (#underline[x]') gt.eq b_i$ 
- *Viola* il vincolo $g_i (#underline[x]) gt.eq b_i "se" g_i (#underline[x]') lt b_i$ 
- *Satura* il vincolo $g_i (#underline[x]) gt.eq b_i "se" g_i (#underline[x]') eq b_i$ 
Un vettore $#underline[x] "di" RR^n$ è soluzione ammissibile se e solo se soddisfa tutti i vincoli del problema

=== Soluzioni di un Problema di PL
$ min f(underline(x)) "s.t." g_i (underline(x)) gt.eq b_i, i eq 1,...,m $
- *Inammisibile*: Se la regione ammissibile è vuota $x eq nothing$
- *Illimitato inferiormente*: Se scelto un qualsiasi scalare $k$, esiste sempre un punto $#underline[x] in X "tale che" f(#underline[x]) lt k$
- *Ammette soluzione ottima finita*: Se esiste un punto \ $#underline[x]^* in X "tale che" f(#underline[x]^*) lt.eq f(#underline[x]), forall #underline[x] in X$
- *Ottimo Globale*: Un punto $#underline[x]^* in X$ è un ottimo globale per la funzione di minimo $f(#underline[x]) "se e solo se" f(#underline[x]^*) lt.eq f(#underline[x]), forall #underline[x] in X$
- *Ottimo Locale*: Un punto $#underline[x]' in X$ è un ottimo globale per la funzione di minimo $f(#underline[x]) "se e solo se" f(#underline[x]') lt.eq f(#underline[x]), forall #underline[x] in N(x,epsilon)$
  - Un punto di ottimo globale è anche un punto di ottimo locale, ma non è in generale vero il viceversa

=== Esempio Problema di Programmazione Matematica Lineare
- *Forma Esplicita*:
$ min 500 x_1 + 700 x_2 + 350 x_3 + 400 x_4 + 200 x_5 $\
$"s.t"$
$ 8 x_1 + 10 x_2 + 5 x_4 + 7 x_5  eq 96 $
$ 5 x_1 + 12 x_2 + 4 x_3 + eq 96 $
$ 20 x_1  + 20 x_2 + 20 x_3 + 20 x_4 + 20 x_5 = 384 $
$ x_1 ≥ 0, x_2 ≥ 0, x_3 ≥ 0, x_4 ≥ 0, x_5 ≥ 0 $

- *Forma Compatta*:
$
min quad & underline(c)^T underline(x) space
"s.t." space A underline(x) = underline(b), space #underline[x] gt.eq 0 
$
$ #underline[c]^T eq mat(500,700,350,400,200;delim:"[") , space #underline[x] eq mat(x_1;x_2;x_3;x_4;x_5;delim:"[") $
$ A eq mat(8,10,0,5,7;
5,12,4,0,0;
20,20,20,20,20;delim:"[") #underline[b] eq mat(96;96;384;delim:"[") $

Combinazione lineare delle colonne di $A$:
$ mat(8;5;20;delim:"[")x_1 + mat(10;12;20;delim:"[")x_2 + mat(0;4;20;delim:"[")x_3 + mat(5;0;20;delim:"[")x_4 + mat(7;0;20;delim:"[")x_5 eq mat(96;96;384;delim:"[") $

- *$#underline[x]$*: Vettore $n times 1$ delle variabili decisionali
- *$#underline[c]$*: Vettore $n times 1$ dei coefficienti di costo della funzione obiettivo
- *$#underline[b]$*: Vettore $m times 1$ dei termini noti dei vincoli
- *$A$*: Matrice $m times n$ dei coefficienti tecnologici

== Forma Canonica di Minimo
Un problema di programmazione lineare di minimo è in forma canonica se tutti i suoi vincoli sono di maggiore o uguale e tutte le sue variabili sono maggiori o uguali a zero
$ 
min z eq mat(#underline[c]^T #underline[x],;
A #underline[x] gt.eq #underline[b],;
#underline[x] gt.eq 0, #underline[x] in RR^n;
delim: #none)
$ 

== Forma Standard di Minimo
Un problema di programmazione lineare di minimo è in forma standard se tutti i suoi vincoli sono di uguaglianza e tutte le sue variabili sono maggiori o uguali a zero, inoltre $#underline[b] gt.eq underline(0)$
$ 
min z eq mat(#underline[c]^T #underline[x],;
A #underline[x] eq #underline[b],(1);
#underline[x] gt.eq 0, #underline[x] in RR^n, (2);
delim: #none)
$ 
- Un vettore $#underline[x]$ che soddisfa i vincoli $(1)$ rappresenta una soluzione del sistema di equazioni
- Un vettore $#underline[x]$ che soddisfa i vincoli $(1) "e" (2)$ rappresenta una soluzione ammissibile del problema di PL

=== Assunzioni per i Problemi
- $m lt n$
 - Caso significativo avendo $infinity^(n- r a n g o(A))$ soluzioni
- $m eq r a n g o(A)$
 - Altrimenti avrei dei vettori linearmente dipendenti che posso scrivere come combinazione lineare degli altri vettori presenti

== Problemi Equivalenti
Due problemi di programmazione lineare $P "e" P'$, di minimo sono equivalenti se per ogni soluzione ammissibile $#underline[x] "di" P $ con valore obiettivo $ z$, possiamo costruire una soluzione ammissibile $#underline[x]' "di" P' "con lo stesso valore di "z$, e per ogni soluzione ammissibile $#underline[x]' "di" P' "con valore obiettivo" z$, possiamo costruire una soluzione ammissibile $#underline[x] "di" P "con lo stesso valore di "z$

- *Osservazione 1*: Se due problemi di programmazione lineare sono equivalenti allora i valori delle rispettive soluzioni ottime coincidono
- *Osservazione 2*: Qualunque problema di PL può essere trasformato in un problema equivalente in forma canonica o standard

=== Formulazioni Equivalenti
- *Funzione Obiettivo*:
$ max #underline[c]^T #underline[x] <=> - min -#underline[c]^T #underline[x] $
- *Vincoli*:
$ A #underline[x] gt.eq #underline[b] <=> -A #underline[x] lt.eq #underline[b] $
$ A #underline[x] eq #underline[b] <=> cases(A #underline[x] gt.eq #underline[b],A #underline[x] lt.eq #underline[b]) $
- *Vincoli $<=$*:
  - *Variabile di Slack (Scarto)*: $x_(n+i) eq b_i-sum^n_(j eq 1)a_(i j)x_j$
$ sum^n_(j eq 1)a_(i j)x_j lt.eq b_i <=> sum^n_(j eq 1)a_(i j)x_j + x_(n+i) eq b_i, x_(n+i) gt.eq 0 $ 
#pagebreak()
- *Vincoli $>=$*:
  - *Variabile di Surplus o Slack (Scarto)*: $x_(n+i) eq sum^n_(j eq 1)a_(i j)x_j-b_i$
$ sum^n_(j eq 1)a_(i j)x_j gt.eq b_i <=> sum^n_(j eq 1)a_(i j)x_j - x_(n+i) eq b_i, x_(n+i) gt.eq 0 $
- *Variabili non Vincolate*:
$ x_j "n.v." => x_j eq (x'_j - x''_j) "con" x'_j gt.eq 0, x''_j gt.eq 0 $
- Ogni soluzione $hat(underline(x))$ del nuovo problema $(P')$ corrisponde ad una soluzione ammissibile $#underline[x]$ del problema orginale $(P)$ dove $x_j eq hat(underline(x))'_j - hat(underline(x))''_j$ ed il valore della funzione obiettivo è lo stesso
$ hat(underline(x))'_j eq x_j "e" hat(underline(x))'' eq 0 "se" x_j gt.eq 0 $
$ hat(underline(x))'_j eq 0 "e" hat(underline(x))''_j eq -x_j "se" x_j lt 0 $
$ x_j lt.eq 0 => x_j eq -x'_j "con" x'_j gt.eq 0 $
- Ogni soluzione ammissibile $x$ del problema originale $(P)$ corrisponde ad una soluzione $hat(underline(x))$ del nuovo problema dove $hat(underline(x))'_j eq - x_j$ ed il valore della funzione obiettivo è lo stesso
  - Essendo equivalenti vale anche il contrario $x_j eq -hat(underline(x))'_j$
#pagebreak()
== Esempio Risoluzione Grafica di un Problema
$min z eq 3 x_1 + x_2$ \
$(1) space space 1/2 x_1-x_2 lt.eq 3$ \
$(2) space space -x_1+x_2 lt.eq 1$ \
$(3) space space 2 x_1-x_2 gt.eq 2$ \
$(4) space space x_1,x_2 gt.eq 0$ \
\
Il gradiente è la derivata componente per componente della funzione obiettivo
$"Gradiente" eq (3,1)$ da cui si ricava la direzione e il verso ed è perpendicolare alla $z$.
La direzione del gradiente permette di massimizzare, l'opposto minimizza \
Disegno le rette relative alle disequazioni assegnando dei valori e il simbolo della disequazione mi indica quale lato della retta considerare, scegliendo un punto di uno dei due lati

#cetz.canvas({
  import cetz.draw: *
  
  // 1. Assi Cartesiani
  line((-1, 0), (8, 0), mark: (end: ">"), name: "asse-x1")
  line((0, -1), (0, 5), mark: (end: ">"), name: "asse-x2")
  content((8.3, 0), $x_1$)
  content((0, 5.3), $x_2$)

  // 2. Regione Ammissibile (X) - Area Verde
  line((1, 0), (6, 0), (8, 1), (5, 5), (2.55, 3),
    close: true, 
    fill: green.lighten(60%), 
    stroke: none)
  content((4, 2), $X$, size: 20pt) 

  // 3. Vincoli con Frecce
  line((2, -2), (8, 1), stroke: 1pt, name: "v1")
  line((8, 1), (7.7, 1.4), stroke: red, mark: (end: ">", fill: red, size: 0.2))
  line((2, -2), (1.7, -1.6), stroke: red, mark: (end: ">", fill: red, size: 0.2))
  content((8.3, 1), $(1)$)

  line((-1, 0), (5, 5), stroke: 1pt, name: "v2")
  line((5, 5), (5.4, 4.6), stroke: red, mark: (end: ">", fill: red, size: 0.2))
  line((-1, 0), (-0.6, -0.4), stroke: red, mark: (end: ">", fill: red, size: 0.2))
  content((5.3, 5), $(2)$)

  line((0.5, -1), (3.5, 5), stroke: 1pt, name: "v3")
  line((3.5, 5), (4, 4.8), stroke: red, mark: (end: ">", fill: red, size: 0.2))
  line((0.5, -1), (1, -1.2), stroke: red, mark: (end: ">", fill: red, size: 0.2))
  content((3.5, 5.3), $(3)$) 

  // 4. Linee di livello (Perpendicolari al gradiente)
  // z = 15 (lontana)
  line((3, 6), (5.5, -1.5), stroke: (paint: blue, dash: "dashed", thickness: 0.8pt))
  // z = 9 (intermedia)
  line((1, 6), (3.5, -1.5), stroke: (paint: blue, dash: "dashed", thickness: 0.8pt))
  // z = 3 (Ottimo: passa per A=(1,0))
  line((-0.5, 4.5), (1.5, -1.5), stroke: (paint: blue, thickness: 1.2pt))
  content((0.2, 4.5), text(blue, $z^*$))

  // 5. Gradiente e Punto di Ottimo
  line((0, 0), (3, 1), stroke: (paint: red, thickness: 1.5pt), mark: (end: ">", fill: red))
  content((3.5, 1.3), text(red, $nabla z$)) 
  circle((1, 0), radius: 0.08, fill: red, stroke: none)
  content((1.2, -0.4), text(red, $A=(1,0)$)) 
})
#pagebreak()
Sostituendo il punto $A eq (0,1)$ alla funzione $z$, otteniamo $z eq 3$, sostituiamo $A$ essendo il punto di minimo della funziona vedendo le rette perpendicolari al gradiente.
 
== Soluzioni di un Problema PL
=== Non ammissibile
Quando $X eq emptyset$ ossia quando non esistono soluzioni ammissibili
$ X = X_1 inter X_2 = emptyset $
$ X eq emptyset arrow.double.r exists.not underline(x) in RR^n : A underline(x) gt.eq b, underline(x) gt.eq 0 $
#cetz.canvas({
  import cetz.draw: *
  
  // 1. Assi Cartesiani
  line((-1, 0), (6, 0), mark: (end: ">"), name: "x1")
  line((0, -1), (0, 6), mark: (end: ">"), name: "x2")
  content((6.3, 0), $x_1$)
  content((0, 6.3), $x_2$)
  content((-0.3, -0.3), $O$)

  // 2. Vincolo 1: Semispazio "Basso-Sinistra"
  // Definiamo una zona ammissibile per il primo vincolo
  line((0, 4), (4, 0), stroke: 1.5pt, name: "L1")
  // Frecce verso l'origine
  line((1, 3), (0.7, 2.7), stroke: red, mark: (end: ">", size: 0.2))
  line((3, 1), (2.7, 0.7), stroke: red, mark: (end: ">", size: 0.2))
  content((4.2, 0.3), $X_1$)

  // 3. Vincolo 2: Semispazio "Alto-Destra"
  // Definiamo una zona che non tocca la prima
  line((2, 6), (6, 2), stroke: 1.5pt, name: "L2")
  // Frecce che si allontanano dall'origine
  line((3, 5), (3.3, 5.3), stroke: blue, mark: (end: ">", size: 0.2))
  line((5, 3), (5.3, 3.3), stroke: blue, mark: (end: ">", size: 0.2))
  content((6.2, 2.3), $X_2$)

  // 4. Nota centrale
  content((3, 3), text(red, weight: "bold", $X = X_1 inter X_2 = emptyset$))
})
#pagebreak()
=== Ammissibile con Valore Ottimo Illimitato
Quando $z^* eq - infinity$ (PL di Minimo) oppure quando $z^* eq infinity$ (PL di Massimo)
- Un problema di ottimizzazione di minimo si dice illimitato *inferiormente* se scelto un qualsiasi scalare $k$, esiste sempre un punto $underline(x) in X "tale che" f(underline(x)) lt k$
#cetz.canvas({
  import cetz.draw: *
  
  // 1. Assi
  line((-1, 0), (8, 0), mark: (end: ">"), name: "x1")
  line((0, -1), (0, 7), mark: (end: ">"), name: "x2")

  // 2. Regione X (Solo Riempimento, senza contorno)
  // Estendiamo i punti verso il bordo del grafico per simulare l'apertura
  line((0, 0), (0, 2), (5, 6), (5, 0), close: true, 
       fill: yellow.lighten(60%), stroke: none)
  
  // 3. I Vincoli (Il "contorno" reale) [cite: 314, 315]
  // Disegniamo solo le linee che effettivamente limitano la regione
  line((0, 0), (0, 2), stroke: blue + 1.5pt) // Vincolo asse x2
  line((-1, 1.2), (5, 6), stroke: blue + 1.5pt) // Vincolo obliquo
  line((0, 0), (7.5, 0), stroke: blue + 1.5pt) // Vincolo asse x1
  
  content((3, 1.5), $X$, size: 20pt)

  // 4. Gradiente (direzione di crescita) [cite: 249, 250]
  line((0, 0), (-1, -1), stroke: (paint: red, thickness: 2pt), 
       mark: (end: ">", fill: red))

})

#pagebreak()
- Un problema di ottimizzazione di massimo si dice illimitato *superiormente* se scelto un qualsiasi scalare $k$, esiste sempre un punto $underline(x) in X "tale che" f(underline(x)) gt k$
#cetz.canvas({
  import cetz.draw: *
  
  // 1. Assi
  line((-1, 0), (9, 0), mark: (end: ">"), name: "x1")
  line((0, -1), (0, 7), mark: (end: ">"), name: "x2")

  // 2. Regione X (Riempimento senza contorno per simulare l'infinito)
  // Estendiamo i punti oltre i margini visibili dei vincoli
  line((0, 0), (0, 2), (5, 6), (5, 0), close: true, 
       fill: yellow.lighten(60%), stroke: none)
  
  // 3. I Vincoli reali (Contorno blu solo dove l'area è chiusa)
  line((0, 0), (0, 2), stroke: blue + 1.5pt) // Vincolo su x2 [cite: 273]
  line((-1, 1.2), (5, 6), stroke: blue + 1.5pt) // Vincolo obliquo (Iperpiano) [cite: 246]
  line((0, 0), (8, 0), stroke: blue + 1.5pt) // Vincolo su x1 [cite: 273]
  
  content((3, 1.5), $X$, size: 20pt) // Insieme di ammissibilità [cite: 103, 114]

  // 4. Gradiente (punta verso la zona aperta)
  // Il verso del gradiente indica la direzione di crescita [cite: 250]
  line((0, 0), (1, 0.3), stroke: (paint: red, thickness: 2pt), 
       mark: (end: ">", fill: red))
  
})

Non esiste un punto di ottimo $underline(x)^*$
=== Ammissibile con Soluzione Ottima Finita
- (Pl di Minimo) se esiste un punto $underline(x)^* in X : f(underline(x^*)) lt.eq f(underline(x)), forall underline(x) in X$
- (Pl di Massimo) se esiste un punto $underline(x)^* in X : f(underline(x^*)) gt.eq f(underline(x)), forall underline(x) in X$
- Posso esserci come soluzione o un *unico* punto di ottimo oppure *infiniti* punti di ottimo
#pagebreak()
== Iperpiano
Si definisce iperpiano l'insieme dei punti $H eq {underline(x) : underline(p)^T underline(x) eq k}$, dove $underline(p)^T eq.not underline(0)$ e $k$ è uno scalare
$ H eq {underline(x) : p_1 x_1 +p_2 x_2+...+p_n x_n eq k} $
- $underline(p)^T$ è il gradiente o normale dell'iperpiano
- Il verso del gradiente indica la direzione di crescita dell'iperpiano

Quindi se consideriamo un punto $underline(x)_0$ di $H$ ed il gradiente $underline(p)^T$, l'iperpiano $H$ è l'insieme dei vettori $underline(x)$ tali che il vettore $(underline(x) - underline(x)_0)$ è perpendicolare a $underline(p)^T$
$ underline(x)_0 in H arrow.double.r underline(p)^T underline(x)_0 eq k $
$ underline(x) in H arrow.double.r underline(p)^T underline(x) eq k $
Da cui sottraendo otteniamo
$ underline(p)^T (underline(x) - underline(x)_0) eq 0 $
Quindi se il prodotto interno è nullo sono perpendicolari
#pagebreak()
== Semispazio
Si definisce semispazio l'insieme dei punti ${underline(x) : underline(p)^T underline(x) gt.eq k}$ oppure \ ${underline(x) : underline(p)^T underline(x) lt.eq k}$ dove $underline(p)^T eq.not underline(0)$ è $k$ è uno scalare
- Un iperpiano divide lo spazio $RR^n$ cui appartiene in due semispazi
Quindi dato un iperpiano $H$
$ H eq {underline(x) in RR^n : underline(p)^T underline(x) eq k} $
Otteniamo due semispazi
$ S_1 eq {underline(x) in RR^n : underline(p)^T underline(x) gt.eq k} $
$ S_2 eq {underline(x) in RR^n : underline(p)^T underline(x) lt.eq k} $

#pagebreak()
== Insieme Convesso
Un insieme $x$ è convesso se e solo se dati due punti $underline(x) in X$ e $underline(y) in X$ ogni punto $underline(w)$ ottenuto come loro combinazione convessa appartiene ad $X$ ossia 
$ underline(w) eq lambda underline(x) + (1-lambda) underline(y), space lambda in [0,1] $

=== Lemma 1 Insiemi Convessi
L'insieme $X eq {underline(x) : A underline(x) eq b}$ è un insieme convesso
\
*Dimostrazione*: \
Dobbiamo dimostrare che scelti due qualsiasi punti $underline(x)$ e $underline(y)$ di $X$, un qualunque punto $underline(w)$ ottenuto dalla loro combinazione convessa appartiene ancora ad $X$. \
Dato che $underline(x)$ e $underline(y)$ appartengono ad $X$ 
$ underline(x) in X arrow.double.r A underline(x) eq b $
$ underline(y) in X arrow.double.r A underline(y) eq b $
Inoltre $underline(w) eq lambda underline(x) + (1-lambda) underline(y), space lambda in [0,1]$
Quindi moltiplicando per la matrice $A$
$ A underline(w) eq lambda A underline(x) + (1-lambda) A underline(y), space lambda in [0,1] $
Quindi sostituendo $A underline(x)$ e $A underline(y)$ con il valore $underline(b)$
$ A underline(w) eq lambda underline(b) + (1-lambda) underline(b) eq underline(b) $Quindi $underline(w) in X$
=== Lemma 2 Insiemi Convessi
L'iperpiano ${underline(x) : underline(p)^T underline(x) eq k}$ è un insieme convesso
=== Lemma 3 Insiemi Convessi
I semispazi ${underline(x) : underline(p)^T underline(x) gt.eq k}$ e ${underline(x) : underline(p)^T underline(x) lt.eq k}$ sono insiemi convessi
=== Lemma 4 Insiemi Convessi
L’intersezione di iperpiani e semispazi genera un insieme convesso

== Poliedri
Un poliedro è l’insieme dei punti ottenuto dall’intersezione di un numero finito di iperpiani e semispazi
- Il poliedro è un insieme *convesso*
=== Politopo (Limitato)
Un poliedro $X$ è limitato quando esiste uno scalare $k$ tale che \ $ ||x|| lt.eq k ,forall underline(x) in X $
=== Illimitato
Un poliedro $X$ è illimitato quando non esiste uno scalare $k$ tale che \ $ ||x|| lt.eq k ,forall underline(x) in X $


=== Punto Estremo
Un punto di un poliedro $X$ è un punto estremo se e solo se non può essere espresso come combinazione convessa *stretta* di altri punti di $X$
$ underline(x) in X "è un vertice "arrow.double.r.l exists.not underline(x)',underline(x)'' in X, underline(x)' eq.not underline(x)'' : underline(x) eq lambda underline(x)' + (1-lambda)underline(x)'' "con" 0 lt lambda lt 1 $ 

=== Teorema (Senza Dimostrazione) Proprietà Punti Estremi Poliedro Limitato
Dato un poliedro $X$ non vuoto e limitato con punti estremi $underline(x)_1, underline(x)_2,...,underline(x)_n$ ogni punto $underline(y) in X$ può essere espresso come combinazione convessa dei punti estremi di $X$
$ underline(y) eq sum^k_(j eq 1) lambda_j underline(x)_i $
Con
$ sum^k_(j eq 1) lambda_j eq 1 "e" lambda_j gt.eq 0, forall j eq 1,...,k $

- Una combinazione convessa di $underline(x)_1, underline(x)_2, underline(x)_3$ permette di ottenere tutti i punti di $X' subset X$

=== Raggio di un Poliedro
Un raggio $R$, di vertici $underline(x)_0$ e di direzione $underline(d)$, è l'insieme di punti
$ R eq {underline(x)_0 + lambda underline(d) : lambda gt.eq 0} $

#cetz.canvas({
  import cetz.draw: *
  
  // 1. Assi Cartesiani
  line((-0.5, 0), (8, 0), mark: (end: ">"), name: "x")
  line((0, -0.5), (0, 6), mark: (end: ">"), name: "y")

  // 2. Definizione del Raggio R = {x0 + lambda*d : lambda >= 0}
  let x0 = (1.5, 2)
  let d = (5, 2) // Direzione d
  
  // Disegno del raggio (semiretta tratteggiata che indica l'infinito)
  line(x0, (x0.at(0) + d.at(0), x0.at(1) + d.at(1)), 
    stroke: (paint: red, dash: "dotted", thickness: 2pt), 
    name: "raggio")
  
  // 3. Vettore Direzione d
  line(x0, (x0.at(0) + 2, x0.at(1) + 0.8), 
    stroke: (paint: black, thickness: 1.5pt), 
    mark: (end: ">", fill: black))
  content((2.8, 2.8), $underline(d)$)

  // 4. Vertice x0
  circle(x0, radius: 0.1, fill: red, stroke: none)
  content((1.2, 1.8), $underline(x)_0$)

  // 5. Etichetta della retta
  content((6, 4.3), text(red, $underline(x)_0 + lambda underline(d)$))
})

=== Direzione di un Poliedro
Dato un poliedro $X$, il vettore $underline(d)$ è una direzione di $X$ se e solo se per ogni punto $underline(x)_0 in X$, il raggio $underline(x)_0 + lambda underline(d)$ appartiene ad $X, forall lambda gt.eq 0$

=== Calcolo Direzione di un Poliedro
$ X eq {underline(x) : A underline(x) lt.eq underline(b), underline(x) gt.eq 0} $
Dato un qualsiasi punto $underline(x)_0 in X$, il vettore $underline(d)$ è una direzione del poliedro $X$ se:
$ (i) space space A(underline(x)_0 + lambda underline(d)) lt.eq underline(b) $
$ (i i) space space underline(x)_0 + lambda underline(d) gt.eq underline(0) $
$ (i i i) space space underline(d) eq.not underline(0) $
Nella $(i)$ poichè $underline(x)_0 in X$ e visto che $underline(x)_0 in X "e" A underline(x)_0 lt.eq underline(b)$, quindi deve essere negativo $A lambda underline(d)$:
$ A(underline(x)_0 + lambda underline(d)) lt.eq underline(b) arrow.double.r.l A underline(x)_0 + A lambda underline(d) lt.eq underline(b) arrow.double.r.l A lambda underline(d) lt.eq underline(0) arrow.double.r.l A underline(d) lt.eq underline(0) $
Dalla $(i i)$ $underline(x)_0 + lambda underline(d) gt.eq underline(0) arrow.double.r.l underline(d) gt.eq underline(0)$
\
Quindi le direzioni $underline(d)$ del poliedro $X$ sono tutti e solo i vettori tali che:
$ A underline(d) lt.eq underline(0) $
$ underline(d) gt.eq underline(0) $
$ underline(d) eq.not underline(0) $

Questo è un sistema omogeneo che definisce un cono poliedrico (
detto cono di recessione) ottenuto traslando gli iperpiani che
definiscono $X$ parallelamente a se stessi fino all’origine

==== Esempio
$ X eq {(x_1,x_2): -3 x_1 + x_2 lt.eq 2, - x_1 + x_2 lt.eq 2, - x_1 + 2_x_2  lt.eq 8, x_1 gt.eq 0, x_2 gt.eq 0} $
Calcolo insieme delle direzioni di $X$ è dato dai vettori $underline(d) eq mat(d_1;d_2;delim:"[") eq.not mat(0;0;delim:"[")$
$ D eq {(d_1,d_2): -3 d_1 + d_2 lt.eq 0, -d_1 + d_2 lt.eq 0, -d_1 + 2d_2 lt.eq,d_1 + d_2 eq 1, d_1 gt.eq 0, d_2 gt.eq 0} $
- $d_1 + d_2 eq 1$ per normalizzare il vettore in modo da considerare vettori diversi
$ underline(d)' eq mat(2/3;1/3;delim: "[") space space underline(d)'' eq mat(1;0;delim: "[") $
#pagebreak()
=== Coni Convessi
Un cono convesso C è un insieme convesso tale che se $underline(x) in C$ allora anche $lambda underline(x) in C, forall lambda gt.eq 0$
#cetz.canvas({
  import cetz.draw: *
  
  // 1. Assi Cartesiani
  line((-1, 0), (7, 0), mark: (end: ">"), name: "x")
  line((0, -1), (0, 6), mark: (end: ">"), name: "y")

  // 2. Definizione del Cono C (Area tra due raggi estremi)
  // Utilizziamo line(..., close: true) per evitare l'errore sui lati
  line((0,0), (4, 6), (7, 2), close: true, 
    fill: yellow.lighten(60%), stroke: none)
  
  // 3. Raggi Estremi (quelli che delimitano il cono) [cite: 105, 117]
  line((0, 0), (4, 6), stroke: (paint: black, thickness: 1.5pt), name: "d1")
  line((0, 0), (7, 2), stroke: (paint: black, thickness: 1.5pt), name: "d2")

  // 4. Esempi di vettori/raggi interni al cono [cite: 102]
  line((0, 0), (3, 3.5), stroke: (paint: red, thickness: 1pt), mark: (end: ">", fill: red))
  line((0, 0), (5, 2.5), stroke: (paint: red, thickness: 1pt), mark: (end: ">", fill: red))
  line((0, 0), (4.5, 4.5), stroke: (paint: red, thickness: 1pt), mark: (end: ">", fill: red))

  // 5. Etichette
  content((3, 2.5), $C$, size: 25pt)
  content((4, 6.3), $underline(d)_1$)
  content((7.3, 2), $underline(d)_2$)
  content((-0.3, -0.3), $O$)
})

Alcuni raggi possono essere espressi come combinazione conica dei suoi raggi estremi, essendo quelli sufficienti.
\ \
Dato un insieme di vettori $underline(d)_1, underline(d)_2,...,underline(d)_k$ il cono convesso generato da questi vettori è dato da:
$ C eq {sum^k_(j eq 1) lambda_j underline(d)_j : lambda_j gt.eq 0} $

=== Direzioni Estreme Poliedro
Una direzione $underline(d)$ di un poliedro $X$, è una direzione estrema di $X$ se e solo se non è esprimibile come combinazione conica di altre direzioni di $X$

=== Teorema Rappresentazione Poliedro
Dato un poliedro $X$ non vuoto con punti estremi $underline(x)_i$ con $i eq 1,...,k$ e direzioni estreme $underline(d)_j$ con $j eq q,...,t$, ogni punto $underline(x) in X$ può essere espresso come combinazione convessa dei punti estremi di $X$ e combinazione lineare non negativa (conica) delle sue direzione estreme
$ underline(x) eq sum^k_(i eq 1) lambda_i underline(x)_i + sum^t_(j eq 1) mu_j underline(d)_j $
$ sum^k_(i eq 1) lambda_i  eq 1, space lambda_i gt.eq 0, space i eq 1,2,...,k $
$ mu_j gt.eq 0, space j eq 1,2,...,t $
Da cui ottengo \
#image("Lezione7/rappDire.png")

$ underline(y) eq lambda underline(x)_2 + (1- lambda)underline(x)_3 $
$ underline(w) eq underline(y) + mu underline(d)_1, space mu gt.eq 0 $
Quindi: $ underline(w) eq lambda underline(x)_2 + (1-lambda)underline(x)_3 + mu underline(d)_1 $

#pagebreak()
== Funzione Convessa
Una funzione $f(underline(x))$ si dice convessa su un insieme $X$ se presi comunque due punti $underline(x)_1, underline(x)_2 in X$ risulta che
$ f(lambda underline(x_1) + (1-lambda)underline(x_2)) lt.eq lambda f(underline(x_1)) + (1-lambda)f(underline(x_2)) "con" lambda in [0,1] $

=== Teorema 1
Una funzione lineare del tipo $underline(c)^T underline(x)$ è una funzione convessa
\
*Dimostrazione*:
Dalla definizione di funzione convessa, sostituendo la $f(underline(x))$ con $underline(c)^T underline(x)$
$ f(lambda underline(x_1) + (1-lambda)underline(x_2)) arrow.r underline(c)^T lambda underline(x_1) + underline(c)^T (1-lambda)underline(x_2) $
$ lambda f(underline(x_1)) + (1-lambda)f(underline(x_2)) arrow.r  underline(c)^T lambda underline(x_1) + underline(c)^T (1-lambda)underline(x_2) $
Essendo 
$ f(lambda underline(x_1) + (1-lambda)underline(x_2)) eq lambda f(underline(x_1)) + (1-lambda)f(underline(x_2))$, la funzione $underline(c)^T underline(x)$ è una funzione convessa

=== Teorema 2
Se $f$ è una funzione convessa e $X$ è un insieme convesso allora ogni ottimo locale $underline(x)'$ di $f$ su $X$ (se ne esistono) è anche un ottimo globale
Quindi considerando
$ 
min z eq mat(#underline[c]^T#underline[x],;
A #underline[x] eq #underline[b],(1);
#underline[x] gt.eq 0, (2);
delim: #none)
$ 
Dato che
- Funzione obiettivo $f(underline(x) eq #underline[c]^T#underline[x])$ è una funzione convessa
- Insieme $X eq {underline(x) : A underline(x) eq underline(b), underline(x) gt.eq underline(0)}$ è un insieme convesso
Allora vale il teorema e quindi nei problemi di PL gli ottimi locali e globali coincidono
#pagebreak()
== Soluzione dei Problemi PL
Consideriamo il problema PL in Forma Standard
$ min z = cases(
  underline(c)^T underline(x),
  A underline(x) = underline(b),
  underline(x) >= 0,
  delim: #none
) $
Siano $underline(x)_i$, con $i eq 1,2,...,k$, i punti estremi e $underline(d)_j$, con $j eq 1,2,...,t$, le direzioni estreme di $X$
\
\
Ogni punto $underline(x) in X$ può essere espresso come combinazione convessa dei punti estremi di $X$ e combinazione non lineare non negativa delle sue direzioni estreme

$ underline(x) eq sum^k_(i eq 1) lambda_i underline(x)_i + sum^t_(j eq 1) mu_j underline(d)_j $
$ sum^k_(i eq 1) lambda_i  eq 1, space lambda_i gt.eq 0, space i eq 1,2,...,k $
$ mu_j gt.eq 0, space j eq 1,2,...,t $
Possiamo trasformare il problema di PL in un nuovo problema con incognite $lambda_1,lambda_2,...,lambda_k "e" mu_1,mu_2,...,mu_t$
\

Moltiplico quindi per $underline(c)^T$
$ underline(c)^T underline(x) eq sum^k_(i eq 1) lambda_i underline(x)_i underline(c)^T + sum^t_(j eq 1) mu_j underline(d)_j underline(c)^T $
$ sum^k_(i eq 1) lambda_i  eq 1, space lambda_i gt.eq 0, space i eq 1,2,...,k $
$ mu_j gt.eq 0, space j eq 1,2,...,t $
$mu$ può andare all'infinito, quindi se $mu eq infinity$ allora ottimo illimitato, avendo almeno una direzione estrema negativa

- Se esiste una direzione $underline(d)_j$ tale che $underline(c)^T underline(d)_j lt 0 arrow.double.r$ Ottimo Illimitato
- Se $underline(c)^T underline(d)_j gt.eq "per ogni"  underline(d)_j arrow.double.r$
  - Le variabili per $mu_1,mu_2,...,mu_t$ sono poste a 0
  - Per minimizzare il resto della sommatoria basta calcolare tutti i valori $underline(c)^T underline(x)_i$, scegliere il minimo e fissare $lambda_p eq 1$ e tutti gli altri a zero

=== Riassunto Soluzione dei Problemi PL
- La soluzione ottima di un problema di minimo è finita se e solo se $underline(c)^T underline(d)_j gt.eq 0$ per ogni $underline(d)_j$
- Ogni soluzione ottima in questo caso si trova su uno dei vertici del poliedro
- Se esistono più vertici ottimi allora ogni combinazione convessa di questi punti è una soluzione ottima

=== Esempio Soluzione dei Problemi di PL
#image("Lezione7/sol1.png")
#image("Lezione7/sol2.png")
#image("Lezione7/sol3.png")
#image("Lezione7/sol4.png")
#image("Lezione7/sol5.png")
#pagebreak()
== Soluzione Algebrica Problemi PL
Consideriamo il problema PL in Forma Standard
$ min z = cases(
  underline(c)^T underline(x),
  A underline(x) = underline(b),
  underline(x) >= 0,
  delim: #none
) $
Poichè $m eq "rango"(A) "ed" m lt n$, possiamo partizionare $A$
$ A eq [A_B,A_N] $
- $A_B$: Matrice non singolare $m times m$, con $det(A_B) eq.not 0$, detta *Matrice di Base*
  - Matrice variabili dipendenti
  - Composta da $m$ colonne linearmente indipendenti di $A$
- $A_N$: Matrice $m times (n -m)$
 - Matrice variabili indipendenti
In corrispondenza di una scelta di $A_B$ e $A_N$ si può partizionare anche il vettore delle $underline(x)$
$ underline(x) eq mat(underline(x)_B;underline(x)_N;delim:"[") $
- $underline(x)_N$: *Vettore delle Variabili Fuori Base*, con $n-m$ componenti
- $underline(x)_B$: *Vettore delle Variabili in Base*, con $m$ componenti 

=== Soluzione di Base
$ 
min z eq mat(#underline[c]^T#underline[x],;
A #underline[x] eq #underline[b],(1);
#underline[x] gt.eq 0, (2);
delim: #none)
$ 
Il sistema di equazioni lineari si può riscrivere come:
$ A_B underline(x)_B+ A_N underline(x)_N eq underline(b) arrow.double.r A^(-1)_B A_B underline(x)_B +A^(-1)_B A_N underline(x)_N eq A^(-1)_B underline(b) $
$ arrow.double.r underline(x)_B eq A^(-1)_B underline(b) - A^(-1)_B A_N underline(x)_N $
Quindi una soluzione del sistema consiste nel determinare il valore per $m$ variabili $underline(x)_B$ avendo fissato arbitrariamente il valore per le restanti $n-m$ variabili $underline(x)_N$
- Si pongono le variabili $underline(x)_N eq underline(0)$
$ underline(x) eq mat(underline(x)_B;underline(x)_N;delim:"[") eq mat(A^(-1)_B underline(b);0;delim:"[") $
Definito come *Soluzione di Base*
- Se $underline(x)_B eq A^(-1)_B underline(b) gt.eq 0$ si ottiene una *Soluzione di Base Ammissibile*
#pagebreak()
== Corrispondenza Soluzione di Base-Vertici Poliedro Teorema
Sia $A$ una matrice $m times n$ di rango $m$ e $underline(b)$ un vettore $m$ dimensionale. Sia $X$ il poliedro convesso formato da tutti i vettori $underline(x) in RR^n$ che soddisfano $A underline(x) eq underline(b) "e" underline(x) gt.eq 0$. Un vettore $underline(x)$ è un vertice di $X$ se e solo se $underline(x)$ è una soluzione ammissibile di base al sistema
\
\
Quindi riassumendo
- Il numero di possibili base è:
$ mat(n;m) eq n!/(m!(n-m)!) $
- In generale non tutte le possibili sottomatrici $m times m$ sono nonsingolari (quindi invertibili), inoltre, non tutte le matrici di base, quindi limite superiore
danno luogo a soluzioni ammissibili
- A ciascuna matrice di base $B$ (ammissibile) corrisponde una soluzione di base (ammissibile)
- *Soluzioni Degeneri*: Soluzioni per cui qualche componente del vettore di base $underline(x)_B$ risulta nullo

=== Esempio Teorema
#image("Lezione8/lez8es1.png")
#image("Lezione8/lez8es2.png")
#image("Lezione8/lez8es3.png")
#image("Lezione8/lez8es4.png")
#image("Lezione8/lez8es5.png")
#image("Lezione8/lez8es6.png")
#image("Lezione8/lez8es7.png")

#pagebreak()
== Teorema Fondamentale della PL
Dato un problema di PL in forma standard
$ min z = cases(
  underline(c)^T underline(x),
  A underline(x) = underline(b),
  underline(x) >= 0,
  delim: #none
) $
Dove $A$ è una matrice $m times n$ con $"rango"(A) eq m$ ed $m lt.eq n$, allora
- Se esiste una soluzione ammissibile $arrow.double.r$ esiste una soluzione ammissibile di base
- Se esiste una soluzione ottima finita $arrow.double.r$ esiste una soluzione ottima finita che è anche di base
- Poiché il massimo numero di possibili basi di un problema di PL è finito, tali problemi hanno una struttura discreta.
- I problemi di ottimizzazione corrispondenti alla selezione tra un numero finito di alternative si dicono problemi combinatorici. La PL è quindi un problema combinatorico.

== Algoritmo Naive
- Un possibile algoritmo per determinare la soluzione ottima potrebbe consistere nella generazione esplicita di tutte le soluzioni ammissibili di base
- Tale strategia non è conveniente poiché il numero massimo delle possibili basi cresce in maniera esponenziale col crescere delle dimensioni del problema e in caso di ottimo infinito è inutilizzabile

#pagebreak()

= Algoritmo del Simplesso
== Forma Canonica in Funzione di una Base
$ min z = cases(
  underline(c)^T underline(x),
  A underline(x) = underline(b),
  underline(x) >= 0,
  delim: #none
) $
Data una base $B$ ammissibili, riscriviamo il problema in funzione di $B$ come segue
$ min z eq z_0 - sum_(j in N)(z_j - c_j) x_j $
$ underline(x)_B eq underline(overline(b)) - sum_(j in N) underline(y)_i x_j $
$ underline(x) gt.eq 0 $
Con
$ z_0 eq underline(c)_B^T A_B^(-1) underline(b) $
$ z_j eq underline(c)_B^T A_B^(-1) underline(a)_j $
$ underline(overline(b)) eq A_B^(-1) underline(b) $
$ underline(y)_j eq A_B^(-1) underline(a)_j $
Se consideriamo $min z eq z_0 - sum_(j in N)(z_j - c_j) x_j$ \ 
Supponiamo che esiste un coefficiente $k in N$ tale che
$ z_k - c_k gt 0 $
La funzione obiettivo migliora
\
Dal momento che le $x_j$ sono uguali a zero, per $j in N backslash {k}$
$ underline(x)_B eq underline(overline(b)) - underline(y)_k x_k $
*Ottimo Illimitato*: Se $y_(i k) lt.eq 0, forall i in B$ allora $x_(B_i)$ cresce al crescere di $x_k$ e così $x_(B_i)$ continua a essere non negativo \
Se esiste una componente $i$ tale che  $y_(i k) gt.eq B$ allora $x_(B_i)$ decresce al crescere di $x_k$, quindi il valore di $x_k$ verrà incrementato finchè una delle variabili in base assumerà valore zero \
La variabile $x_(B_i)$ che si azzererà per prima verrà rimossa dalle varibili di base e sarà rimpiazzata dalla variabili $x_k$
$ x_(B_1) eq overline(b)_1 - y_(1 k) x_k  gt.eq 0 arrow.double.r.l "sempre" $
$ x_(B_2) eq overline(b)_2 - y_(2 k) x_k  gt.eq 0 arrow.double.r.l x_k lt.eq overline(b)_2 / y_(2 k) $
$ ... $
$ x_(B_m) eq overline(b)_m - y_(m k) x_k  gt.eq 0 arrow.double.r.l x_k lt.eq overline(b)_m / y_(m k) $
Consideriamo solo i rapporti in cui $y_(i k) gt 0$ \
*Test dei Minimi Rapporti*:
$ x_k eq overline(b)_r / y_(r k) eq min_(1 lt.eq i lt.eq m){overline(b)_i / y_(i k): y_(i k) gt 0} $

== Pivot
Il coefficiente $y_(r k)$ è detto *Pivot* e viene usato per aggiornare i valori delle variabili di base dopo l'ingresso in base di $x_k$ \
Quindi la nuova soluzione di base è la seguente
$ x_(B_i) eq overline(b)_i - y_(i k) overline(b)_r / y_(r k) $
$ x_k eq overline(b)_r / y_(r k) $
$ x_j eq 0, forall j in N' "con" N' eq {B_r} union N backslash {k} $
Con il cambio delle variabili in base, la nuova matrice di base risulta composta dalle stesse colonne della vecchia base ad eccezione della colonna associata a $x_(B_r)$ che è stata sostituita dalla colonna associata a $x_k$ \
La nuova soluzione di base (a meno di casi degeneri) ha migliorato il valore della funzione obiettivo
$ z eq z_0 - (z_k - c_k) overline(b)_r / y_(r k) lt z_0 $

== Teorema Condizione di Ottimalità
Un soluzione di base non degenere di un problema di PL è ottima se e solo se:
- $overline(b)_i gt.eq 0, space i eq 1,...,m$ (Ammissibile)
- $z_j - c_j lt.eq 0, space forall j in N$ (Non migliorabile)
Se un problema ammette una soluzione ottima finita allora ammette una soluzione di base ottima che soddisfa le condizioni del teorema

== Scelta Variabile Entrante
Quando le condizioni di ottimalità non sono verificate è sempre possibile scegliere una nuova variabile fuori base $x_k$ da portare in base per migliorare l'obiettivo
=== Metodo del Gradiente
Sceglie la variabile fuori base $x_k$ che localmente fa aumentare più rapidamente la funzione obiettivo
$ z_k - c_k eq max_(j in N){z_j - c_j} $

== Scelta Variabile uscente
Se $y_(i k) lt.eq 0, forall i eq 1,...,m$, la soluzione del problema è *illimitata*
\
Se $y_(i k) gt. 0$ per almeno un $r$, allora la soluzione di base non è ottima e quindi bisogna passare alla base successiva
\
Se una variabile $x_(B_i)$ è nulla e $y_(i k) gt. 0$, allora $x_k$ entra in base con valore nullo, non cambiando la soluzione e rimanendo degenere creando un cycling

== Algoritmo del Simplesso
- *Input*: Problema di PL e una soluzione di base ammissibile
- *Test Ottimalità*: Se $z_j - c_j lt.eq 0,forall j in N$ allora la soluzione corrente è ottima e l'algoritmo termina, altrimenti passare alla *Scelta della Variabile Entrante*
- *Scelta della Variabile Entrante*: Scegliere una variabile fuori base $x_k$ tale che $z_k - c_k gt 0$ e passare al *Test di Illimitatezza*
- *Test di Illimitatezza*: Se $y_(i k), forall i eq 1,...,m$, allora la soluzione del problema è illimitata e l'algoritmo termina, altrimenti passare alla *Scelta della Variabile Uscente dalla Base: Test dei Minimi Rapporti*
- *Scelta della Variabile Uscente dalla Base: Test dei Minimi Rapporti*: Scegliere la variabile $x_r$ tale che $ overline(b)_r / y_(r k) eq min_(1 lt.eq i lt.eq m){overline(b)_i / y_(i k): y_(i k) gt 0 } $
$x_r$ è la variabile uscente e la variabile entrante è $x_k$ con valore $overline(b)_r / y_(r k) $

- *Aggiornamento della Base*: Aggiornare gli indici della variabili in base e fuori base e tornare al passo *Test di Ottimalità*

#pagebreak()

== Individuazione di una Base di Partenza per il Simplesso
Data una soluzione ammissibile $(underline(x)',underline(y)')$ del poliedro  \ $X' eq {A underline(x) + I underline(y) eq underline(b), space underline(x) gt.eq 0, underline(y) gt.eq 0 }$, il vettore $underline(x)$ sarà soluzione ammissibile del poliedro $X eq {A underline(x) eq underline(b), space underline(x) gt.eq 0}$ se e solo se $underline(y)' eq underline(0)$
\
*Dim*
\
$arrow.double.r$
\
Poichè per ipotesi $underline(x)'$ e $(underline(x)',underline(y)')$ sono soluzioni ammissibili dei rispettivi poliedri si ha che
$ A underline(x)' eq underline(b) $ $ A underline(x)' + I underline(y)' eq underline(b) $
Da cui otteniamo
$ underline(b) + I underline(y)' eq underline(b) arrow.double.r underline(y)' eq underline(0) $
$arrow.double.l$
\
Poichè $(underline(x)',underline(y)')$ è una soluzione ammissibile di $X'$ e $underline(y)' eq underline(0)$ si ha che $ underline(x)' gt.eq 0 $ e $ A underline(x)' + I underline(0) eq underline(b) arrow.double.r A underline(x)' eq underline(b) $

#pagebreak()

== Metodo delle Due Fasi
Per risolvere la soluzione $(underline(x)', underline(0))$ risolviamo il seguente problema a cui ci riferiremo come problema di PL della 1° fase
$ min g eq sum_(i=1)^m y_i $
$ A underline(x) + I underline(y) eq underline(b) $
$ underline(x) gt.eq 0, underline(y) gt.eq 0 $
Per risolvere il nuovo problema possiamo utilizzare il simplesso a
partire dalla matrice identità generata dalle colonne associate alle
variabili artificiali $underline(y)$
\
Quindi all’inizio della procedura tutte le variabili artificiali $underline(y)$ sono in
base mentre tutte le variabili 𝑥 del problema originale sono fuori base
\
\
Alla fine della prima fase possono verificarsi due casi:
- $g^* gt 0 arrow.double.r A underline(x) eq underline(b)$ non ammette soluzione e quindi non si passa alla seconda fase
- $g^* eq 0 arrow.double.r A underline(x) eq underline(b)$ ammette soluzione e si passa alla seconda fase utilizzando la base ottima della prima fase come base di partenza per il simplesso

#pagebreak()

== Metodo del Big-M
Il problema di PL viene risolto modificando artificialmente il sistema
dei vincoli esattamente come fatto per il Due Fasi aggiungendo le
variabili artificiali al sistema
\
Ciò che cambia è la funzione obiettivo usata dal metodo del Big-M
\
\
Alla funzione obiettivo di P vengono sommate (nel caso di un problema
di minimo) le variabili artificiali moltiplicate per un coefficiente M
”molto grande”
\
Sia $P$
$ min z eq underline(c)^T underline(x) $
$ A underline(x) eq underline(b) $
$ underline(x) gt.eq 0 $
Otteniamo $P(M)$
$ min z eq underline(c)^T underline(x) + M underline(I)^T underline(y) $
$ A underline(x) + I underline(y) eq underline(b) $
$ underline(x) gt.eq 0, underline(y) gt.eq 0 $

#image("Lezione12/Big-M-Sol.png")

#pagebreak()

= Teoria della Dualità
Ad ogni problema di PL (primale) è associato un problema Duale
- Problema Primale (P)
$ min c_1 x_1, + ...+ c_n x_n $
$s.t$
$ a_(11) x_1 + ...+ a_(1 n) x_n gt.eq b_1 $
$ ... $
$ a_(m 1) x_1 + ...+ a_(m n) x_n gt.eq b_m $
$ underline(x) gt.eq underline(0) $

- Problema Duale (D)
$ max b_1 w_1, + ...+ b_m w_m $
$s.t$
$ a_(11) w_1 + ...+ a_(m 1) w_m lt.eq c_1 $
$ ... $
$ a_(1 n) w_1 + ...+ a_(m n) x_m lt.eq c_n $
$ underline(w) lt.eq underline(0) $

Il problema D ha tante variabili quanti sono i vincoli di P e tanti vincoli quante sono le variabili di P

#image("Lezione13/dualita1.png")

In forma matriciale
- (P)
$ min underline(c)^T underline(x) $
$ A underline(x) gt.eq underline(b) $
$ underline(x) gt.eq 0 $

- (D)
$ max underline(b)^T underline(w) $
$ A underline(w) lt.eq underline(c) $
$ underline(w) gt.eq 0 $
#pagebreak()
== Duale del Problema Attuale
- (P)
$ max underline(b)^T underline(w) $
$ A underline(w)^T lt.eq underline(c) $
$ underline(w) gt.eq 0 $
Da cui otteniamo
$ -min - underline(b)^T underline(w) $
$ -A underline(w)^T gt.eq -underline(c) $
$ underline(w) gt.eq 0 $
Calcoliamo il Duale
$ -max - underline(c)^T underline(x) $
$ -A underline(x)^T lt.eq -underline(b) $
$ underline(x) gt.eq 0 $
(D)
$ min underline(c)^T underline(x) $
$ A underline(x)^T gt.eq underline(b) $
$ underline(x) gt.eq 0 $

Quindi il duale del duale è il problema primale
#pagebreak()
== Duale di un Primale con Vincoli di Uguaglianza
(P)
$ min underline(c)^T underline(x) $
$ A underline(x) eq underline(b) $
$ underline(x) gt.eq 0 $

Trasformiamo in vincoli di uguaglianza \
$ A underline(x) eq underline(b) "equivale a" cases(A underline(x) gt.eq underline(b), A underline(x) lt.eq underline(b) arrow.double.r - A underline(x) gt.eq - underline(b)) $ 
Quindi otteniamo
$ min underline(c)^T underline(x) $
$ A underline(x) gt.eq underline(b) $
$ - A underline(x) gt.eq - underline(b) $
$ underline(x) eq 0 $
Introduciamo $2m$ variabili duali $underline(u),underline(v)$ e unisco le due condizioni maggiori
$ max (underline(b)^T underline(u) - underline(b)^T underline(v)) $
$ A^T underline(u)- A^T underline(v) lt.eq underline(c) $
$ underline(c) gt.eq 0, underline(v) gt.eq $
Se sostituiamo $underline(w) eq underline(u)-underline(v)$ si ottiene $(D)$
$ max underline(b)^T underline(w) $
$ A underline(w)^T lt.eq underline(c) $
$ underline(w) "n.v" $
#pagebreak()
== Regole di Trasformazioni Generali
#image("Lezione13/dualita2.png")

== Importanza della Dualità
- Soluzione ottima del problema duale è un bound sulla soluzione ottima del primale
- Può essere conveniente risolvere il duale e non il primale
- Hanno un interpretazione economica utile per l'analisi di sensitività
#pagebreak()
== Teorema (Debole) della Dualità
Siano
- (P)
$ min underline(c)^T underline(x) $
$ A underline(x) gt.eq underline(b) $
$ underline(x) gt.eq 0 $

- (D)
$ max underline(b)^T underline(w) $
$ A underline(w)^T lt.eq underline(c) $
$ underline(w) gt.eq 0 $

*Teorema (Debole) della Dualità*: \
Siano $underline(x) "e" underline(w)$ soluzioni ammissibili rispettivamente per (P) e (D), allora
$ underline(c)^T underline(x) gt.eq underline(b)^T underline(w) $

- *Dimostrazione*:
$underline(hat(x))$ soluzione ammissibile di P $arrow.double.r$ $A underline(hat(x)) gt.eq underline(b)$ (1) \
Poichè $underline(hat(w)) gt.eq underline(0)$, premoltiplicando la (1) per $underline(hat(w))$, quindi $underline(hat(w))^T A underline(hat(x)) gt.eq underline(hat(w))^T underline(b)$ (2) \
Poichè $underline(hat(w))$ è una soluzione ammissibile di D $arrow.double.r$ $underline(c)^T gt.eq underline(hat(w))^T A$ (3) \
Dalle disequazioni (2) e (3), dato $underline(hat(x)) gt.eq 0$ si ha $underline(c)^T underline(hat(x)) gt.eq underline(hat(w))^T A underline(hat(x)) gt.eq underline(hat(w))^T underline(b)$ 

#pagebreak()

=== Corollario 1
Se $underline(x)$ è una soluzione per (P) e $underline(w)$ una soluzione ammissibile per (D) tali che $underline(c)^T underline(x) eq underline(b)^T underline(w)$ allora $underline(x)$ e $underline(w)$ sono soluzioni ottime dei rispettivi problemi
\ \
- *Dimostrazione*:
Supponiamo per assurdo che $underline(x)$ non sia ottimo per (P). Quindi esiste un'altra soluzione ammissibile $underline(x)^*$ di (P) tale che $underline(c)^T underline(x)^* lt.eq underline(c)^T underline(x)$. Ma poichè per ipotesi $underline(c)^T underline(x) eq underline(b)^T underline(w)$ si ha che $underline(c)^T underline(x)^* lt underline(b)^T underline(w)$. Assurdo che va contro la tesi

=== Corollario 2
Se il problema primale (P) è illimitato inferiormente allora il duale (D) è inammisibile. Viceversa se il duale (D) è illimitata superiormente il primale (P) è inammisibile
\ \
- *Dimostrazione*:
Supponiamo che il valore ottimo del primale (P) sia $- infinity$ e che il problema duale ammetta una soluzione $underline(w)$. Dal teorema della dualità debole si ha che 
$underline(c)^T underline(x) gt.eq underline(b)^T underline(w)$ per una qualsiasi soluzione ammissibile x di (P). Questo implica che $underline(b)^T underline(w) lt.eq -infinity$. Assurdo
\ \
Il corollario 2 stabilisce che l'illimitatezza di un problema implica l'inammissibilità del suo duale. Tuttavia questa non è una proprietà simmetrica ossia se un problema è inammissibile non è detto che il suo duale sia illimitato

#pagebreak()
== Teorema (Forte) della Dualità
Data una coppia di problemi primale duale, (P) e (D), se uno dei due problemi ammette una soluzione ottima finita, allora anche l'altro problema ammette una soluzione ottima finita ed i valori ottimi delle funzioni obiettivo coincidono, i.e.
$ underline(c)^T underline(x)^* eq underline(b)^T underline(w)^* $
- (P)
$ min underline(c)^T underline(x) $
$ A underline(x) eq underline(b) $
$ underline(x) gt.eq 0 $

- (D)
$ max underline(b)^T underline(w) $
$ A underline(w)^T lt.eq underline(c) $
$ underline(w) "n.v" $

- *Dimostrazione*:
Sia $underline(x)^*$ la soluzione ottima del primale e sia B la base ad esso associata
$ underline(x)^* eq mat(underline(x)_B^*;underline(x)_N^*;delim: "[") "quindi" underline(c)^T underline(x)^* eq underline(c)_B^T underline(x)_B^* eq underline(c)_B^T A_B^(-1) underline(b) $
Sia $underline(w)^(* T) eq underline(c)_B^T A_B^(-1) underline(b)$ vogliamo dimostrare che questo vettore è una soluzione ammissibile ed ottima per (D)
\
$ A^T underline(w)^* lt.eq underline(c) arrow.double.r.l underline(w)^(* T) A lt.eq underline(c)^T arrow.double.r underline(c)_B^T A_B^(-1) A lt.eq underline(c)^T $
$ arrow.double.r.l underline(c)_B^T A_B^(-1) A - underline(c)^T lt.eq underline(0)^T $
$ underline(c)_B^T A_B^(-1) [A_B |A_N] - [underline(c)_B^T|underline(c)_B^N] eq [underline(c)_B^T|underline(c)_B^T A_B^(-1) A_N] -[underline(c)_B^T|underline(c)_B^N] eq $
$ eq [underline(c)_B^T - underline(c)_B^T |underline(c)_B^T A_B^(-1) A_N - underline(c)_N^T] eq [underline(0)| underline(c)_B^T A_B^(-1) A_N - underline(c)_N^T] lt.eq underline(0)^T $
Poichè $underline(c)_B^T A_B^(-1) A_N - underline(c)_N^T lt.eq underline(0)^T$ è la condizione di ottimalità per (P), è verficata l'ammissibilità
- *Ottimalità*:
Il valore della funzione obiettivo duale in $underline(w)^(* T)$ è
$ underline(w)^(* T) underline(b) eq underline(c)_B^T A_B^(-1)underline(b) eq underline(c)_B^T underline(x)_B^* eq underline(c)^T underline(x)^* $
Dal corollario 1 ricaviamo che $ underline(c)^T underline(x)^* eq underline(w)^(* T)underline(b)$ e che $underline(w)^(* T)$ è ottima
\
Dal teorema della dualità forte ricaviamo che, data la base ottima B del primale, è possibile calcolare velocemente la soluzione ottima del duale (D) tramite l'equazione:
$ underline(w)^(* T) eq underline(c)^T_B A_B^(-1) $

- Se (P) è illimitato $arrow.double.r$ (D) non è ammissibile
- Se (P) ha soluzione ottima finita $arrow.double.r.l$ (D) ha soluzione ottima finita e i valori delle loro funzioni obiettivo coincidono
- Se (P) inammisibile $arrow.double.r$ (D) illimitato o inammisibile

#pagebreak()

== Teorema dello Scarto Complementare
Consideriamo la coppia di problemi (D) e (P) in forma canonica e trasformiamoli in forma standard
- (P)
$ min underline(c)^T underline(x) $
$ A underline(x) gt.eq underline(b) $
$ underline(x) gt.eq underline(0) $
Diventa
$ min underline(c)^T underline(x) $
$ A underline(x) - I underline(s) eq underline(b) $
$ underline(x) gt.eq underline(0) $
$ underline(s) gt.eq underline(0) $

- (D)
$ max underline(b)^T underline(w) $
$ A underline(w)^T lt.eq underline(c) $
$ underline(w) gt.eq underline(0) $
Diventa
$ max underline(b)^T underline(w) $
$ A underline(w)^T + I underline(v) eq underline(c) $
$ underline(w) gt.eq underline(0) $
$ underline(v) gt.eq underline(0) $
Ad ogni variabile di (P) è associato un vincolo di (D) e quindi la
corrispondente variabile di slack/surplus e viceversa \
- *Teorema della Slackness Complementare*:
Data la coppia di soluzioni $underline(x)$ e $underline(w)$ rispettivamente ammissibili per (P) e (D), $underline(x)$ e $underline(w)$ sono ottime per (P) e (D) se e solo se
$ s_J w_J eq (underline(a)^j underline(x) - b_j)w_j eq 0, space j eq 1,...,m $
$ v_i x_i eq (c_i - underline(a)_i^T underline(w))x_i eq 0, space i eq 1,...,n $
Con $underline(a)^j$ è la j-esima riga di A e $underline(a)_i$ è la i-esima colonna di A
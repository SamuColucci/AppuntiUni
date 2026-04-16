#set page(paper: "a5")
#set heading(numbering: "1.1")
#set text(lang: "ita")
#set page(numbering: "1")
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#align(center)[
  #block(text(weight: "bold", 2em)[Espressioni e Linguaggi Regolari])
  #v(1em)
]

#outline(
  title: [Indice],
  depth: 2,
)

#pagebreak()
= Espressioni Regolari
== 00 Come fattore
$ E eq (0 union 1)^*0 0 (0 union 1)^* $
== b Posizioni dispari
$ E eq (b(a union b))^* union (b(a union b))^*b $ 
== Numero dispari di 1
$ E eq 0^*1(0 union 1 0^* 1)^* eq (0 union 1 0^* 1)^*1 0^* $
== Non contiene 001 come fattore
$ E eq (1 union 0 1)^*0^* $
== Numero pari di B
$ E eq (a union b a^* b)^* $

#pagebreak()
= Linguaggi Regolari
== *${a^n b^n|n gt.eq 0}$*
Non è regolare
- Pumping Lemma con $s eq a^p b^p$ e $y eq a^m$ ed $i eq 2$
== *${w in {0,1}^*||w|_0 eq |w|_1}$*
Non è regolare
- Pumping Lemma con $s eq 0^p 1^p$ e $y eq 0^m$ ed $i eq 0$
== *${0^i 1^j| i eq.not j, i,j gt.eq 0}$*
Non è regolare
- Per assurdo sia $L eq {0^i 1^j| i eq.not j, i,j gt.eq 0} in "REG"$
Sia $M eq {0^i 1^j|i,j gt.eq 0}in "REG"$
\
Abbiamo che $M - L eq{0^i 1^i| i gt.eq 0} in.not "REG"$
\
Ma per la proprietà di chiusura rispetto alla differenza dovrebbe stare in REG, assurdo

== *${a^n a^n | n gt.eq 0}$*
Regolare, essendo $E eq (a a)^*$

== *${0^i 1^j| i gt j}$*
Non è regolare
- Pumping Lemma con $s eq 0^(p+1) 1^p$ e $y eq 0^m$ ed $i eq 0$

== *${w w | w in {0,1}^*}$*
Non è regolare
- Pumping Lemma con $s eq 0^p 1 0^p 1$ e $y eq 0^m$ ed $i eq 0$

== *${a^n b^m | n,m gt.eq 0, n lt m}$*
Non è regolare
- Pumping Lemma con $s eq a^p b^(p+1)$ e $y eq a^m$ ed $i eq 2$

== *${x c x | x in {a,b}^*}$*
Non è regolare
- Pumping Lemma con $s eq a^p c a^p$ e $y eq a^m$ ed $i eq 2$

== *${w w | w in {a,b}^*} inter {a}^*$*
$ {w w | w in {a,b}^*} inter {a}^* eq {a^(2n)| n gt.eq 0} $
Regolare, $E eq (a a)^*$

== *${a^i b a^j | i eq.not j, i,j gt.eq 0}$*
Non è regolare
- Chiusura, supponendo ${a^i b a^j | i eq.not j, i,j gt.eq 0} in "REG"$
$ {a^i b a^i |  i gt.eq 0} in.not "REG" $
Consideriamo 
$ {a^i b a^j |i,j gt.eq 0} in "REG" $
$ {a^i b a^j |i,j gt.eq 0} - {a^i b a^j |i eq.not j, i,j gt.eq 0 } eq {a^i b a^i |  i gt.eq 0} in.not "REG" $
Assurdo, dato che per la chiusura del complemento dovrebbe essere regolare, ma ${a^i b a^i |  i gt.eq 0} in.not "REG"$

== *${a^i b a^i| i lt 4}$*
Regolare, essendo insieme finito
== *${0^k w 0^k | k gt 0, w in {0,1}^*}$*
Regolare, $E eq 0 0^* (0 union 1)^* 0 0^* eq 0 (0 union 1)^* 0$

== *${a^i b a^j| i-j lt 4}$*
Considero unione dei 4 casi
- ${a^i b^i|i gt.eq 0} union $
- ${a^(i+1)= b^i|i gt.eq 0} union $
- ${a^(i+2) b^i|i gt.eq 0} union $
- ${a^(i+3) b^i|i gt.eq 0}$
- Pumping Lemma con $s eq a^(p+3) b^p$ e $y eq a^m$ ed $i eq 2$

== *${a^i b a^j| i+j lt 4}$*
Regolare perchè finito

== *${0^k 1^n 0^j | k-j lt 4, n gt.eq 0}$*
Non è regolare
- Pumping Lemma con $s eq 0^(p+3) 1 0^p$ e $y eq 0^m$ ed $i eq 2$

== *${v v^R| v^R "è il reverse di" v,v in {0,1}^*}$*
Non è regolare
- Pumping Lemma con $s eq 0^p 1 0^p 1$ e $y eq a^m$ ed $i eq 0$

== ${"Palindrome"}$
Non è regolare
- Pumping Lemma con $s eq a^p b a^p$ e $y eq 0^m$ ed $i eq 2$

== ${"Non Palindrome"}$
Non è regolare per la proprietà di chiusura rispetto al complemento, essendo ${"Palindrome"} in.not "REG"$, nemmeno il suo complemento può essere regolare

== *${a^i b^j c^k | j eq 2k, i,j,k gt.eq 0}$*
Posso considerare ${a^i b^(2 k) c^k | i,j,k gt.eq 0}$
Non è regolare
- Pumping Lemma con $s eq b^(2 p) c^p$ e $y eq b^m$ ed $i eq 0$

== *${a^i b^j c^k | j+k "pari", i,j,k gt.eq 0}$*
Regolare
- Considero il caso in cui sono entrambi pari e il caso in cui sono entrambi dispari e faccio unione
$ E eq (a^*(b b)^*(c c)^*) union (a^*(b b)^* b (c c)^* c) $
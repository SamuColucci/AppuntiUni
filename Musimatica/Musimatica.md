# 1.1 Capitolo 1: Nozioni di base
## 1.1 Natura e Fisica del Suono

Il suono è la percezione uditiva prodotta dalla **vibrazione** di un corpo, che genera onde di pressione trasmesse attraverso un mezzo elastico (come l'aria).

Le onde sonore non si propagano istantaneamente. La loro velocità dipende dal mezzo e dalle condizioni ambientali:
* **Velocità standard:** Circa **343,1 m/s** (1235 km/h) a 20°C in aria.
* **Effetto Temperatura:** La velocità aumenta all'aumentare della temperatura.
* **Formula lineare:** $$v \approx 331,3 + 0,6 \cdot t$$
  *(dove $t$ è la temperatura in gradi Celsius; la velocità aumenta di 0,6 m/s per ogni grado).*

---

La percezione del suono dipende da tre proprietà fondamentali dell'onda:

1.  **Frequenza (Altezza):**
    * Determina se un suono è **grave** o **acuto**.
    * Misurata in **Hertz (Hz)** (cicli al secondo).
    * *Udito umano:* range 17 Hz – 17.000 Hz.
    * *Pianoforte:* range 27 Hz – 4.000 Hz.

2.  **Intensità (Volume):**
    * Determina il **volume** del suono percepito.
    * Misurata in **Decibel (dB)**.
    * *Esempi:* Biblioteca (40 dB), Pianoforte (90 dB), Soglia massima (120 dB).

3.  **Forma dell'onda (Timbro):**
    * Determina il "colore" del suono e permette di distinguere la fonte (es. violino vs sassofono).

## 1.2 Le Note Musicali

Le note sono gli elementi costruttivi fondamentali della musica. Si distinguono dai suoni generici per la loro "gradevolezza" e precisione fisica.

* **Rumore:** Un suono percepito come sgradevole.
* **Nota:** Un suono gradevole, tipicamente prodotto da strumenti musicali, utilizzato come unità di base per la composizione.

Oltre alle proprietà fisiche dell'onda (altezza, volume, timbro), una nota è definita dalla sua **dimensione temporale**:
1.  **Inizio:** L'istante esatto in cui il suono comincia.
2.  **Durata:** L'intervallo di tempo per cui il suono si protrae, determinandone la fine.

> [!NOTE]
> In ambito informatico/algoritmico, una nota viene quindi trattata come un **oggetto** che possiede parametri di frequenza, ampiezza, timbro e coordinate temporali (start-time e duration).
---

### 1.2.1 Altezza e Frequenza

L'altezza è la caratteristica che distingue i suoni **gravi** (bassa frequenza) da quelli **acuti** (alta frequenza). È il parametro cardine per la melodia e l'armonia.

* **Sottoinsieme di frequenze:** Anche se le frequenze sono infinite, la musica ne usa solo alcune.
* **Standard:** La nota **La4** (centrale sul pianoforte) è fissata a **440 Hz**.
* **Il Pianoforte:** Ha 88 tasti, ognuno associato a una frequenza specifica, suddivisi in **ottave** (gruppi di 12 note).

* **Risoluzione:** L'orecchio umano fatica a distinguere frequenze troppo vicine (es. 440 Hz vs 441 Hz).
* **Tipi di Orecchio:**
    * **Assoluto:** Capacità di identificare la frequenza esatta di una nota senza riferimenti.
    * **Armonico:** Capacità di isolare le singole note in un accordo (suoni simultanei).
    * **Relativo:** Capacità di identificare l'intervallo (distanza) tra due note.

L'intervallo è la "distanza" tra due suoni, espressa matematicamente come **rapporto tra le frequenze** ($f_2 / f_1$).

1. **Unisono (Rapporto 1:1):** Due suoni con la stessa frequenza ($f/f = 1$). Massima consonanza.
2. **Ottava (Rapporto 2:1):** Un suono con frequenza doppia rispetto a un altro ($2f/f = 2$). 
    * Viene percepita come "la stessa nota" ma più acuta.
    * È l'**assioma** del sistema musicale: note in rapporto di ottava sono considerate equivalenti.



Partendo da una frequenza di riferimento $f_r$, si possono calcolare tutte le sue ottave (superiori o inferiori) con la formula:
$$f_n = f_r \cdot 2^n$$
* Dove $n$ è un numero intero ($Z$).
* $n > 0$: ottave più acute.
* $n < 0$: ottave più gravi.
* $n = 0$: unisono.

> [!TIP]
> **Curiosità sull'etimologia:** Il termine "ottava" deriva dal fatto che nelle scale più comuni (composte da 7 suoni), il suono che raddoppia la frequenza è l'8° della sequenza.

### 1.2.2 Timbro

Il timbro è la caratteristica che permette di distinguere due suoni che hanno la stessa altezza (frequenza) e la stessa intensità, ma provengono da sorgenti diverse.


* **Identità sonora:** È ciò che ci permette di capire se una nota è suonata da un **violino**, un **pianoforte** o un **flauto**.
* **Variazioni nello stesso strumento:** Il timbro può cambiare anche in base alla tecnica esecutiva (es. corde "pizzicate" vs "suonate con l'arco" in un violino).


* **L'Oscilloscopio:** È lo strumento che permette di visualizzare graficamente il suono. 
* **Processo:** Le variazioni di pressione dell'aria vengono convertite in segnali elettrici (tramite un microfono) e poi visualizzate come **forme d'onda**.
* **Forma dell'onda:** Ogni strumento ha una forma d'onda peculiare (sinusoidale, quadra, a dente di sega o forme più complesse). La complessità della forma d'onda determina la ricchezza del timbro.

> [!TIP]
> **Concetto chiave per l'informatica musicale:** > In sintesi digitale, il timbro viene manipolato agendo sulla "forma" del segnale o aggiungendo armoniche alla frequenza fondamentale.

### 1.2.3 Durata

La dimensione temporale trasforma un insieme di suoni in una composizione strutturata. Ogni nota non è solo una frequenza, ma un evento con un'estensione nel tempo.

Una nota è definita da due momenti precisi:
1. **Inizio (Start-time):** L'istante in cui la nota comincia a suonare.
2. **Fine:** L'istante in cui il suono cessa.
* **Durata:** L'intervallo di tempo tra l'inizio e la fine.

Le note possono essere pensate come funzioni che associano un'altezza a un intervallo di tempo. Questo permette di visualizzare la musica su un piano cartesiano:
* **Asse X (Ascisse):** Rappresenta il **Tempo**.
* **Asse Y (Ordinate):** Rappresenta la **Frequenza** (Altezza).

In questo sistema, ogni nota diventa un **segmento orizzontale**:
* La **lunghezza** del segmento indica la durata.
* La **posizione orizzontale** indica quando la nota viene suonata.
* La **posizione verticale** indica quanto la nota è acuta o grave.

> [!TIP]
> **Piano Roll:** Questa rappresentazione cartesiana è esattamente ciò che nei software musicali (DAW) viene chiamato "Piano Roll", lo strumento principale per programmare musica al computer.

### 1.2.4 Nomi delle Note e Alterazioni

Per identificare le frequenze all'interno di un'ottava, il sistema musicale assegna dei nomi specifici alle note.

Esistono due standard principali per nominare le note:
* **Notazione Latina:** Do, Re, Mi, Fa, Sol, La, Si.
* **Notazione Anglosassone:** Utilizza le lettere dalla A alla G.

| A | B | C | D | E | F | G |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **La** | **Si** | **Do** | **Re** | **Mi** | **Fa** | **Sol** |

Oltre alle 7 note naturali, esistono altre **5 note** ottenute tramite le **alterazioni**, per un totale di 12 note per ottava:
1.  **Diesis (# o ]):** Innalza la nota di un semitono.
2.  **Bemolle (b o [):** Abbassa la nota di un semitono.

Le note alterate si trovano tra:
* Do - Re → **Do# / Reb**
* Re - Mi → **Re# / Mib**
* Fa - Sol → **Fa# / Solb**
* Sol - La → **Sol# / Lab**
* La - Si → **La# / Sib**

> [!IMPORTANT]
> **Enarmonia:** Note con nomi diversi ma stessa frequenza (es. Do# e Reb) sono dette note enarmoniche.

Nella pratica musicale si possono usare anche:
* **Doppio Diesis (x o ]]):** Alza la nota di due semitoni (es. Do]] = Re).
* **Doppio Bemolle (bb o [[):** Abbassa la nota di due semitoni (es. Sol[[ = Fa).

Ogni tasto del pianoforte (88 in totale) è associato a:
1.  Una **frequenza** specifica (es. La4 = 440 Hz).
2.  Un **codice MIDI** unico (un numero intero che vedremo nel Capitolo 3).

### 1.2.5 Tono e Semitono

Il tono e il semitono sono le unità di misura fondamentali per calcolare la distanza tra due note nel sistema musicale occidentale.

**Semitono**: 
* **Definizione:** È la distanza minima tra due note adiacenti nel sistema temperato.
* **Sul Pianoforte:** Corrisponde alla distanza tra un tasto e quello immediatamente successivo (bianco o nero che sia).
* **Esempi:** - Tra **Mi** e **Fa** (due tasti bianchi adiacenti senza tasto nero in mezzo).
  - Tra **La** e **La#** (un tasto bianco e il tasto nero subito dopo).
* **Codice MIDI:** Corrisponde a una differenza di **1** nell'identificativo MIDI ($i$ e $i+1$).

**Tono**:
* **Definizione:** È composto dall'unione di due semitoni ($T = s + s$).
* **Esempi:**
  - Tra **La** e **Si** (perché in mezzo c'è il La#).
  - Tra **Mi** e **Fa#** (perché si saltano due posizioni).
* **Codice MIDI:** Corrisponde a una differenza di **2** nell'identificativo MIDI ($i$ e $i+2$).


Queste unità servono a definire la "geometria" delle scale. Ad esempio, la scala maggiore è costruita sulla sequenza specifica:
**T - T - s - T - T - T - s**
## 1.3 Note in un'ottava

In questo paragrafo si analizza come l'infinita gamma di frequenze sonore venga discretizzata nel sistema musicale occidentale per creare un insieme finito e utilizzabile di note.

**La suddivisione delle frequenze**:
* **Infinite vs Discrete:** Sebbene fisicamente esistano infinite frequenze, il sistema musicale ne seleziona solo un sottoinsieme specifico.
* **Motivazione:** È difficile per l'orecchio umano distinguere note con frequenze troppo vicine tra loro.
* **Standard:**
    * L'ottava è divisa in **12 note** (più la tredicesima che è l'ottava della prima).
    * La frequenza di riferimento è il **La = 440 Hz**.

**Calcolo delle Frequenze (Sistema Temperato)**:
Dato che l'ottava corrisponde a un raddoppio di frequenza ($2f$) e che è divisa in 12 intervalli uguali (semitoni), la formula per calcolare le frequenze è esponenziale.

Data una frequenza di riferimento $f_R$:
$$f_k = f_R \cdot \sqrt[12]{2}^k \approx f_R \cdot 1,05946^k$$
Dove:
* $k$ è il numero di semitoni di distanza dalla nota di riferimento.
* $\sqrt[12]{2} \approx 1.05946$ è il fattore moltiplicativo costante del semitono.

*Esempio:*
Il primo semitono dopo il La (440 Hz) è il La# (o Sib):
$$f_1 = 440 \cdot 1,05946 \approx 466 \text{ Hz}$$

**Tabella delle Frequenze e MIDI**:
Il testo riporta una tabella dettagliata che associa a ogni nota:
1.  **Nome:** (es. C, C#, D...)
2.  **Ottava:** (da 0 a 8).
3.  **Codice MIDI:** Un numero intero univoco (es. La4 = 69).
4.  **Frequenza:** Il valore in Hz (es. La4 = 440.000 Hz).

*Range del Pianoforte:* Va dalla nota **La0** (MIDI 21, 27.5 Hz) fino al **Do8** (MIDI 108, 4186 Hz).

**Nomenclatura**:
Vengono presentati i due sistemi principali di denominazione:
* **Latino:** Do, Re, Mi, Fa, Sol, La, Si.
* **Anglosassone:** C, D, E, F, G, A, B.

**Le Alterazioni**:
Oltre alle 7 note "naturali", le altre 5 si ottengono tramite alterazioni:
* **Diesis ($\sharp$ o ]):** Alza la nota (frequenza successiva).
* **Bemolle ($\flat$ o [):** Abbassa la nota (frequenza precedente).
* **Doppie alterazioni:** Doppio diesis (]]) e doppio bemolle ([[) spostano di due semitoni (un tono intero).

*Esempio di equivalenza (Enarmonia):* Do diesis (C#) suona uguale a Re bemolle (Db).

## 1.4 Tono e Semitono (Definizione preliminare)
* **Semitono (s):** Distanza tra una nota $i$ e la successiva $i+1$ (es. Mi-Fa, o La-La#). È l'intervallo minimo.
* **Tono (T):** Distanza tra una nota $i$ e la nota $i+2$ (es. Do-Re, o Mi-Fa#). Corrisponde a due semitoni.

## 1.5 Rappresentazione della Musica

Per visualizzare altezza e durata delle note, il sistema musicale utilizza un sistema grafico standardizzato che funziona come un piano cartesiano "semplificato".

### 1.5.1 Il Pentagramma
È composto da **5 linee parallele**. Funziona così:
* **Asse Verticale:** Rappresenta l'altezza (più in alto è la nota, più è acuta).
* **Asse Orizzontale:** Rappresenta lo scorrere del tempo (da sinistra a destra).
* **Tagli Addizionali:** Linee corte usate per scrivere note che si trovano sopra o sotto le 5 linee principali (es. Do4 sotto il rigo).




---

### 1.5.2 Chiavi Musicali
La chiave determina l'altezza di riferimento (l'ottava) delle note sul pentagramma:
* **Chiave di Violino (Sol):** Usata per suoni medio-acuti. La seconda linea dal basso è il **Sol4** (MIDI 67).
* **Chiave di Basso (Fa):** Usata per suoni gravi.
* **Funzione informatica:** La chiave agisce come una "traslazione" o un offset sulle frequenze visualizzate.

---

### 1.5.3 Rappresentazione della Durata
Le durate sono espresse come frazioni di un intero (la **Semibreve**).

| Nome | Valore (Frazione) | Simbolo Grafico |
| :--- | :---: | :--- |
| **Semibreve** (Whole) | 1 | Cerchio vuoto |
| **Minima** (Half) | 1/2 | Cerchio vuoto con gambo |
| **Semiminima** (Quarter) | 1/4 | Cerchio pieno con gambo |
| **Croma** (Quaver) | 1/8 | Cerchio pieno con una cediglia |
| **Semicroma** (Semiquaver) | 1/16 | Cerchio pieno con due cediglie |



**Il Punto di Valore:**
Un punto dopo la nota aumenta la sua durata del **50%**.
* Esempio: Semiminima col punto = $1/4 + 1/8 = 3/8$.
* Due punti aumentano del 50% + 25% (es. $1/4 + 1/8 + 1/16$).

---

### 1.5.4 Metrica e Tempo
La musica è divisa in **battute** (separate da barre verticali).

Rappresentata come una frazione (es. **3/4**):
* **Numeratore (Sopra):** Quanti elementi ci sono in ogni battuta (es. 3 elementi).
* **Denominatore (Sotto):** La durata di ogni elemento (es. da 1/4).

La durata reale (in secondi) dipende dai **BPM** (Battiti Per Minuto).
* **Calcolo:** Se la velocità è 132 crome al minuto, una croma dura $60 / 132 \approx 0,45$ secondi.

> [!TIP]
> **Analogia Informatica:**
> Il pentagramma è l'interfaccia grafica (GUI), mentre i BPM sono il "clock" del sistema che determina la velocità di esecuzione dei dati.

## 1.6 Scale Musicali

Una scala è una sequenza di suoni ad altezza crescente che collegano una nota alla sua ottava superiore. Può essere vista come una scala fisica dove i "gradini" (**gradi**) hanno "alzate" (**intervalli**) differenti.

Da un punto di vista matematico, una scala è identificata da una sequenza di $n$ interi positivi $\langle s_1, s_2, \dots, s_n \rangle$ (espressi in semitoni) la cui somma è esattamente **12**.

Una scala musicale è identificata da una sequenza di $n$ interi positivi, $\langle s_1, s_2, \dots, s_n \rangle$, tali che la somma degli intervalli corrisponda esattamente a un'ottava (12 semitoni):

$$\sum_{i=1}^{n} s_i = 12$$

### 1.6.1 Scala maggiore e scale diatoniche
La scala maggiore è la scala diatonica costruita sui tasti bianchi partendo dal Do.
* **Sequenza intervalli:** $\langle 2, 2, 1, 2, 2, 2, 1 \rangle$ (TTsTTTs).
* **Semitoni naturali:** Si trovano tra il III-IV grado (Mi-Fa) e tra il VII-VIII grado (Si-Do).
* **Scale Diatoniche:** Esistono 7 scale diatoniche, ottenute tramite "shift circolari" della sequenza della scala maggiore.



### 1.6.2 Scala minore melodica
Parte dalla nota La e ha sequenza $\langle 2, 1, 2, 2, 1, 2, 2 \rangle$ (TsTTsTT).
* **Caratteristica:** In senso ascendente, il VI e VII grado vengono innalzati di un semitono per favorire la melodia.

### 1.6.3 Scala minore armonica
Presenta la sequenza $\langle 2, 1, 2, 2, 1, 3, 1 \rangle$ (TsTTs3s).
* **Nota bene:** Contiene un intervallo di 3 semitoni (seconda eccedente) e rimane identica sia in senso ascendente che discendente.

### 1.6.4 Scala cromatica
Formata da tutti i 12 suoni dell'ottava.
* **Sequenza:** $\langle 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 \rangle$. Ogni nota dista esattamente un semitono dalla successiva.

### 1.6.5 Altre scale
* **Pentatonica Maggiore:** 5 suoni, intervalli $\{2, 3, 2, 2, 3\}$. (Es: i 5 tasti neri partendo dal Do#).
* **Pentatonica Minore:** 5 suoni, intervalli $\{3, 2, 2, 3, 2\}$. (Es: i 5 tasti neri partendo dal La#).
* **Esatonale:** 6 suoni, intervalli $\{2, 2, 2, 2, 2, 2\}$. Usata molto da Debussy.
* **Blues:** Sequenza $\langle 3, 2, 1, 1, 3, 2 \rangle$.



### 1.6.7 Gradi della scala
Nelle scale a 7 suoni, ogni posizione ha un nome e una funzione specifica. I gradi si indicano con numeri romani (**I, II, III...**).

| Grado | Nome | Funzione |
| :--- | :--- | :--- |
| **I** | **Tonica** | La nota fondamentale che dà il nome alla tonalità. |
| **V** | **Dominante** | Il grado più importante dopo la tonica. |

> [!IMPORTANT]
> **Tonica e Dominante** sono i pilastri della musica occidentale; gran parte della musica popolare è costruita esclusivamente sull'alternanza degli accordi basati su questi due gradi.

## 1.7 Scale e trasposizione

Il sistema a **12 semitoni** è stato progettato per permettere la **trasposizione**: la possibilità di costruire una scala (es. la scala maggiore) partendo da una qualsiasi delle 12 note disponibili, mantenendo invariata la struttura degli intervalli.

### 1.7.1 L'equivalenza delle scale
Qualsiasi nota può essere la "Tonica" di una scala maggiore. Per mantenere la sequenza $T - T - s - T - T - T - s$, è necessario utilizzare le **alterazioni** (# o b).
* **Esempio (Scala di Re Maggiore):** Partendo dal Re, per avere un tono dopo il Mi, dobbiamo usare il **Fa#** (non il Fa naturale). La sequenza diventa:
  `Re - Mi - Fa# - Sol - La - Si - Do# - Re`

### 1.7.2 Il Circolo delle Quinte
Le 12 scale maggiori possono essere organizzate in un cerchio in base al numero di alterazioni che possiedono. Ci si sposta per intervalli di **quinta giusta** (7 semitoni):
* **Verso destra (Diesis #):** Ogni salto di quinta aggiunge un diesis.
  - Do (0 #) → Sol (1 #) → Re (2 #) → La (3 #) ...
* **Verso sinistra (Bemolli b):** Ogni salto di quinta discendente aggiunge un bemolle.
  - Do (0 b) → Fa (1 b) → Sib (2 b) → Mib (3 b) ...



### 1.7.3 Armatura di Chiave
Per evitare di scrivere le alterazioni accanto a ogni singola nota durante il brano, si utilizzano le **alterazioni in chiave**.
* Vengono scritte all'inizio del rigo, subito dopo la chiave.
* Indicano automaticamente quali note devono essere alterate in tutto il pezzo (a meno di indicazioni contrarie).

> [!TIP]
> **Definizione di Tonalità:** Stabilire la tonica significa stabilire l'intera scala. La tonalità è l'ambiente musicale definito da quella specifica scelta di note e alterazioni.

## 1.8 Intervalli musicali

L'intervallo è la distanza tra due note e viene misurato contando i gradi della scala coinvolti, includendo sia la nota di partenza che quella di arrivo.

### 1.8.1 Calcolo e Direzione
La misura di un intervallo dipende dalla direzione (ascendente o discendente) e dalla ciclicità della scala:
* **Esempio Ascendente:** Da Do a Mi → Do(1), Re(2), Mi(3) = **Intervallo di Terza**.
* **Esempio Discendente:** Da La a Re → La(1), Sol(2), Fa(3), Mi(4), Re(5) = **Intervallo di Quinta**.



### 1.8.2 Qualità degli Intervalli
La distanza reale in semitoni determina la "qualità" dell'intervallo. Gli intervalli si dividono in due categorie principali:

1. **Intervalli Giusti:** Non cambiano tra scala maggiore e minore.
   * Unisono, 4ª, 5ª e 8ª.
2. **Intervalli Maggiori/Minori:** Cambiano a seconda della scala.
   * 2ª, 3ª, 6ª e 7ª. Sono **maggiori** nella scala maggiore e **minori** nella scala minore.

**Modificazioni:**
* Un intervallo aumentato di un semitono è detto **eccedente** (o aumentato).
* Un intervallo diminuito di un semitono è detto **diminuito**.

### 1.8.3 Tabella degli Intervalli (Sintesi in semitoni)
Questa tabella è fondamentale per la logica algoritmica, poiché associa il nome musicale al numero esatto di semitoni MIDI.

| Intervallo | Semitoni | Esempio |
| :--- | :---: | :--- |
| **2ª Minore** | 1 | Do - Reb |
| **2ª Maggiore** | 2 | Do - Re |
| **3ª Minore** | 3 | Do - Mib |
| **3ª Maggiore** | 4 | Do - Mi |
| **4ª Giusta** | 5 | Do - Fa |
| **4ª Eccedente / 5ª Diminuita** | 6 | Do - Fa# / Do - Solb |
| **5ª Giusta** | 7 | Do - Sol |
| **6ª Minore** | 8 | Do - Lab |
| **6ª Maggiore** | 9 | Do - La |
| **7ª Minore** | 10 | Do - Sib |
| **7ª Maggiore** | 11 | Do - Si |
| **Ottava Giusta** | 12 | Do - Do |

## 1.9 Melodia e armonia

Melodia e armonia rappresentano i due "assi cartesiani" attraverso i quali si sviluppa un brano musicale.

### 1.9.1 Melodia (Dimensione Orizzontale)
* **Definizione:** È una successione temporale di note. 
* **Funzione:** Rappresenta lo sviluppo nel tempo di un canto o di un tema. In un sistema cartesiano, si muove lungo l'asse delle ascisse (tempo).

### 1.9.2 Armonia (Dimensione Verticale)
* **Definizione:** È l'insieme di note suonate simultaneamente.
* **Funzione:** Le note suonate insieme formano un **accordo**. In un sistema cartesiano, l'armonia si analizza lungo l'asse delle ordinate (frequenze) in un istante preciso.



### 1.9.3 Interazione tra le parti
Un brano musicale è spesso costituito da più linee melodiche che procedono parallelamente:
1. **Analisi Verticale:** Se "tagliamo" il brano in un istante esatto di tempo, l'insieme delle note presenti in tutte le linee forma l'accordo di quel momento.
2. **Linee Melodiche:** Il numero di linee è variabile.
   * **Linea Principale:** Solitamente la più acuta, porta il "tema" o la melodia principale che deve risaltare.
   * **Linee di Accompagnamento:** Servono principalmente a completare l'armonia (creare gli accordi), pur mantenendo una loro logica melodica.

> [!NOTE]
> **Semplificazione:** Sebbene in teoria ogni "fetta verticale" sia un accordo, nella realtà alcune note (note di passaggio, ritardi) possono non far parte dell'accordo principale, rendendo l'analisi più complessa.

## 1.10 Accordi

Un accordo è l'esecuzione simultanea di almeno **3 note**. Rappresenta l'aspetto verticale della musica (Armonia).

### 1.10.1 Le Triadi
Le triadi sono gli accordi più semplici, formati da 3 note: la **Fondamentale** (nota di partenza), la **Terza** e la **Quinta**. Esistono 4 tipi principali di triadi, che differiscono per la distanza in semitoni tra le note:

| Tipo di Accordo | Intervalli Successivi | Distanze dalla Fondamentale | Esempio (su Do) |
| :--- | :---: | :---: | :--- |
| **Maggiore** | 3ª Maggiore + 3ª Minore | **+4, +3** (Tot: 7) | Do - Mi - Sol |
| **Minore** | 3ª Minore + 3ª Maggiore | **+3, +4** (Tot: 7) | Do - Mib - Sol |
| **Diminuito** | 3ª Minore + 3ª Minore | **+3, +3** (Tot: 6) | Do - Mib - Solb |
| **Aumentato** | 3ª Maggiore + 3ª Maggiore | **+4, +4** (Tot: 8) | Do - Mi - Sol# |



---

### 1.10.2 I Rivolti
L'ordine delle note in un accordo può essere cambiato senza mutarne la natura (es. suonare Mi-Sol-Do invece di Do-Mi-Sol). Questa operazione si chiama **rivolto**.

1. **Posizione Fondamentale:** La nota più grave è la fondamentale (es. **Do**-Mi-Sol).
2. **Primo Rivolto:** La nota più grave è la terza (es. **Mi**-Sol-Do).
3. **Secondo Rivolto:** La nota più grave è la quinta (es. **Sol**-Do-Mi).

[Image showing the three positions of a triad: fundamental, 1st inversion, and 2nd inversion]

---

### 1.10.3 Accordi di 4 suoni (Settima)
Aggiungendo una quarta nota a distanza di una settima dalla fondamentale, si ottengono gli **accordi di settima**. Questi sono molto usati per creare tensione armonica (specialmente la "Settima di Dominante" sul V grado della scala).

> [!TIP]
> **Visione Algoritmica:**
> Per un computer, un accordo è un **set di intervalli**. 
> Se definisci `Maggiore = [0, 4, 7]`, l'algoritmo può costruire un accordo maggiore partendo da qualsiasi nota MIDI $n$ semplicemente calcolando $[n, n+4, n+7]$.

## 1.11 Forme musicali

La **forma musicale** indica la struttura della composizione e determina il modo in cui gli elementi musicali (come il tema) vengono organizzati nel tempo.

* **Forma Sonata:** Una struttura complessa divisa in 3 sezioni:
    1.  **Esposizione:** Presenta il tema principale, un ponte modulante (cambio di tonalità), un secondo tema e una coda.
    2.  **Sviluppo:** Elaborazione creativa del materiale tematico.
    3.  **Ripresa:** Ritorno dei temi, solitamente entrambi nella tonalità di impianto.

---

### 1.11.1 Musica Pop
* **Struttura:** Basata sull'alternanza di **Strofa (S)** e **Ritornello (R)**. 
    * Sequenze comuni: `SSRSSR` o `ISRSR` (dove **I** è l'Introduzione).
* **Organizzazione temporale:** Utilizzo di frasi standard di **8 battute** (es. il tema di *Memory*) o 16 battute (es. *'O sole mio*).
* **Semplificazione:** Viene spesso rappresentata come "melodia principale + accordi". L'arrangiamento finale definisce la complessità del brano.
* **Giro di Do:** Una sequenza armonica standard (I - vi - IV/ii - V) usata in innumerevoli brani (es. *Stand by me*, *Sapore di sale*).

---

### 1.11.2 Corale
* **Definizione:** Forma della musica classica pensata per un coro a **4 voci** (linee melodiche simultanee).
* **Le 4 Voci:**
    1.  **Soprano** (linea più acuta)
    2.  **Contralto** (medio-acuta)
    3.  **Tenore** (medio-grave)
    4.  **Basso** (linea più grave)

---

### 1.11.3 Regole sul movimento delle voci
Regole di "buona pratica" della musica classica per gestire più linee melodiche simultanee.

#### Moto delle parti
Descrive come si muovono due voci l'una rispetto all'altra:
* **Moto Parallelo (o Retto):** Entrambe le voci salgono o scendono insieme.
* **Moto Contrario:** Una voce sale e l'altra scende.
* **Moto Obliquo:** Una voce si muove mentre l'altra resta ferma.

#### Errori nel movimento (Contrattempo)
Si devono evitare effetti sgradevoli legati alle **consonanze perfette** (unisono, 5ª, 8ª):
* **Errori reali:** Due voci che procedono per moto parallelo mantenendo lo stesso intervallo di quinta o di ottava (quinte/ottave parallele).
* **Consonanze perfette:** Dovrebbero essere raggiunte preferibilmente per **grado congiunto** (spostamento di un solo tono/semitono) in almeno una delle voci.

#### Salti melodici vietati (nella singola linea)
* **Da evitare:** Salti eccedenti e diminuiti, salti di 7ª (maggiore o minore) e sequenze di due salti che sommano un intervallo di 7ª.
* **Salto di 8ª:** Consentito, ma la melodia deve cambiare direzione subito dopo il salto.
## 1.12 Successioni armoniche tipiche

In musica non esistono regole ferree, ma la pratica consolidata (come riportato da Piston) permette di individuare dei movimenti degli accordi più probabili e "naturali" per l'orecchio.

### 1.12.1 Successioni nel Modo Maggiore
Ecco i gradi che solitamente seguono un determinato accordo:
- **I (Tonica):** seguito da **IV** o **V**, talvolta **VI**; raramente da II o III.
- **II (Sottodominante):** seguito da **V**, talvolta IV o VI; raramente da I o III.
- **III (Mediante):** seguito da **VI** o **IV**; raramente da I, II o V.
- **IV (Sottodominante):** seguito da **V**, **I** o **II**; raramente da III o VI.
- **V (Dominante):** seguito da **I**, **IV** o **VI**; raramente da II o III.
- **VI (Sottodominante):** seguito da **II** o **V**, talvolta III o VI; raramente da I.
- **VII (Sensibile):** seguito da **I** o **III**, talvolta VI; raramente da II, IV o V.

### 1.12.2 Successioni nel Modo Minore
I criteri sono simili al maggiore, con alcune specificità:
- Il **I grado** può essere seguito dalla triade maggiore del **VII**.
- Il **III grado** maggiore può essere seguito dal **VII** maggiore.
- Il **VII grado maggiore** è seguito dal **III**, talvolta dal **VI**.
- Il **VII grado diminuito** risolve sempre sul **I**.

---

### 1.12.3 Le Cadenze principali
Le cadenze sono la "punteggiatura" della musica e definiscono la conclusione di una frase.

- **Cadenza Autentica (V - I):** La risoluzione più forte. Spesso estesa in **II-V-I** o **IV-V-I**.
- **Cadenza Perfetta:** Una cadenza autentica dove i due accordi sono in posizione fondamentale e la tonica è al soprano (chiusura massima).
- **Cadenza Sospesa:** Termina sul **V grado**. Funziona come una "virgola", lasciando il discorso aperto.
- **Cadenza Plagale (IV - I):** Usata spesso come conferma finale dopo una cadenza autentica.
- **Cadenza d'Inganno (V - VI):** La dominante (V) sembra voler andare sul I, ma risolve a sorpresa sul VI grado.

## 1.13 Metriche di valutazione

In questa sezione viene analizzato il rapporto tra la natura formale degli algoritmi e la natura creativa della composizione musicale.

### 1.13.1 Cos'è un Algoritmo?
Un algoritmo è una sequenza definita di istruzioni che trasforma un **input** (istanza di un problema) in un **output** (soluzione). I problemi si dividono generalmente in:
* **Decisionali:** L'output è binario (Sì/No). Esempio: "Il numero x è primo?".
* **Di ricerca:** L'output è una delle possibili soluzioni. Esempio: "Trova il valore massimo in un insieme".
* **Di ottimizzazione:** L'output è la *migliore* soluzione possibile secondo un criterio. Esempio: "Trova la strada più breve tra due città".



### 1.13.2 La Composizione come Problema
Il testo si interroga su quale categoria appartenga la composizione musicale:
1. **Non è un problema decisionale:** La musica non è binaria; esistono infinite sfumature tra una composizione mediocre e un capolavoro.
2. **Difficoltà nella ricerca/ottimizzazione:** Gli algoritmi richiedono problemi matematicamente ben formulati. La musica, invece, manca di una **definizione formale** universale.

### 1.13.3 Il problema della Metrica
Per parlare di ottimizzazione servirebbe una **metrica** (un righello) per stabilire se una composizione è "migliore" di un'altra.
* **Soggettività:** La valutazione musicale è spesso soggettiva o legata al gusto personale.
* **Assenza di criteri formali:** Non esiste un calcolo che possa stabilire se una sinfonia di Beethoven sia "superiore" a una fuga di Bach.

### 1.13.4 Una soluzione possibile: le Regole come Metrica
Nonostante l'assenza di una metrica estetica universale, la musica possiede delle **regole ben formulate** (teoria dell'armonia, contrappunto, strutture formali). 
* **L'Approccio Algoritmico:** Invece di cercare la "bellezza" astratta, gli algoritmi possono utilizzare queste regole teoriche come base per definire una metrica di "correttezza" o "aderenza allo stile".
* **AI e Creatività:** I recenti sviluppi dimostrano come l'uso di procedimenti automatici possa portare a risultati sorprendenti, simulando la creatività attraverso il rispetto di complessi vincoli musicali.

> [!TIP]
> **Punto chiave:** La composizione musicale algoritmica non cerca "la" soluzione perfetta, ma esplora lo spazio delle soluzioni che rispettano determinati vincoli tecnici e stilistici.

# Capitolo 2: Temperamento Equabile

In questo capitolo si analizza il percorso storico e matematico che ha portato alla definizione delle frequenze attuali, partendo dai concetti di consonanza e dalla serie degli armonici.

---

## 2.1 Consonanza e Dissonanza
La percezione dei suoni simultanei si divide in due categorie:
* **Consonanza:** Suoni che producono un effetto gradevole (stabilità).
* **Dissonanza:** Suoni che producono un effetto sgradevole (tensione/separazione).

Sebbene il gusto sia soggettivo e culturale, la consonanza ha una base oggettiva nella **teoria dei suoni armonici** e nei **rapporti matematici semplici**.

---

## 2.2 Suoni Armonici e Ottave
Quando un corpo vibra alla frequenza fondamentale $f$, produce simultaneamente frequenze multiple chiamate **armonici**: $f, 2f, 3f, 4f, 5f, \dots$

### Caratteristiche degli Armonici:
1. **Intensità:** Decresce rapidamente; l'orecchio percepisce principalmente la fondamentale.
2. **Consonanza Fisica:** Il secondo armonico ($2f$) è il suono più consonante in assoluto rispetto alla fondamentale.
3. **Punto di vista Pitagorico:** La consonanza deriva da rapporti tra numeri interi piccoli:
    * **2/1:** Ottava (Metà corda)
    * **3/2:** Quinta Giusta (2/3 della corda)
    * **4/3:** Quarta Giusta (3/4 della corda)



### L'Assioma dell'Ottava
L'intervallo di ottava ($2:1$) è talmente consonante che le note vengono considerate **equivalenti** (hanno lo stesso nome). Questo permette di studiare la teoria musicale concentrandosi su una **singola ottava**, poiché i fenomeni si ripetono proporzionalmente in tutte le altre.

---

## 2.3 Quali suoni utilizziamo all'interno di un'ottava?
All'interno di un'ottava esistono infinite frequenze, ma per fare musica dobbiamo selezionarne un sottoinsieme finito: la **scala**.

* **Problema:** Come scegliere le frequenze "migliori"?
* **Approccio:** In questo capitolo i nomi delle note (Do, Re, Mi...) sono usati in modo indicativo. L'obiettivo è dimostrare come criteri diversi (matematici o fisici) portino a sistemi diversi, fino ad arrivare al **Temperamento Equabile**.


## 2.4 L’aritmetica degli intervalli
Musicalmente, sommare o sottrarre intervalli corrisponde a operazioni moltiplicative sulle loro ampiezze:
* **Somma:** L'ampiezza dell'intervallo totale è il **prodotto** delle ampiezze dei singoli intervalli ($i_3 = i_1 \cdot i_2$).
* **Sottrazione:** Si ottiene **dividendo** l'ampiezza del primo per quella del secondo.
* **Spostamento:** Per "salire" di un intervallo $i$ da una frequenza $f$, si calcola $f \cdot i$; per "scendere", si calcola $f / i$.

---

## 2.5 Scala Pitagorica
Basata sulla purezza degli intervalli di Quinta ($3/2$) e Quarta ($4/3$):
* **Tono Pitagorico:** Rapporto $9/8$.
* **Semitono Pitagorico:** Rapporto $256/243$ (detto *Leimma*).
* **Problema:** Il semitono pitagorico **non è la metà** del tono. Sommando due semitoni non si ottiene un tono ($1.0534^2 \neq 1.125$).

## 2.6 Scala Naturale (Zarliniana)
Cerca di massimizzare la consonanza usando rapporti più semplici presenti negli armonici (es. la Terza maggiore $5/4$).
* **Risultato:** Introduce due tipi di tono: il **Tono grande** ($9/8$) e il **Tono piccolo** ($10/9$).
* **Comma Sintonico:** La differenza tra questi due toni ($81/80$). La presenza di toni diversi rende la gestione degli strumenti a tastiera molto complessa.

## 2.7 Scala delle quinte e Comma Pitagorico
Se proviamo a costruire una scala cromatica di 12 note salendo per intervalli di quinta ($3/2$) e riportandoli nell'ottava, scopriamo che il ciclo non si chiude:
* Dopo 12 quinte, la nota raggiunta è leggermente più alta dell'ottava di partenza.
* **Comma Pitagorico:** Il rapporto $\frac{531441}{524288} \approx 1.0136$. Questa piccola differenza è l'errore intrinseco dei sistemi basati su rapporti naturali.

---

## 2.8 Il Problema della Trasposizione
La trasposizione è il processo di spostare una melodia mantenendo costanti gli intervalli.
* **Conflitto:** Usando scale pitagoriche o naturali, trasponendo una melodia (es. da Do a Re) si generano frequenze leggermente diverse per le stesse note.
* **Conseguenza:** Per suonare in tutte le tonalità servirebbero infiniti tasti per ogni ottava, poiché ogni scala "esige" la sua frequenza specifica.

---

## 2.9 Il Temperamento Equabile
La soluzione definitiva consiste nell'abbandonare i rapporti razionali (frazioni) in favore di una divisione matematica esatta dell'ottava in 12 parti uguali.

* **La Formula:** Poiché la somma di 12 intervalli deve dare un raddoppio di frequenza ($x^{12} = 2$), l'ampiezza di un semitono equabile è:
  $$x = \sqrt[12]{2} \approx 1.059463$$
* **Caratteristiche:**
    1.  **Uniformità:** Il semitono è costante. Il tono è esattamente il doppio del semitono ($x^2$).
    2.  **Trasposizione perfetta:** È possibile suonare in qualsiasi tonalità con soli 12 tasti.
    3.  **Compromesso:** Tutti gli intervalli (tranne l'ottava) sono leggermente "stonati" rispetto ai rapporti naturali, ma l'orecchio umano si è abituato a questo compromesso.



### 2.10 Evoluzione Storica
* **Vincenzo Galilei:** Propose un'approssimazione razionale del semitono ($18/17$).
* **Werckmeister (Temperamento Buono):** Un sistema misto che permetteva di suonare in tutte le tonalità pur mantenendo alcune quinte naturali. È il sistema per cui J.S. Bach scrisse *"Il Clavicembalo ben temperato"*.

# Capitolo 3: MIDI - Standard, File e Protocollo

Il **MIDI** (*Musical Instrument Digital Interface*) nasce agli inizi degli anni '80 dall'esigenza di far comunicare strumenti digitali di produttori diversi. Lo standard, curato dalla *MIDI Manufacturers Association* (1984), si compone di tre parti:
1.  **Interfaccia Hardware**
2.  **Protocollo di comunicazione**
3.  **Formato dei File**

---

## 3.1 Interfaccia Hardware
Lo standard definisce le specifiche fisiche per il trasferimento dei dati:
* **Velocità:** 31.250 bps (baud rate).
* **Tipo:** Seriale asincrono (i bit sono spediti uno dopo l'altro).
* **Connettori:** Storicamente di tipo **DIN a 5 pin**.
    * Lunghezza massima cavo: 6,6 metri (per evitare attenuazione/interferenze).
    * **Pinout:**
        * Pin 1 e 3: Non utilizzati.
        * Pin 4: Corrente (5V).
        * Pin 2: Massa (Ground).
        * Pin 5: Dati MIDI.
* **Porte:**
    * **IN:** Riceve dati dall'esterno.
    * **OUT:** Spedisce dati generati dallo strumento.
    * **THRU:** Replica in uscita i dati ricevuti dalla porta IN (per collegamenti in cascata).

*Nota: Oggi il collegamento DIN è spesso sostituito dall'USB.*



---

## 3.2 Protocollo MIDI
È il linguaggio universale che descrive come suonare le note e gestire i suoni.

### 3.2.1 Le Note
* Rappresentate da numeri interi **da 0 a 127** (128 note totali).
* **Do Centrale (C4):** Codice MIDI **60**.
* Estensione tipica pianoforte (88 tasti): da 21 (A0) a 108 (C8).

### 3.2.2 Velocity (Attacco e Rilascio)
* **Attacco:** Velocità con cui si preme il tasto (determina il volume/intensità). Range: 0-127.
* **Rilascio:** Velocità con cui si lascia il tasto (influenza la chiusura del suono).

### 3.2.3 Strumenti (Program Change)
* Il protocollo gestisce fino a **128 timbri** (Patch).
* Esempi: 1=Piano acustico, 41=Violino, 74=Flauto.

### 3.2.4 Canali
* Esistono **16 canali logici**.
* Permettono di controllare fino a 16 strumenti diversi indipendenti sullo stesso cavo.

### 3.2.5 Suonare una nota
Per suonare una nota servono due messaggi distinti:
1.  **Note On:** Inizia a suonare la nota (richiede Codice Nota e Velocity).
2.  **Note Off:** Smetti di suonare la nota.

### 3.2.6 Tempo e Sincronizzazione (Clock)
Il MIDI è un protocollo *Real-Time* (esegue appena riceve). Per sincronizzare i dispositivi (es. Sequencer) si usa il **MIDI Clock**:
* Vengono inviati **24 messaggi di Clock** per ogni semiminima (beat).
* **BPM (Beat Per Minute):** Determina la durata reale.
    * *Esempio 120 BPM:* 120 semiminime al minuto $\rightarrow$ 1 semiminima = 0.5 secondi.

---

## 3.3 Standard MIDI File (SMF)
I file MIDI servono per memorizzare l'esecuzione. I dati multi-byte sono salvati in formato **Big-Endian**.

### 3.3.2 Lunghezza Variabile (Variable Length Quantity - VLQ)
Per risparmiare spazio, alcuni valori numerici usano un numero variabile di byte (da 1 a 4).
* Si usano **7 bit** per byte per i dati effettivi.
* L'**8° bit (MSB)** funge da segnalatore:
    * `1`: Segue un altro byte.
    * `0`: È l'ultimo byte del valore.

### 3.3.3 Struttura del File
Il file è una sequenza di blocchi (*Chunks*):
`SMF = Header_Chunk + Track_Chunk_1 + ... + Track_Chunk_N`

#### A. Header Chunk (Intestazione)
Inizia sempre con la stringa **"MThd"**. Lunghezza fissa 6 byte. Contiene:
1.  **Formato (2 byte):**
    * *Tipo 0:* Una sola traccia (tutto insieme).
    * *Tipo 1:* Più tracce simultanee (es. multitraccia).
    * *Tipo 2:* Più tracce indipendenti (pattern sequenziali).
2.  **Numero di Tracce (2 byte).**
3.  **Divisione Temporale (PPQN - 2 byte):** Pulses Per Quarter Note (tick per semiminima).

#### B. Track Chunk (Traccia)
Inizia con la stringa **"MTrk"**. Contiene la sequenza di eventi.
Ogni evento è strutturato come:
`Delta Time + Evento`
* **Delta Time:** Tempo di attesa rispetto all'evento precedente (in tick). Se è 0, l'evento è simultaneo al precedente.

### 3.3.4 Tipologie di Eventi

#### 1. Eventi MIDI (Voice Messages)
Hanno uno **Status Byte** (MSB=1, indica tipo e canale) seguito da 1 o 2 **Data Bytes**.

| Evento | Status (Hex) | Parametro 1 | Parametro 2 |
| :--- | :---: | :--- | :--- |
| **Note Off** | `0x8n` | Nota (0-127) | Velocity rilascio |
| **Note On** | `0x9n` | Nota (0-127) | Velocity attacco |
| **Aftertouch** | `0xAn` | Nota | Pressione |
| **Control Change** | `0xBn` | Num. Controller | Valore (es. Pedale Sustain = 64) |
| **Program Change** | `0xCn` | Num. Programma | *(non usato)* |
| **Channel Aftertouch**| `0xDn` | Pressione | *(non usato)* |
| **Pitch Bend** | `0xEn` | Valore LSB | Valore MSB (14 bit totali) |
*(dove `n` è il numero del canale 0-15)*

#### 2. Running Status (Ottimizzazione)
Se un evento ha lo stesso Status Byte del precedente (es. una serie di Note On sullo stesso canale), lo Status Byte può essere omesso.
* *Esempio:* Invece di `NoteOn C4, NoteOn E4`, si invia `NoteOn C4, E4`.

#### 3. Il "Trucco" del Note Off
Per sfruttare al massimo il Running Status, invece di usare il comando `Note Off` (`0x8n`), si usa un `Note On` con **Velocity = 0**. Questo permette di avere lunghe sequenze di soli comandi `Note On`.

#### 4. Meta Eventi
Dati non musicali (testo, tempo, copyright). Iniziano sempre con `0xFF`.
Formato: `0xFF + Tipo + Lunghezza + Dati`.

* **End of Track (`0x2F`):** Obbligatorio alla fine di ogni traccia.
* **Set Tempo (`0x51`):** Specifica i microsecondi per semiminima (3 byte). Default 500.000 (120 BPM).
* **Time Signature (`0x58`):** Specifica la metrica (numeratore, denominatore come potenza di 2, click metronomo).
* **Key Signature (`0x59`):** Tonalità (alterazioni e modo).
* **Testi:** Copyright (`0x02`), Nome Traccia (`0x03`), Lyrics (`0x05`).



# Capitolo 4: Rappresentazione e analisi della musica

Questo capitolo esplora come la musica può essere descritta e memorizzata digitalmente per essere manipolata da un computer, andando oltre il formato MIDI e la partitura tradizionale.

## 4.1 Partitura
La partitura è la rappresentazione simbolica classica, evolutasi dai **neumi** (segni medievali per il canto) fino al pentagramma moderno.
* **Funzione:** Ottimale per l'esecuzione umana.
* **Limite:** Difficile da manipolare per un computer rispetto a formati digitali strutturati specifici.

## 4.2 MusicXML
**MusicXML** è lo standard basato su XML per lo scambio di partiture digitali. Permette di descrivere la gerarchia musicale in modo leggibile sia da umani che da software.

### 4.2.1 Struttura XML
Usa i **tag** (es. `<note>...</note>`) per creare una struttura ad albero.
* **Validazione:** Definita tramite **XSD** (XML Schema Definition), che ha sostituito i vecchi DTD.

### 4.2.2 Struttura di un file ("Ciao Mondo")
Un file minimo contiene:
1.  `<score-partwise>`: Elemento radice.
2.  `<part-list>`: Elenco degli strumenti.
3.  `<part>`: Contiene la musica (identificata da un ID).
4.  `<measure>`: La singola battuta.
    * `<attributes>`: Chiave, tempo (es. 4/4), armatura.
    * `<note>`: Contiene `<pitch>` (altezza) e `<duration>` (durata).

### 4.2.3 Part-wise vs Score-wise
L'ordine gerarchico può variare:
* **Part-wise (Orizzontale):** `<part>` contiene `<measure>`. È il formato più comune.
* **Score-wise (Verticale):** `<measure>` contiene `<part>` (come la lettura di un direttore d'orchestra).

---

## 4.3 Libreria Python: music21
Una potente libreria (MIT) per l'analisi e la manipolazione musicale simbolica. Usa un approccio a oggetti.

### 4.3.1 Oggetti principali
* **`note.Note`:** Rappresenta una nota.
    * Attributi: `name` (es. 'A'), `octave` (es. 4), `pitch.frequency` (es. 440), `pitch.midi`.
* **`duration.Duration`:** Rappresenta la durata.
    * Unità base: Semiminima (Quarter Note) = 1.0.

### 4.3.2 Liste e Flussi (Stream)
* **Stream:** Un contenitore gerarchico (simile a una lista) per oggetti musicali. Gli oggetti hanno un **offset** (posizione temporale).
    * Gerarchia tipica: `Score` -> `Part` -> `Measure` -> `Note`.

### 4.3.3 Visualizzazione
Il metodo `.show()` permette di visualizzare il risultato:
* `s.show()`: Apre il software di notazione (es. MuseScore).
* `s.show('midi')`: Riproduce l'audio.

---

## 4.4 Rappresentazioni Specifiche
Per l'analisi algoritmica (es. ricerca di plagi o pattern), la partitura viene spesso convertita in stringhe.

### 1. TinyNotation
Formato stringa semplificato di music21.
* Esempio: `'tinyNotation: 4/4 C4 D4 E4'` (Scala di Do).

### 2. Rappresentazione "Note" (Assoluta)
Una stringa che elenca le note in sequenza (nome + ottava).
* Esempio: `D5 C5 B4 A4...`
* **Problema:** Non è invariante alla trasposizione. Se la tonalità cambia, la stringa cambia completamente.

### 3. Rappresentazione "Interval" (Relativa)
Descrive la distanza in **semitoni** tra una nota e la successiva (`+` sale, `-` scende).
* **Vantaggio:** È **invariante alla trasposizione**. La stessa melodia in tonalità diverse produce la stessa sequenza di intervalli.
* *Nota:* La prima nota e le pause (`p`) non generano intervalli numerici.

# Capitolo 5: Similarità e plagio musicale

In questo capitolo si affronta il problema della similarità tra brani musicali, base fondamentale per l'analisi del **plagio** (questione controversa con forti implicazioni economiche e legali).
* **Il Problema:** Non esiste una metrica formale assoluta per definire oggettivamente quanto due composizioni siano simili; il giudizio è spesso soggettivo.
* **L'Approccio:** Ci si focalizza sull'**aspetto melodico**, utilizzando rappresentazioni basate su stringhe di caratteri e algoritmi di confronto testuale.

---

## 5.1 Stringhe e distanze
Una melodia può essere rappresentata come una stringa, ovvero una sequenza di caratteri presi da un alfabeto $\Sigma$.

### 5.1.1 Edit Distance (Distanza di Levenshtein)
Definisce il numero minimo di operazioni necessarie per trasformare una stringa in un'altra. Le operazioni consentite sono:
1.  **Cancellazione:** Eliminare un simbolo ($torta \to trta$).
2.  **Inserimento:** Aggiungere un simbolo ($torta \to tortar$).
3.  **Sostituzione:** Cambiare un simbolo ($torta \to porta$).

La distanza si calcola formalmente tramite un algoritmo di **Programmazione Dinamica** che utilizza due matrici $(n+1) \times (m+1)$:
* Una matrice per i costi (valore della distanza minima).
* Una matrice per le operazioni (quale operazione ha generato il minimo).

La formula ricorsiva è:
$$ed(\alpha(i), \beta(j)) = \min(Cancellazione, Inserimento, Sostituzione)$$

#### Algoritmo: Calcolo Edit Distance
Ecco l'implementazione per calcolare la distanza e tracciare le operazioni:

```java
public static int computeED(String m1, String m2) {
    int len1 = m1.length();
    int len2 = m2.length();
    // d = matrice distanze, s = matrice operazioni
    int[][] d = new int[len1+1][len2+1];
    int[][] s = new int[len1+1][len2+1];

    // Inizializzazione bordi (caso stringhe vuote)
    s[0][0] = '-';
    for (int i=1; i<=len1; i++) {
        d[i][0] = i; 
        s[i][0] = 'D'; // Delete
    }
    for (int j=1; j<=len2; j++) {
        d[0][j] = j; 
        s[0][j] = 'I'; // Insert
    }

    // Riempimento matrice (Programmazione Dinamica)
    for (int i=1; i<=len1; i++) {
        for (int j=1; j<=len2; j++) {
            // Se i caratteri sono uguali
            if (m1.charAt(i-1) == m2.charAt(j-1)) {
                d[i][j] = d[i-1][j-1];
                s[i][j] = 'E'; // Equal
            } else {
                // Calcolo costi operazioni
                int canc = d[i-1][j];
                int ins = d[i][j-1];
                int subst = d[i-1][j-1];
                
                // Trova il minimo
                if (subst <= canc && subst <= ins) {
                    d[i][j] = 1 + subst;
                    s[i][j] = 'S'; // Substitution
                } else if (canc <= ins) {
                    d[i][j] = 1 + canc;
                    s[i][j] = '^'; // Delete (Up)
                } else {
                    d[i][j] = 1 + ins;
                    s[i][j] = '<'; // Insert (Left)
                }
            }
        }
    }
    return d[len1][len2]; // Risultato finale
}
```

### 5.1.2 Ricerca di sottostringhe (String Matching)
Serve a determinare se un frammento melodico (pattern) è presente in un brano (testo).

* **Algoritmo Naive (Forza Bruta):** Controlla il pattern a partire da ogni posizione possibile del testo. Complessità $O(nm)$ (lenta se ci sono molte ripetizioni).

```Java
// Logica Naive
stringSearchNaive(String pattern, String str) {
    int p=pattern.length();
    int n=str.length();
    for (int i = 0; i <= n - p; i++) {
        int j;
        for (j = 0; j < p; j++)
            if (text[i+j] != pattern[j]) break;
            if (j == p) return i; // pattern found at offset i.
    }
    return n; // pattern not found.
}
```

* **Algoritmo KMP (Knuth-Morris-Pratt):** Più efficiente ($O(n+m)$). Sfrutta una **pre-computazione** sul pattern per costruire una tabella `next`. Questa tabella indica, in caso di mismatch, di quanto scorrere il pattern senza dover ricontrollare i caratteri già noti (sfruttando la conoscenza di prefissi che sono anche suffissi).

```Java
KMP-precomputation(String pattern) {
    m=pattern.length;
    int next[m];
    next[1]=0;
    k=0;
    for (q=2; q<m; i++) {
        while ((k>0) and (pattern[k+1] <> pattern[q])) {
            k=next[k];
    }
    if (pattern[k+1] == pattern[i]) then k=k+1;
    next[q]=k;
    }
    return next[];
}
```

```Java
stringSearchKMP(String pattern, String str) {
    n = str.length;
    m = pattern.length;
    next = KMP-precomputation(pattern);
    q = 0; //#chars match
    for (i=1; i<n; i++) {
        while (q>0) and (pattern[q+i] <> str[i])
            q = next[q]; //next char does not match
        if (pattern[q+1] == str[i])
            q = q+1; //next char match
        if (q == m)
            print "Occorrenza alla posizione i-m";
        q = next[q]; //Look for next match
    }
}
```

### 5.1.3 Ricerca Approssimata
Combina i concetti precedenti: cerca la sottostringa del testo che ha la **minima edit distance** rispetto al pattern (non una corrispondenza esatta, ma la più simile).

---

## 5.2 Similarità basata sulla distanza testuale
L'idea centrale è usare l'Edit Distance come misura inversa di similarità:
* **Distanza bassa:** Melodie simili (poche modifiche).
* **Distanza alta:** Melodie diverse.

### Esempio: "Fra Martino"
* Melodia A vs Melodia B (lieve variazione): Distanza 5 $\to$ **Simili**.
* Melodia A vs Melodia B trasposta (in altra tonalità): Distanza 24 $\to$ **Sembrano diverse** (falso negativo).

### 5.2.1 Il Problema della Trasposizione
Se si usano nomi assoluti delle note (es. "C4"), l'algoritmo fallisce se i brani sono in tonalità diverse.

**Caso Studio: Al Bano ("I cigni di Balaka") vs Michael Jackson ("Will you be there")**
* Confronto tonalità originali (La Magg vs Re Magg): Distanza **27** (Massima).
* Confronto dopo trasposizione (Entrambi in Re Magg): Distanza **11** (Molto bassa, indica forte similarità).

Lo stesso principio vale per le stringhe di accordi.

### 5.2.2 Altre Rappresentazioni (Metacaratteri)
Per risolvere i problemi di trasposizione e tempo, si usano codifiche diverse dove ogni nota è un "metacarattere" (stringa trattata come singolo simbolo).

#### 1. Rappresentazione Note (Assoluta)
* **Codifica:** Nome nota + Alterazione + Ottava (es. `C5`, `Bb4`, `G#4`). Include `p` per pausa.
* **Difetto:** Sensibile alla trasposizione (cambia se cambia la tonalità).

#### 2. Rappresentazione Pitch (Intervalli)
* **Codifica:** Distanza in semitoni tra note successive (es. `+4` sale di una terza maggiore, `-2` scende di una seconda maggiore).
* **Vantaggio:** **Invariante alla trasposizione**. La melodia `Do-Mi-Sol` è sempre `+4 +3`, indipendentemente dalla tonalità di partenza.

#### 3. Rappresentazione Pitch-da (Intervalli + Durata Assoluta)
* **Codifica:** Intervallo + Simbolo Durata.
* **Alfabeto Durate:** `w` (whole/intero), `h` (half/metà), `q` (quarter/quarto), `e` (eight/ottavo), `s` (sixteenth/sedicesimo).
* **Esempio:** `+3h` (sale di 3 semitoni, durata minima).
* **Difetto:** Sensibile al tempo assoluto (se suono il brano più velocemente, la stringa cambia).

#### 4. Rappresentazione Pitch-nd (Intervalli + Durata Relativa)
* **Codifica:** Intervallo + Ripetizione simbolo base `b`.
* **Metodo:** Si calcola il MCD (Massimo Comun Divisore) delle durate e si usa `b` come unità.
* **Esempio:** Se `b`=croma, una semiminima è `bb`. Stringa: `+3bb -2b`.
* **Vantaggio:** Risolve il problema del tempo assoluto (funziona anche se il brano è suonato al doppio della velocità).

#### 5. Rappresentazione Pitch-ndt (Durata Relativa Tollerante)
* **Problema della Pitch-nd:** Se c'è una nota brevissima (es. acciaccatura), il MCD diventa piccolissimo e la stringa diventa eccessivamente lunga.
* **Soluzione:** Si sceglie un divisore più grande, ignorando o approssimando le durate "anomale" o troppo brevi per mantenere la rappresentazione compatta.

# Capitolo 6: Composizione automatica semplice

In questo capitolo vengono presentate tecniche di composizione automatica basate su procedimenti non musicali (matematici o logici) sui quali vengono innestate regole per la produzione sonora.

---

## 6.1 Metodo di Guido d'Arezzo
Un metodo "algoritmico" (con componenti casuali) ideato intorno all'anno 1000 per trasformare un **testo** in una **melodia**.

* **Mapping:** Associa le vocali ($a, e, i, o, u$) a una serie di note su un'estensione di 2 ottave. Poiché ci sono più note che vocali, l'associazione è ciclica (una vocale corrisponde a più note possibili).
* **Procedimento:**
    1.  Si estrae la sequenza di vocali dal testo (es. "dalle parole" $\to$ `a e a o e`).
    2.  Per ogni vocale, si sceglie una delle note corrispondenti.
    3.  La scelta tra le opzioni (es. quale "a" usare) è lasciata al caso o al gusto (aspetto non deterministico).

---

## 6.2 Il Gioco dei Dadi (Musikalisches Würfelspiel)
Sistema popolare nel XVIII secolo (famosa la versione attribuita a **Mozart**). Si basa sulla ricombinazione casuale di frammenti musicali pre-composti.

* **Meccanismo:** Si lanciano 2 dadi (somma da 2 a 12) per scegliere il contenuto di ogni battuta del brano.
* **Struttura (Esempio di Mozart):**
    * Il brano dura 16 battute.
    * Per ogni posizione temporale (es. battuta n. 1), esistono 11 varianti possibili (una per ogni risultato dei dadi).
    * Totale frammenti: $16 \times 11 = 176$ battute precostruite.
* **Il "Trucco":** Per garantire che il risultato abbia senso musicale, tutte le 11 opzioni per una specifica battuta condividono la stessa **funzione armonica** (es. tutte le opzioni per la battuta 1 sono in Do Maggiore, tutte quelle per la battuta 3 sono in Sol, etc.).
    * L'armonia è fissa a priori, mentre melodia e ritmo variano casualmente.

---

## 6.3 Compositori basati su Catene di Markov
Modello matematico che descrive l'evoluzione di un sistema basandosi su probabilità di transizione tra stati.

* **Funzionamento:** Lo stato futuro dipende solo dallo stato attuale e da una distribuzione di probabilità.
* **Applicazione Musicale:**
    * **Stati:** Note musicali (o accordi).
    * **Matrice di Transizione:** Definisce la probabilità che una nota $X$ sia seguita dalla nota $Y$.
    * *Esempio:* Se suono un Do, ho il 70% di probabilità di andare al Re e il 30% di andare al Mi.

---

## 6.4 Compositori basati su Automi Cellulari (CA)
Gli automi cellulari (introdotti da Von Neumann) sono modelli discreti studiati per l'auto-riproduzione e la complessità emergente.

### 6.4.1 Componenti di un CA
1.  **Universo:** Griglia di celle (spesso toroidale per evitare bordi).
2.  **Stati:** Condizione della cella (es. Viva/Morta, o colori multipli).
3.  **Vicinato:** Quali celle influenzano quella centrale (es. le 8 celle adiacenti).
4.  **Regole di Evoluzione:** Determinano lo stato al tempo $t+1$ in base al vicinato al tempo $t$.

### 6.4.3 Game of Life (Conway)
Il CA più famoso.
* **Stati:** Viva (1) / Morta (0).
* **Regole:**
    * *Nascita:* Cella morta con 3 vicini vivi $\to$ Viva.
    * *Sopravvivenza:* Cella viva con 2 o 3 vicini vivi $\to$ Resta Viva.
    * *Morte:* Altrimenti (sovraffollamento o solitudine).

### 6.4.4 Cyclic Cellular Automaton (CCA)
Un CA con $p$ stati (colori). Una cella passa allo stato successivo ($k+1$) se ha abbastanza vicini in quello stato. Genera pattern a spirale.

### 6.4.5 Esempio di Compositore Automatico con CA
Viene proposto un sistema ibrido che usa due automi in parallelo:
1.  **Game of Life:** Determina *quando* suonare (trigger). Se la cella $(i,j)$ è viva, si genera un evento.
2.  **Automa Ciclico:** Determina la *nota di riferimento* (in base al colore della cella corrispondente).

**Algoritmo di Generazione:**
* **Pitch (Altezza):** Le coordinate $(i, j)$ della cella viva determinano gli intervalli per generare una tripla di note a partire dalla nota di riferimento.
* **Ritmo:** Lo stato delle 8 celle del vicinato viene usato come un byte (256 combinazioni) per selezionare un pattern ritmico predefinito.
* **Scansione:** L'automa viene letto per colonne, dall'alto in basso, da sinistra a destra.


## 6.5 Musica Evolutiva
Gli **algoritmi evolutivi** si ispirano al processo di selezione naturale di Darwin: una popolazione di soluzioni si evolve per adattarsi a criteri stabiliti, sopravvivendo o estinguendosi.

### 6.5.1 Algoritmi Genetici (GA)
Sono la tipologia più diffusa. Le soluzioni musicali sono trattate come individui biologici.
* **Cromosoma:** La rappresentazione simbolica della soluzione (stringa di bit o caratteri).
* **Gene:** L'unità funzionale minima del cromosoma (un "pezzetto" della soluzione).
* **Operazioni Evolutive:**
    1.  **Crossover (Ricombinazione):** Genera un nuovo individuo combinando parti di due genitori (es. metà del cromosoma A + metà del cromosoma B).
    2.  **Mutazione:** Modifica casualmente alcuni geni di un individuo per introdurre variabilità.
* **Fitness Function (Funzione di Adattamento):** Una formula matematica che valuta la "bontà" di una soluzione. Determina chi sopravvive alla generazione successiva.

**Struttura dell'algoritmo:**
1.  Generazione popolazione iniziale casuale.
2.  Ciclo (fino a MAX iterazioni):
    * Crossover tra coppie.
    * Mutazione.
    * Selezione dei migliori in base alla Fitness.

```Java
P = setInitialPopulation()
for (i=1 to MAX)
    C = Applica il Crossover a tutte le coppie di P
    M = P Applica la Mutazione a tutti gli elementi di P
    P = i migliori SIZE elementi di P+C+M in funzione di f
    endfor
Fornisci in output il miglior elemento di P
```

### 6.5.2 Esempio: Music GA
Applicazione per creare una frase pop di 4 battute (Melodia + Accordi).
* **Gene:** Rappresenta una frazione di battuta (es. 2/4) contenente un accordo e un frammento melodico.
* **Cromosoma:** Sequenza di geni che formano l'intera frase.
* **Regole della Fitness Function (Esempio):**
    * *Premio (+):* Note della melodia appartenenti all'accordo sottostante; gradi congiunti; cadenze finali (es. V-I); inizio/fine sulla tonica.
    * *Penalità (-):* Note estranee all'accordo (salvo note di passaggio); salti melodici vietati; successioni armoniche inusuali.

---

## 6.6 Fractal Music
Si basa sulla geometria dei **frattali** (oggetti geometrici definiti ricorsivamente, autosimili a qualsiasi scala, come la *Curva di Von Koch*).

### Applicazione Musicale
Si introduce una struttura ricorsiva nella composizione:
1.  **Sostituzione degli intervalli:** Si parte da un elemento base (es. due note). Ogni nota viene poi sostituita da una copia dell'elemento base, scalata secondo l'intervallo della nota originale. Il processo può essere ripetuto all'infinito.
2.  **Sostituzione delle durate:** Si divide ricorsivamente la durata delle note (es. dimezzando ad ogni iterazione).
3.  **Sovrapposizione:** Gli elementi generati ricorsivamente possono essere suonati in sequenza o sovrapposti temporalmente.

---

## 6.7 e 6.8 Fibonacci Music
Utilizza la **successione di Fibonacci** ($F_n = F_{n-1} + F_{n-2} \rightarrow 0, 1, 1, 2, 3, 5, 8, 13...$).

### Metodo di composizione
* Si prendono le singole cifre della sequenza (0, 1, 1, 2, 3, 5, 8, 1, 3...).
* Si mappa ogni cifra (0-9) su una nota di una scala (es. Scala Maggiore estesa a 10 note).
* La sequenza generata viene poi elaborata ritmicamente e armonicamente per renderla musicale.

### Digressione Matematica e Naturale
* Originata dal problema della crescita di una popolazione di conigli (Fibonacci, 1202).
* Il rapporto tra due numeri successivi di Fibonacci tende al **Rapporto Aureo** ($\phi \approx 1.618$).
* Presente in natura (petali dei fiori, spirale delle conchiglie) e usata spesso in arte e architettura per le sue proporzioni estetiche.

---

## 6.9 Musica e Simmetria
La simmetria è una trasformazione che lascia un oggetto inalterato rispetto a un sistema di riferimento (es. rotazione, riflessione).

### Simmetria in Musica (Classica)
* **Traslazione:** Ripetizione di una struttura ritmica o melodica spostata nel tempo o nell'altezza (es. *Preludio in Do* di Bach, *5a Sinfonia* di Beethoven).
* **Riflessione:**
    * **Retrogrado:** Esecuzione dall'ultima nota alla prima (simmetria verticale).
    * **Inverso:** Inversione della direzione degli intervalli (simmetria orizzontale).
    * **Retrogrado-Inverso:** Combinazione delle due.
* **Simmetria Formale:** Struttura A-B-A (Forma tripartita).
* **Canone:** Sovrapposizione della stessa melodia traslata nel tempo.

### Simmetria negli Accordi
Divisione simmetrica dell'ottava (12 semitoni):
* Accordo diminuito (3+3+3+3 semitoni).
* Accordo aumentato (4+4+4 semitoni).
* Scala esatonale (2+2+2+2+2+2 semitoni).

### 6.9.7 Dodecafonia (Arnold Schönberg)
Sistema che abbandona la tonalità basandosi sull'equivalenza delle 12 note.
* **La Serie:** Una sequenza fondamentale che contiene tutte le 12 note della scala cromatica (senza ripetizioni).
* **Trasformazioni della Serie:** La composizione si sviluppa applicando simmetrie alla serie fondamentale:
    1.  **Fondamentale:** La serie originale.
    2.  **Retrogrado:** La serie letta al contrario.
    3.  **Contrario (Inverso):** Gli intervalli ascendenti diventano discendenti e viceversa.
    4.  **Retrogrado-Contrario:** L'inverso letto al contrario.

*Esempio citato:* Anton Webern, Variazioni op. 27.

# Appunti in classe

$$\sum_{i=1}^{n} s^i=12$$


somma -> prodotto
sottrazione -> divisione 
per trovare numeri della scala
3/2*3/2=9/4
(9/4)/2=9/8
2/(3/2)=4/3
4/3 * 5/4=5/3

distanza es 5/4 / 9/8 = 10/9

scala quinte se >2 divido per due perchè fuori ottava
temperamento finito
score part wise per riga
score time wise colonna

test fino slide 35
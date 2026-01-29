# 1.1 Natura e Fisica del Suono

Il suono è la percezione uditiva prodotta dalla **vibrazione** di un corpo, che genera onde di pressione trasmesse attraverso un mezzo elastico (come l'aria).

### Propagazione e Velocità
Le onde sonore non si propagano istantaneamente. La loro velocità dipende dal mezzo e dalle condizioni ambientali:
* **Velocità standard:** Circa **343,1 m/s** (1235 km/h) a 20°C in aria.
* **Effetto Temperatura:** La velocità aumenta all'aumentare della temperatura.
* **Formula lineare:** $$v \approx 331,3 + 0,6 \cdot t$$
  *(dove $t$ è la temperatura in gradi Celsius; la velocità aumenta di 0,6 m/s per ogni grado).*

---

### Caratteristiche dell'Onda Sonora
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

# 1.2 Le Note Musicali

Le note sono gli elementi costruttivi fondamentali della musica. Si distinguono dai suoni generici per la loro "gradevolezza" e precisione fisica.

### Suono vs Rumore
* **Rumore:** Un suono percepito come sgradevole.
* **Nota:** Un suono gradevole, tipicamente prodotto da strumenti musicali, utilizzato come unità di base per la composizione.

### Caratteristiche di una Nota
Oltre alle proprietà fisiche dell'onda (altezza, volume, timbro), una nota è definita dalla sua **dimensione temporale**:
1.  **Inizio:** L'istante esatto in cui il suono comincia.
2.  **Durata:** L'intervallo di tempo per cui il suono si protrae, determinandone la fine.

> [!NOTE]
> In ambito informatico/algoritmico, una nota viene quindi trattata come un **oggetto** che possiede parametri di frequenza, ampiezza, timbro e coordinate temporali (start-time e duration).
---

## 1.2.1 Altezza e Frequenza

L'altezza è la caratteristica che distingue i suoni **gravi** (bassa frequenza) da quelli **acuti** (alta frequenza). È il parametro cardine per la melodia e l'armonia.

### Il Sistema Musicale Moderno
* **Sottoinsieme di frequenze:** Anche se le frequenze sono infinite, la musica ne usa solo alcune.
* **Standard:** La nota **La4** (centrale sul pianoforte) è fissata a **440 Hz**.
* **Il Pianoforte:** Ha 88 tasti, ognuno associato a una frequenza specifica, suddivisi in **ottave** (gruppi di 12 note).

### Percezione Uditiva
* **Risoluzione:** L'orecchio umano fatica a distinguere frequenze troppo vicine (es. 440 Hz vs 441 Hz).
* **Tipi di Orecchio:**
    * **Assoluto:** Capacità di identificare la frequenza esatta di una nota senza riferimenti.
    * **Armonico:** Capacità di isolare le singole note in un accordo (suoni simultanei).
    * **Relativo:** Capacità di identificare l'intervallo (distanza) tra due note.

### Il Concetto di Intervallo e Consonanza
L'intervallo è la "distanza" tra due suoni, espressa matematicamente come **rapporto tra le frequenze** ($f_2 / f_1$).

1. **Unisono (Rapporto 1:1):** Due suoni con la stessa frequenza ($f/f = 1$). Massima consonanza.
2. **Ottava (Rapporto 2:1):** Un suono con frequenza doppia rispetto a un altro ($2f/f = 2$). 
    * Viene percepita come "la stessa nota" ma più acuta.
    * È l'**assioma** del sistema musicale: note in rapporto di ottava sono considerate equivalenti.



### Formula delle Ottave
Partendo da una frequenza di riferimento $f_r$, si possono calcolare tutte le sue ottave (superiori o inferiori) con la formula:
$$f_n = f_r \cdot 2^n$$
* Dove $n$ è un numero intero ($Z$).
* $n > 0$: ottave più acute.
* $n < 0$: ottave più gravi.
* $n = 0$: unisono.

> [!TIP]
> **Curiosità sull'etimologia:** Il termine "ottava" deriva dal fatto che nelle scale più comuni (composte da 7 suoni), il suono che raddoppia la frequenza è l'8° della sequenza.

## 1.2.2 Timbro

Il timbro è la caratteristica che permette di distinguere due suoni che hanno la stessa altezza (frequenza) e la stessa intensità, ma provengono da sorgenti diverse.

### Definizione e Origine
* **Identità sonora:** È ciò che ci permette di capire se una nota è suonata da un **violino**, un **pianoforte** o un **flauto**.
* **Variazioni nello stesso strumento:** Il timbro può cambiare anche in base alla tecnica esecutiva (es. corde "pizzicate" vs "suonate con l'arco" in un violino).

### Rappresentazione Visiva
* **L'Oscilloscopio:** È lo strumento che permette di visualizzare graficamente il suono. 
* **Processo:** Le variazioni di pressione dell'aria vengono convertite in segnali elettrici (tramite un microfono) e poi visualizzate come **forme d'onda**.
* **Forma dell'onda:** Ogni strumento ha una forma d'onda peculiare (sinusoidale, quadra, a dente di sega o forme più complesse). La complessità della forma d'onda determina la ricchezza del timbro.

> [!TIP]
> **Concetto chiave per l'informatica musicale:** > In sintesi digitale, il timbro viene manipolato agendo sulla "forma" del segnale o aggiungendo armoniche alla frequenza fondamentale.

## 1.2.3 Durata

La dimensione temporale trasforma un insieme di suoni in una composizione strutturata. Ogni nota non è solo una frequenza, ma un evento con un'estensione nel tempo.

### Coordinate Temporali
Una nota è definita da due momenti precisi:
1. **Inizio (Start-time):** L'istante in cui la nota comincia a suonare.
2. **Fine:** L'istante in cui il suono cessa.
* **Durata:** L'intervallo di tempo tra l'inizio e la fine.

### Rappresentazione Matematica e Cartesiana
Le note possono essere pensate come funzioni che associano un'altezza a un intervallo di tempo. Questo permette di visualizzare la musica su un piano cartesiano:
* **Asse X (Ascisse):** Rappresenta il **Tempo**.
* **Asse Y (Ordinate):** Rappresenta la **Frequenza** (Altezza).

In questo sistema, ogni nota diventa un **segmento orizzontale**:
* La **lunghezza** del segmento indica la durata.
* La **posizione orizzontale** indica quando la nota viene suonata.
* La **posizione verticale** indica quanto la nota è acuta o grave.

> [!TIP]
> **Piano Roll:** Questa rappresentazione cartesiana è esattamente ciò che nei software musicali (DAW) viene chiamato "Piano Roll", lo strumento principale per programmare musica al computer.

## 1.2.4 Nomi delle Note e Alterazioni

Per identificare le frequenze all'interno di un'ottava, il sistema musicale assegna dei nomi specifici alle note.

### Sistemi di Notazione
Esistono due standard principali per nominare le note:
* **Notazione Latina:** Do, Re, Mi, Fa, Sol, La, Si.
* **Notazione Anglosassone:** Utilizza le lettere dalla A alla G.

| A | B | C | D | E | F | G |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **La** | **Si** | **Do** | **Re** | **Mi** | **Fa** | **Sol** |

### Le 12 Note dell'Ottava
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

### Alterazioni Multiple
Nella pratica musicale si possono usare anche:
* **Doppio Diesis (x o ]]):** Alza la nota di due semitoni (es. Do]] = Re).
* **Doppio Bemolle (bb o [[):** Abbassa la nota di due semitoni (es. Sol[[ = Fa).

### Standard MIDI
Ogni tasto del pianoforte (88 in totale) è associato a:
1.  Una **frequenza** specifica (es. La4 = 440 Hz).
2.  Un **codice MIDI** unico (un numero intero che vedremo nel Capitolo 3).

## 1.2.5 Tono e Semitono

Il tono e il semitono sono le unità di misura fondamentali per calcolare la distanza tra due note nel sistema musicale occidentale.

### Il Semitono (s)
* **Definizione:** È la distanza minima tra due note adiacenti nel sistema temperato.
* **Sul Pianoforte:** Corrisponde alla distanza tra un tasto e quello immediatamente successivo (bianco o nero che sia).
* **Esempi:** - Tra **Mi** e **Fa** (due tasti bianchi adiacenti senza tasto nero in mezzo).
  - Tra **La** e **La#** (un tasto bianco e il tasto nero subito dopo).
* **Codice MIDI:** Corrisponde a una differenza di **1** nell'identificativo MIDI ($i$ e $i+1$).

### Il Tono (T)
* **Definizione:** È composto dall'unione di due semitoni ($T = s + s$).
* **Esempi:**
  - Tra **La** e **Si** (perché in mezzo c'è il La#).
  - Tra **Mi** e **Fa#** (perché si saltano due posizioni).
* **Codice MIDI:** Corrisponde a una differenza di **2** nell'identificativo MIDI ($i$ e $i+2$).



### Importanza Strutturale
Queste unità servono a definire la "geometria" delle scale. Ad esempio, la scala maggiore è costruita sulla sequenza specifica:
**T - T - s - T - T - T - s**

# 1.5 Rappresentazione della Musica

Per visualizzare altezza e durata delle note, il sistema musicale utilizza un sistema grafico standardizzato che funziona come un piano cartesiano "semplificato".

## 1.5.1 Il Pentagramma
È composto da **5 linee parallele**. Funziona così:
* **Asse Verticale:** Rappresenta l'altezza (più in alto è la nota, più è acuta).
* **Asse Orizzontale:** Rappresenta lo scorrere del tempo (da sinistra a destra).
* **Tagli Addizionali:** Linee corte usate per scrivere note che si trovano sopra o sotto le 5 linee principali (es. Do4 sotto il rigo).



[Image of a musical staff with treble clef and ledger lines]


---

## 1.5.2 Chiavi Musicali
La chiave determina l'altezza di riferimento (l'ottava) delle note sul pentagramma:
* **Chiave di Violino (Sol):** Usata per suoni medio-acuti. La seconda linea dal basso è il **Sol4** (MIDI 67).
* **Chiave di Basso (Fa):** Usata per suoni gravi.
* **Funzione informatica:** La chiave agisce come una "traslazione" o un offset sulle frequenze visualizzate.

---

## 1.5.3 Rappresentazione della Durata
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

## 1.5.4 Metrica e Tempo
La musica è divisa in **battute** (separate da barre verticali).

### L'Indicazione Metrica
Rappresentata come una frazione (es. **3/4**):
* **Numeratore (Sopra):** Quanti elementi ci sono in ogni battuta (es. 3 elementi).
* **Denominatore (Sotto):** La durata di ogni elemento (es. da 1/4).

### Velocità (BPM)
La durata reale (in secondi) dipende dai **BPM** (Battiti Per Minuto).
* **Calcolo:** Se la velocità è 132 crome al minuto, una croma dura $60 / 132 \approx 0,45$ secondi.

> [!TIP]
> **Analogia Informatica:**
> Il pentagramma è l'interfaccia grafica (GUI), mentre i BPM sono il "clock" del sistema che determina la velocità di esecuzione dei dati.

# 1.6 Scale Musicali

Una scala è una sequenza di suoni ad altezza crescente che collegano una nota alla sua ottava superiore. Può essere vista come una scala fisica dove i "gradini" (**gradi**) hanno "alzate" (**intervalli**) differenti.

### Definizione Formale e Informatica
Da un punto di vista matematico, una scala è identificata da una sequenza di $n$ interi positivi $\langle s_1, s_2, \dots, s_n \rangle$ (espressi in semitoni) la cui somma è esattamente **12**.

La posizione di ogni nota rispetto alla tonica (distanza cumulativa $D_i$) è data dalla formula:
$$D_i = \sum_{j=1}^{i} s_j$$

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

# 1.7 Scale e trasposizione

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

# 1.8 Intervalli musicali

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

# 1.9 Melodia e armonia

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

# 1.10 Accordi

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

# 1.11 Forme musicali

La **forma musicale** indica la struttura della composizione e determina il modo in cui gli elementi musicali (come il tema) vengono organizzati nel tempo.

### Esempi di Forme Classiche
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
# 1.12 Successioni armoniche tipiche

In musica non esistono regole ferree, ma la pratica consolidata (come riportato da Piston) permette di individuare dei movimenti degli accordi più probabili e "naturali" per l'orecchio.

## 1.12.1 Successioni nel Modo Maggiore
Ecco i gradi che solitamente seguono un determinato accordo:
- **I (Tonica):** seguito da **IV** o **V**, talvolta **VI**; raramente da II o III.
- **II (Sottodominante):** seguito da **V**, talvolta IV o VI; raramente da I o III.
- **III (Mediante):** seguito da **VI** o **IV**; raramente da I, II o V.
- **IV (Sottodominante):** seguito da **V**, **I** o **II**; raramente da III o VI.
- **V (Dominante):** seguito da **I**, **IV** o **VI**; raramente da II o III.
- **VI (Sottodominante):** seguito da **II** o **V**, talvolta III o VI; raramente da I.
- **VII (Sensibile):** seguito da **I** o **III**, talvolta VI; raramente da II, IV o V.

## 1.12.2 Successioni nel Modo Minore
I criteri sono simili al maggiore, con alcune specificità:
- Il **I grado** può essere seguito dalla triade maggiore del **VII**.
- Il **III grado** maggiore può essere seguito dal **VII** maggiore.
- Il **VII grado maggiore** è seguito dal **III**, talvolta dal **VI**.
- Il **VII grado diminuito** risolve sempre sul **I**.

---

## 1.12.3 Le Cadenze principali
Le cadenze sono la "punteggiatura" della musica e definiscono la conclusione di una frase.

- **Cadenza Autentica (V - I):** La risoluzione più forte. Spesso estesa in **II-V-I** o **IV-V-I**.
- **Cadenza Perfetta:** Una cadenza autentica dove i due accordi sono in posizione fondamentale e la tonica è al soprano (chiusura massima).
- **Cadenza Sospesa:** Termina sul **V grado**. Funziona come una "virgola", lasciando il discorso aperto.
- **Cadenza Plagale (IV - I):** Usata spesso come conferma finale dopo una cadenza autentica.
- **Cadenza d'Inganno (V - VI):** La dominante (V) sembra voler andare sul I, ma risolve a sorpresa sul VI grado.

# 1.13 Metriche di valutazione

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


# Appunti in classe

## Suoni
- Un corpo in vibrazione produce delle onde sonore che si propagano nell'aria raggiungendo l'orecchio.
La velocità del suono nell'aria è di circa <em>343,1 m/s</em> ad una temperatura di 20°
Formula: $$331,3 + 0,6*t$$
<em>t</em>: temperatura misurata in Celsius

- **Frequenza**: **Altezza** del suono e l'intensità che determina il **volume** del suono percepito e viene misurata in Hertz
- **Timbro**: Forma delle onde
- **Intensità**: Misurata in decibel (dB)

## Note
- L'altezza di una nota permette di distringuere un suono frave da un suono acuto
- La nota posizionata al centro del pianoforte ha la frequenza particolare di 440Hz
- La capacità di individuare la differenza di frequenza è soggettiva
- Due suoni con la stessa frequenza sono consonanti e quindi risultano più gradevoli
- **Intervallo**: Distanza fra due suoni
    $$f_1/f_2=intervallo$$

    - **Intervallo** = 1 viene detto **unisono**
    - **Intervallo** = 2 viene detto **ottava**
        - Data una frequenza f<sub>r</sub> si possono ottenere le ottave corrispondenti raddoppiando o dimezzando
            $$f_n=f_r*2^n, n \in Z$$
            - f<sub>n</sub> &gt; f<sub>r</sub>: ottave più acute
            - f<sub>n</sub> &lt; f<sub>r</sub>: ottave più gravi
            - ottava con <em>n</em>
- **Timbro**: Rappresenta l'insieme delle caratteristiche di un suono che permette di distinguere diverse sensazioni uditive per suoni con timri diversi
- **Durata**: Rappresenta l'intervallo di tempo che va dall'inizio della nota fino al momento in cui cessa il suono
## **Note in un'ottava**
- Se ad ogni frequenza facciamo corrispondere una nota alla avremmo infinite note, quindi per convenzione le ottave sono divise in 12 note
L'ottava è divisa in 12 intervalli detti semitoni uguali

    $$f_k=f_R*(2^{1/12})^k, k \in 0,1,2,...,12$$

    Le note di un ottava sono identificate da nomi, 7 hanno un nome proprio mentre 5 si ottengono usando le alterazioni bemolle (♭) che abbassa la frequenza e diesis (#) che alza la frequenza

    - f<sub>k</sub>=1.05946, k rappresenta la nota di riferimento, k=12 rappresenta doppio frequenza di k

## **Tono e Semitono**
- **Semitono**: Distanza fra una nota i e quella successiva i+1
    - Simbolo s
- **Tono**: Distanza fra una nota i e la nota i+2
    - Simbolo T

## Pentagramma
- Formato da cinque linee parallele
- **Chiave**: rappresenta l'altezza dell'ottava di riferimento
- Rappresentazione durata:
    - **Semibreve**: equivale a 4 quarti
    - **Minima**: equivale a 2 quarti
    - **Semiminima**: equivale a 1 quarto
    - **Croma**: equivale a 1 ottavo
    - **Semicroma**: equivale a 1 sedicesimo

        <img src="https://www.accordiespartiti.it/wp-content/uploads/2013/01/valori-musicali.png" width="500">

    - **Punto**: aumenta durata del 50%
    - **Durata di ogi battuta** viene specificata subito dopo la chiave
        - Il numeratore rapprresenta il numero di elementi di cui è fatta
        - Il denominatore la durata di ogni singolo elemento

## Scale
- Una scala musicale è una sequenza di suoni con altezza crescente che partono da una determinata nota e arrivanno all'ottava successivo, identificata da una sequenza di <em>n</em> interi positivi

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
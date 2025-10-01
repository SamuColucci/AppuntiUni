# Mobile Programming
## Piattaforma Android
- Il sistema software per mobile si compone di:
  - **Kernel Linux**: Fornisce i servizi di base del sistema operativo
  - **Hardware**: INterfacce standard per esporre le capacità hardware ai servizi di livello superiore
  - **Librerie e Android Runtime**: 
    - App Android sono scritte in Java e/o Kotlin
    -  Compilate in Java Bytecode
    -  Un tool DX che trasforma i file Bytecode in fle Dex Bytecode
    -  File classes.dex contiene anche tutti i file di dati necessari
    -  **ART Virtual Machine** esegue il file dex
       - Una Vm specifica per Android
       - Ahead-Of-Time commpilation
       - Garbage collection
       - Richiede meno memoria di Dalvik
       Consuma meno batteria di Dalvik
    - **Dalvik** Virtual machine per API level < 21
       - Just-In-Time compilation
       - Garbage collection
       - Richiede più memoria di ART
       - Consuma più batteria di ART
    - **Librerie native** sono neccessarie per molte componenti Android
  - **Application framework**: Funzionalità del SO esposte tramite API
  - **Applicazioni (App)**: Applicazioni già presenti nel sistema

## Android Developer Tools
- Gli oggetti della classe View hanno dei metodi listener
- **Edge-to-edge**: da API 35, con view a tutto schermo
- **Insets**: da API 35 fra le aree sovrapposte sono presenti la status bar, la navigation bar, menu laterali, tastiere soft
- **Activity**: è una classe base del pacchetto android.app, fornisce il ciclo di vita standard e la gestione base dell'UI, non include funzionalità di compabilità o supporto ai temi/material design
- **AppCompatActivity**: Estende FragmentActivity, definita in AndroidX, offre retrocompabilità

## Layouts
- Definiscono l'aspetto grafico dell'interfaccia utente
- Si possono definire in XML o in modo programmatico e si possono usare in sinergia
- **Programmatico**: dinamico, dobbiamo gestire il layout nel codice
- **XML**: facile da specificare e separe in modo netto UI dal codice, tuttavia presenta elementi statici
- **ViewGroup**: gruppi di altri elementi
- **Attributi**: Specificano aspetto grafico, dove visualizzare l'elemento e forniscono informazioni
- **ID (Creazione)**: android:id=@+id/text, dopo la @ viene interpretato, il + specifica che stiamo creando un nuovo elemento di nome text
- **ID (Riferimento)**: android:id='@id/text'
- **View**: è un rettangolo la cui posizione è determinata dal layout
- **Misure pixel**:
    - **px**: pixel reali
    - **dp(dip)**: density independent pixels, calcolati sulla densità
    - **sp**: scale-independent pixels, scalato in base al font dell'utente
- **Linear Layout**: Posiziona gli elementi uno dopo l'altro, i cui i figli si dividono equamente lo spazio, non viene lasciato spazio vuoto
- **Relative Layout**: Posizione relativa al layout padre e agli altri elementi dell layout
- **ConstraintLayout**: Specifica la posizione attraverso vincolo, viene usata dall'editor grafico
- **TableLayout**: Organizza gli elementi in righe e colonne
- **GridView**: Visualizza un insieme di elementi e da un Adapter che fornisce gli elementi da inserire nel GridView
- **List View**: Visualizza un insieme di elementi organizzati in una lista e la Adpater fornisce gli elementi da inserire nel List View

## appunti
testo inserito in un altro file resourse per gestire meglio la stringa avendo più stringhe in modo da non poterla modificare dall'xml, permette di avere una versione di più lingue
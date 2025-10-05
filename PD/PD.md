# Programmazione Distribuita
## Sistema Distribuito
- Un sistema consiste in un insieme di macchine connesse attraverso una rete, ogni nodo esegue un insieme di componenti che comunicano e coordinano il proprio lavoro attraversi un software detto **middleware**, in maniera che lo utenta lo percepisca con un unico strato

- Allo scopo di facilitare lo sviluppo dei sistemi distribuiti e quindi creare una astrazione comune per i produttori in maniere indipendente dalla specifica ISO/IEC³ ha proposto il modello formale RM-ODP

- Il modello RM-ODP si basa ed integra il modello tradizionale di rete ISO/OSI, estendendolo per la comunicazione tra componenti eterogenee

- **Caratteristiche di un sistema distribuito**:
    - **Remoto**: Le componenti possono essere localizzate su macchine diverse

    - **Concorrenza**: Permette esecuzione di due o più istruzioni su macchine diverse

    - **Assenza di uno stato globale**: Non è possibile determinare lo stato globale di un sistema

    - **Malfunzionamenti parziali**: Malfunzionamento non deve inficiare le funzionalità nel sistema distribuito

    - **Eterogeneità**: Tecnologia diversia sia hardware che software

    - **Autonomia**: Collaborazione ottenuta mediante le richieste del sistema distribuito con quelle del sistema che gestisce ciascun nodo

    - **Evoluzione**: Il sistema distribuito può cambiare in maniera sostanziale durante la sua vita in base alla esigenze

    - **Mobilità**: Permette la mobilità di nodi e risorse all'interno del sistema

- **Requisiti non funzionali di un sistema distribuito**: I requisiti non funzionali che indicano la qualità del sistema, sono globali e vanno considerati come fattori che hanno un impatto significativo sulla architettura
    - **Aperti**: Permetteno di supportare la portabilità di esecuzione e di interoperablità per poter far evolvere il sistema

    - **Integrati**: Permette di incorporare sistemi e risorse differenti senza usare strumenti ad-hoc

    - **Flessibili**: Legato al concetto di evoluzione al fine di permettere di integrare sistemi legacy

    - **Modulari**: Permette ad autonomia di ogni componente mantenedo un grado di interconnessione nel sistema

    - **Supporto federazione di sistema**: Permette di unire sistemi sia dal punto di vista architetturale che dal punto di vista amministrativo 

    - **Facilmente gestibili**: Permette il controllo e la gestione del sistema

    - **Fornire la qualità del servizio**: Poter fornire servizi con vincoli di tempo, disponibilità e affidabilità.
    La tolleranza ai malfunzionamenti è la principale richiesta di un sistema distribuito

    - **Scalabili**: Deve essere in grado di gestire picchi di carico non prevedibili

    - **Sicuri**: Evitare ad utenti non autorizzati di accedere
    - **Trasparenza**: Mascherare i dettagli e le differenze della architettura al fine di agevolare la progettazione e la implementazione. Esistono vari ripi di trasparenza tuttavia avendo un costo associato bisogna fare un accurata valutazione dei costi/benefici al fine di scegliere quelle necessarie<br><br>
    ![Relazione fra le Trasparenze](img/RelazioneTrasparenza.png)<br><br>
      - **Trasparenza di accesso**: Nasconde le differenze di rappresentazione e invocazione dei dati al fine di permettre ad un oggetto di essere facilmente spostato a run-time da un nodo ad un altro anche da remoto
      - **Trasparenza di locazione**: Fornisce una vista logica del sistema di naming, in modo da disaccoppiare il nome da un posizione nella rete, al fine di poter spostere un oggetto da un nodo ad un altro
      - **Trasparenza di migrazione**: Permette di nascondere la possibilità che il sistema faccia migrare un dato da un nodo ad un altro in modo da essere raggiungibile e utilizzabile da altri oggetti, permettendo il bilanciamento del carico
      - **Trasparenza di replica**: Il sistema maschera che una singola componente viene replicata un certo numero di volta e piazzata su altri nodi, il sistema si occupa di mantenere coerente lo stato delle repliche, permettendo la scalabilità e un miglioramento delle prestazioni
      - **Trasparenza alle transazioni**: Nasconde all'utente le attività di coordinamento che vengono svolte per assicurare la consistenza degli oggetti in presenza della concorrenza
      - **Trasparenza ai malfunzionamenti**: Nasconde ad un oggetto il malfunzionamento di oggetti con i quali sta interoperando, poggiandosi sulla trasparenza di replica e di transazione
      - **Trasparenza alla persistenza**: Scherma l'utente dalle operazioni che conmpie il sistema per rendere persistente, ovvere mettere in memoria secondaria, un oggetto durante la fase di non utilizzo, affidandosi alla trasparenza di locazione
      - **Trasparenza alla scalabilità**: Permette di poter servire carichi di lavoro via via crescenti senza dover modificare la propria architettura e la propria organizzazione
      - **Trasparenza alle prestazioni**: Assicura che il progettista sia ignaro dei mecccanismi che vengono utilizzati per le prestazioni del sistema

## **Middleware ad Oggetti Distribuiti** 
- Gli oggetti distribuiti hanno come obiettivo quello di realizzare servizi distribuiti, in modo da essere efficienti, flessibili, sicuri e robusti, basato su una architettura che utilizza come risorse nodi eterogenei, sia per hardware che per software.
- Il **middleware** ad oggetti distribuiti che risiede fra le applicazioni e lo strato del sistema operativo ha lo scopo di permettere la comunicazione e la cooperazioni fra le componenti di sistema, astraendo le operazioni di basso livello risolvendo i problemi eterogeneità.
Evita che il programmatore si occupa dei dettagli di comunicazione del livello di rete.
Poichè il middleware ad oggetti astrae significativamente la parte di servizio e di distribuzione delle applicazioni distribuite permettendo di utilizzare e riutilizzare framework
  - **Middleware di infrastruttura**: Si occupa delle comunicazioni fra sistemi operativi diversi e della gestione delle concorrenza
  - **Middleware di distribuzione**: Permette di richiedere un servizio ad un altro nodo potendo inviare parametri, utilizzare lo stesso canale di comunicazione per diverse richieste, utilizzare una singola macro-richiesta che ne include diverse, modificare la semantica delle operazioni di invocazioni unicast come l'invocazione multicast, riconoscimento e gestione del malfunzionamento della rete
  - **Middleware per i servizi comuni di supporto**: Fornisce i servizi comuni a tutte le applicazioni distribuiti come la persistenza degli oggetti, la sicurezza e la gestisce delle transazioni

- **Remote Procedure Call (RPC)**: Un modello che permetteva ad una procedura in esecuzione su una macchina di invocarne un'altra che si trovasse si una macchina diversa rendendo possibile trasmettere i dati utilizzando uno stream di byte su socket e permettere che si superassero le differenze nella rappresentazione stessa dei dati da trasmettere.
Imponeva la sincronia delle invocazioni bloccando il client fino a quando il server non avesse risposto all'invocazione remota attraverso gli stub
- **Middleware ad Oggetti Distribuiti**: Estensione del modello RPC in modo da permettere l'invocazione di metodi oggetti remoti, alcuni esempi rappresentativi sono: **CORBA, Java RMI, .NET**
- **Middleware implicito**: Attraverso meccanismi di intercettazione delle richieste e delle interazioni tra gli oggetti, è in grado di fornire servizi comuni e trasversali ad ogni componente senza che essa debba esplicitamente richiederli
  - Il **Server** Fornisce i servizi in base alle richieste, in maniera trasparente allo sviluppatore software in modo da favorire una maggiore interoperabilità tra produttori di software diversi

- **Middleware esplicito**: Rappresenta quello che lo sviluppatore deve invocare direttamente all'interno del codice per accedere ai seervizi che offre, essendo di fatto meno trasparente ma al contempo più controllabile dallo sviluppatore


## Programmazione concorrente e  Thread in Java

- **Legge di Moore**: numero transistor raddopia ogni 2 anni 

- **Thermal Noise**: Effetto della termodinamica che disturba la crescita secondo la legge di Moore e conseguete difficoltà di raffreddamento dei troppi transistorù

- **Accesso in memoria**
  - **SingleCore**: Un singolo thread accede alla memoria
  - **MultiCore**: Più thread accedono alla memoria causando problemi di **cache missing, page faults e Context-switch dallo scheduler**

- **Multithread**: Permette di eseguire più thread contemporaneamente

- **Thread**: Si differenziano dai processi per la capacità di avere a disposizione e condividere gli stessi dati

  - **Thread in Java**: sono oggetti e quindi istanze di una classe Thread, esitono due metodi per istanziare un oggetto thread;
    - Extends Thread
    - Implements Runnable e uso del costruttore di Thread

    Altri metodi utili:
    - **Sleep**: Sospende il thread
    - **Interrupt**: Indicazione al fine di fermare il thread e far fare qualcosa altro e lancia l'eccezione **InterruptedException**
    - **Join**: Attende il completamento di un altro thread
  
  - **Comunicazione fra Thread**: Comunicano condividendo acceso ai campi e ai campi che contengono riferimenti ad oggetti.
  Per risolvere il problema interferenza di thread e inconsistenza della memoria è necessaria la sincronizzazione

  - **Problema accesso concorrente**: La race condition dipende dall'ordine di esecuzione di diversi thread, tuttavia questi errori rendono difficile il debugging
    - **Errori di incosistenza**: Si verifica quando i thread hanno visioni diverse dei dati, l'happen-before è una garanzia che la memoria scritta da un thread è visibile da un altro thread
- **Informazioni utili**
  - Ogni thread viene mappato ad un core, thread vivono all'interno del processo che li sta usando
  - Ogni applicativo ha un main thread
  - JVM è un porgramma capace di eseguire altri programmi scritti in java, è una specifica che può essere implemantata in una macchina virtuale java
  - Java non ha riferimenti fisica, ma gestisce i riferimenti relativi alla posizione java

- **Legge di Amdahl**: Lo speedup che si ottiene eseguendo il programma <em>X</em> su <em>n</em> processori, dove <em>p</em> è la parte di <em>X</em> che si può parallelizzare è: $$S=\frac{1}{1-p+p/n}$$
Per velocizzare un programma non basta investire sull'hardware ma è assolutamente necessario e molto più cost-effective impegnarsi a rendere la parte parallela predominante rispetto alla parte sequenziale
- **Sincronizzazione**: Risolve il problema di interferenza fra thread e di incosistenza alla memoria
  - **Metodo synchronnized**: Costrutto Java che evita che due esecuzioni dello stesso metodo sullo stesso oggetto siano interfogliate, sospendendo gli altri thread che invocano lo stesso metodo synchronnized, quando il thread esce dal metodo e si stabbilisce una relazione di **happen-before**
  - **Lock intrinsichi**: entità associata ad ogni oggetto e garantisce sia accesso esclusivo sia accesso consistente
  - **Azioni Atomiche**: Azioni che non sono innterrompibili e si completano del tutto
  - **Deadlock**: Si verifica quando due thread sono in attesa uno dell'altro
  - **Starvation**: Si verifica quando un thread non riesce a acquisire un accesso ad una risorsa condivisa
  - **Livelock**: I thread rispondono alle azione di un altro thread
  - **Thread-safe**: Un implementazione Java usabile su più thread
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

- **Legge di Amdahl**: Lo speedup che si ottiene eseguendo il programma <em>X</em> su <em>n</em> processori, dove <em>p</em> è la parte di <em>X</em> che si può parallelizzare è:

    $$S=\frac{1}{1-p+(p/n)}$$

- Per velocizzare un programma non basta investire sull'hardware ma è assolutamente necessario e molto più cost-effective impegnarsi a rendere la parte parallela predominante rispetto alla parte sequenziale
- **Sincronizzazione**: Risolve il problema di interferenza fra thread e di incosistenza alla memoria
  - **Metodo synchronnized**: Costrutto Java che evita che due esecuzioni dello stesso metodo sullo stesso oggetto siano interfogliate, sospendendo gli altri thread che invocano lo stesso metodo synchronnized, quando il thread esce dal metodo e si stabbilisce una relazione di **happen-before**
  - **Lock intrinsichi**: entità associata ad ogni oggetto e garantisce sia accesso esclusivo sia accesso consistente
  - **Azioni Atomiche**: Azioni che non sono innterrompibili e si completano del tutto
  - **Deadlock**: Si verifica quando due thread sono in attesa uno dell'altro
  - **Starvation**: Si verifica quando un thread non riesce a acquisire un accesso ad una risorsa condivisa
  - **Livelock**: I thread rispondono alle azione di un altro thread
  - **Thread-safe**: Un implementazione Java usabile su più thread

## Dai Socket agli Oggetti Remoti
- **Java** fornisce le API di programmazione di rete nel pacchetto **java.net** permettendo di definire classi per trattare gli indirizzi di rete
- La comunicazione sfrutta il protocollo **TCP/IP**
- **Socket TCP**: Endpoint di comunicazione bidirezionale sulla rete che unisce due programmi
  - Combinazione di indirizzo IP e numero di porta
  - **Server**: Attende che qualche client richieda la connessione
    - Classe **ServerSocket**
  - **Client**: Conosce indirizzo macchina su cui è in esecuzione il server e il numero di porta e deve comunicare indirizzo e numero di porta locale sul quale ricererà i dati
    - Classe **Socket**
  
- **Stream**: La comunicazione fra client e server avviene attraverso la scrittura e la lettura di stream associati con il socket
  - **ObjectInputStream**: Fornisce meccanismo di deserializzazione quando si riceve un oggetto precedentemente serializzato con **ObjectInputStream**
    - Gli oggetti che possono essere trasmessi su questo stream devoo implementare interfaccia Serializable o Externalizable
  
 - **Oggetto remoto**: Adottiamo il principio dell'astrazione introducedo uno **strato software** al fine di nascondere al programmatore il lavoro necessario all'invocazione di metodi remoti
    - **Strato software** composto da **stub** e **skeleton**
    - **Stub**: Oggetto che si trova sul client e rappresenta l'oggetto server verso il client e il suo scopo è couicare co lo skeleton che si trova lato server
      - Ogi chiamata del client verso i metodi remoti genera una comuicazione fra stub e skeleton
    
    - **Skeleton**: Si occupa di effettuare invocazione del metodo richiesto, ricevere il valore restituito e comunicarlo allo stub

    - **Interfaccia remota**: Definizione dei metodi che il **server** vuole esporre verso il client

    - I metodi remoti possono lanciare eccezioni
  
  - **Indirizzamento oggetto remoto**: Prevedere che ci sia un servizio disponibile che permetta di poter reperire a tempo di esecuzione l'indirizzo di un oggetto di cui sappiamo solo il nome

  - **Informazioni utili**
    - **Server**: Servesocket(9000)
        - Porta 9000 per accettare la richiesta
        - Poi si usa una altra porta fra quelle disponibili
    
    - **Client**: si usa una altra porta
  
    - **Accept**: Bloccante
  
## Java RMI
- Applicazione Java che permette lo sviluppo di applicazioni distribuite
  - **Invocazione trasparente di metodi remoti**: Meccanismo semplice per l'invocazione dei metodi remoti

  - **Integrazione in Java**: Integrazione naturale con il linguaggio Java, per favorire u ambiente familiare allo sviluppatore
    - **Garbage collector**: Gestione della memoria attraverso allocazione e deallocazione
      - Oggetto è deallocato se finiscono i riferimenti a quell'oggetto
  
  - **Non-Trasparenza della natura locale/remota di un oggetto**: Esistono caratteristiche che non devono essere nascoste

  - **Rendere minima la complessità fra client e server**

  - **Preservare la sicurezza da Java**: Uso di **sandbox**, ovvero, un ambiente dedicato e controllato nel quale le operazioni che il programma può eseguire non risulatano pericolose
    - **Linguaggio Java fortemente tipizzato**: Tutte le variabili hanno un tipo definito a tempo di compilazione e poche eseguite a run-time
    - **Garbage collector**: Evitare di esaurire lo spazio di indirizzamento
    - **Assenza puntatori**
    - **Accesso alla memoria determinato in fase di esecuzione**: Evita che si possano conoscere in anticipo le zone di memoria degli oggetti
    - **Limiti per array controllati a tempo di esecuzione**
    - **Classloader**: Si occupa di caricare la classe a tempo di esecuzione, anche da remoto.
    Carica le classi in un namespace separato in modo che le classi locali non vengano rimpiazzate.
    Fa in modo che ogni classe abbia il proprio namespace separato in modo da non avere interferenze con le altri classi. Può scaricare anche da remoto
    - **Bytecode verifer**: Controlla che sia conforme alle specifiche del linguaggio
    - **Security Manager**: Definisce i confini della sandbox.
    Viene interpellato dalla macchina virtuale per ciascuna azione potenzialmente pericolosa fornendo autorizzazioni sulla base della policy dell'utente.
    Viene caricato a tempo di esecuzione

- **Modalità di invocazione**: 
  - **Unicast**: Da un client verso un server
  - **Multicast**: Verso diversi server

## **Il modello a oggetti distribuiti di Java RMI**
- **Struttura delle classi di Java RMI**:
  - **java.rmi e java.rmi.server**: Contengono il meccanismo basilare di funzionamento delle invocazioni remote
  - **java.rmi.activation**: Per oggetti attivabili
  - **java.rmi.dgc**: Per la Distributed Garbage Collection
  - **java.ri.registry**: Per il servizio di localizzazione

- **Interfacce ed eccezione remote**: L'interfaccia remota deve estendere java.rmi.remote, ovvero un interfaccia marker (vuota).
Ogni metodo descritto nell'interfaccia remota deve soddisfare le seguenti condizioni:
  - Deve dichiarare esplicitamente eccezione **java.rmi.RemoteException**
  - I parametri remoti di un metodo devono essere dichiarati tramite la propria interfaccia remota, non utilizzando la classe dell'implementazione remota

- **Implementazioni remote**: Si può procedere in due modi:
  - Oggetto derivi da java.rmi.UnicastRemoteObject ereditando di conseguenza il comportamento di java.rmi.RemoteObject e java.rmi.RemoteServer

  - La classe deriva il comportamento da qualche altra classe e quindi vi è la necessità di occuparsi di esportare l'oggetto e di implementare la semantica di alcune operazioni di Object

## Meccanismo di invocazione remota
- **Riferimenti remoti**: Nel modello distribuito gli oggetti client iteragiscono con un oggetto detto stub che espone localmente esattamente le stesse interfaccie remote definite dall'oggetto remoto

- **Localizzazione e invocazione di oggetti remoti**: Per poter invocare il metodo di un oggetto remoto, l'oggetto client deve avere a disposizione il riferimento remoto.
Quest'ultimo può essere reperito in due metodi:
  - **Risulatato di altre invocazione di metodi**
  - **Servizio di directory**: Sfrutta meccanismo di name server nella classe java.rmi.Naming, che fornisce metodi per ricercare (lookup()), registrare (bind(), unbind(), rebind()) ed elencare (list()).
  Questo tool si può sfruttare pure come tool da linea di comando (rmiregistry)

- **Passaggio di parametri**: Unn metodo remoto può dichiarare solo parametri o valori restituiti che siano **serializzabili**.
  - Un oggetto locale passato come parametro o restituito come valore da un invocazione remota viene passata per copia.
  - Se invece viene passato un oggetto remoto, viene trasmesso solo un **riferimento remoto (stub)**, non una copia dell’oggetto.
  In questo modo RMI assicura **l’integrità referenziale**: tutte le JVM coinvolte condividono lo stesso riferimento remoto verso quell’oggetto, non copie separate.

## La differenza fra il modello a oggetti locale e quello remoto
- Modifica necessaria ad alcuni metodi della classe Object per il contesto distribuito attraverso java.rmi.server.RemoteObject ridefinendo equals(), hashCode(), toString()
- I client di oggetti remoti non iteragiscono con la implementazione dell'oggetto remoto ma solo con la interfaccia remota
- Gestione dei tipi permette casting Java di un oggetto remoto ad una qualsiasi delle interfaccie remote supportate
- Invocazione di metodo remote forzano il programmatore a dover gestire esplicitamente i fallimenti di invocazioni di metodi remoti

## La architettura di Java RMI
- **I tre layer della architettura**: Strutturato in tre layer 
  - **Stub/Skeleton**: comprende stub lato client e skeleton lato server
    - **Stub**:
      - Inzia la connessione con la macchina virtuale remota, chiamando il remote reference layer
      - Effettua il marshalling verso uno stream di marshal
      - Attende il risulato della invocazione
      - Effettua l'unmarshalling dei valori restituiti
      - Restituisce il valore verso l'oggetto client che ha richiesto la invocazione

    - **Skeleton**: Incaricato di effettuare il dispatching verso l'oggetto remoto
      - Quando riceve una invocazione in entrata effettua unmarshalling del remoto reference layer dei parametri per l'invocazione
      - Invoca il metodo sulla implementazione che si trova nella sua JVM
      - Effettua il marshalling del valore restituito verso chi ha invocato il metodoà
    
    - Vengono creati dall'RMI compiler rmic

  - **Remote Reference Layer**: Specifica il comportamento della invocazione e la semantica del riferimento permettendo di interfacciare il livello di trasporto con quello di stub/skeleton
    - **Invocazione unicast**: Un singolo client e un singolo server, implementata da Java RMI
    - **Invocazioni multicast**: Singolo client fa richiesta ad una batteria di server al fine di garantire la ridondanza
    - **Invocazione di oggetti attivabili**: Invocazioni potrebbbero essere effettuate da un oggetto remoto che è persistente, ovvero attivo se arrivano invocazioni
    - **Invocazione con riconnessione**: Invocazioni alternativese se l'oggetto remoto non risponde
  - **Transport Layer**: Si occupa della connessione e della sua gestione, gestione di una tabella degli oggetti remoti che risiedono nello spazio di indirizzamento
  - **Passi compiuti da Java RMI**: 
    - Client invoca un metodo su un oggetto server remoto, facendo uso dello stub
    - Lo stub implementa l'interfaccia remota dell'oggetto remotoe inoltra la richiesta all'oggetto server attraverso il remote reference layer del client
    - Il remote reference layer del client si occupa di gestire la semantica delle invocazione remota lato client
    - Il livello di trasporto si occupa si stabilire la connessione con la macchina remota e della successiva gestione della connessione, curando il dispatching (recapito) delle invocazioni verso gli oggetti remoti
    - Il livello di reference del server si occupa di inoltrare la richiesta allo skeleton e di curare la semantica delle invocazioni lato server

## Distributed Garbage Collector
  - Tiene traccia di tutti i riferimenti all'oggetto remoto che risultano essere attivi
  - Al termine delle invocazioni il client invia un messaggio di dereferenziazione dell'oggetto e quindi passabile di eliminazione alla prossima invocazione della garbage collector
  - Per evitare problemi di memory leak nel caso di un malfunzionamento viene introdotto un meccanismo di lease
    - **Meccanismo di lease**: Ogni riferimento che viene assegnato al client ha un tempo di vita specificato
  
## Caricamento dinamico delle classi
- L'oggetto remoto può trovarsi nella situazione in cui non conosce esattamente come è strutturata la classe di cui l'oggetto è istanza
- Per evitare questo problema si fa il marshalling degli oggetti per la trasmissione, venendo annotati con il codebase di un server WWW da dove è possibile trovare la definizione della classe
- Quando viene effettuato l'unmarshalling dell'oggetto il Classloader cerca di risolvere il nome della classe nel suo contesto e in caso non sia possibile viene acceduta la definizione della classe per poter ricreare l'oggetto all'altro capo della cominucazione

## Il meccanismo di marshalling usato da Java RMI
- **Marshalling**: permette di effettuare una serializzazione modificando la semantica dei riferimenti remoti e aggiungendo informazioni all'oggetto
- Specializzazione del meccanismo di serializzazione per il marshalling avviene modificando tre metodi della classe **ObjectOutputStream**
  - **Il metodo replaceObject()**
  - **Il metodo enableReplaceObject()**: Restituisce un boolenao e stabbilisce se la istanza deve oppure no specializzare il meccanismo di serializzazione
  - **Il metodo annotateClass()**: Permette di aggiungere informazioni addizionali sulla classe

## Il processo di creazione di un programma Java RMI
- **Definizione interfaccia remota**:
  - Deve derivare dalle interface mark-up Remote
  - Tutti i metodi remoti devono lanciare la eccezione java.rmi.RemoteExcpetion

- **Implementazione del server**: Un oggetto remoto in Java deve essere istanza di una classe
  - Implementi una o più interfacce remote
  - Derivi da java.rmi.UnicastRemoteObject

- **Compilazione con lo stub compiler rmic**: Viene eseguito sul file .class del nostro server e genera lo stub

- **Servizio di naming**: Chiamato **rmiregistry**, viene lanciatp prima di eseguire il server, in quanto fra le prime operazioni il server farà in modo di registrarsi presso il servizio di naming con un etichetta
  - Deve essere lanciato dalla directory dove è contenuto il .class dello stub

- **Esecuzione del server**: Scelta della policy abbastanza complessa
  - Tutto permesso: 
  ```Java
  grant(){
    permission java.security.AllPermision;
  };
  ```
  - Dobbiamo fornire su linea di comando alla macchina virtuale la indicazione del file di policy da seguire tramite
  ```Java
  java -Djava.security.policy=policyallxxx
  ``` 
- **Registrazione del server sul servizio di naming**: Registrazione del server sul servizio di naming attraverso metodi del package java.rmi.Naming

- **Implementazione del client**: I servizi di java.rmi.Naming permettono di ottenere un riferimento remoto ad un oggetto remoto

## Sicurezza e policy del Security Manager
- **Security Manager**: Delimita i confini della sandbox, una area protetta i cui confini sono ben definiti e precisi
- **Il file di policy** specifica esplicitamente le possibili vie di uscita dalla sandbox
- RMI fornisce un proprio Security Manager, sottoclasse di SecurityMnager, chiamato **RMISecurityManager**
```Java
  System.setSecurityManager(new SecurityManager());
``` 
```Java
  //oppure
  java -Djava.security.manager=java.rmi.RMISecurityManager
``` 

## Informazioni utili sull'Esempio di Helloword
- javac compila bytecode
- java macchina virtuale
- Tip Netbeans:
  - new project java with ant-> java application
  - nei .class del progetto devo copiare il path del bin della jdk
  - lancio rmi registry attraverso cd nel .class del progetto
  - build
  - C:\Users\samue\Documenti\NetBeansProjects\HelloWordRMI\build\classes>"C:\Program Files\Java\jdk-1.8\bin\rmiregistry.exe" 1099
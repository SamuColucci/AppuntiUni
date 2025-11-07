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

- **Thermal Noise**: Effetto della termodinamica che disturba la crescita secondo la legge di Moore e conseguete difficoltà di raffreddamento dei troppi transistor

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
  
  - **Comunicazione fra Thread**: Comunicano condividendo acceso ai campi che contengono riferimenti ad oggetti.
  Per risolvere il problema interferenza di thread e inconsistenza della memoria è necessaria la sincronizzazione

  - **Problema accesso concorrente**: La race condition dipende dall'ordine di esecuzione di diversi thread, tuttavia questi errori rendono difficile il debugging
    - **Errori di incosistenza**: Si verifica quando i thread hanno visioni diverse dei dati, l'happen-before è una garanzia che la memoria scritta da un thread è visibile da un altro thread
- **Informazioni utili**
  - Ogni thread viene mappato ad un core, thread vivono all'interno del processo che li sta usando
  - Ogni applicativo ha un main thread
  - JVM è un programma capace di eseguire altri programmi scritti in java, è una specifica che può essere implemantata in una macchina virtuale java
  - Java non ha riferimenti fisici, ma gestisce i riferimenti relativi alla posizione java

- **Legge di Amdahl**: Lo speedup che si ottiene eseguendo il programma <em>X</em> su <em>n</em> processori, dove <em>p</em> è la parte di <em>X</em> che si può parallelizzare è:

    $$S=\frac{1}{1-p+(p/n)}$$

- Per velocizzare un programma non basta investire sull'hardware ma è assolutamente necessario e molto più cost-effective impegnarsi a rendere la parte parallela predominante rispetto alla parte sequenziale
- **Sincronizzazione**: Risolve il problema di interferenza fra thread e di incosistenza alla memoria
  - **Metodo synchronized**: Costrutto Java che evita che due esecuzioni dello stesso metodo sullo stesso oggetto siano interfogliate, sospendendo gli altri thread che invocano lo stesso metodo synchronnized, quando il thread esce dal metodo e si stabilisce una relazione di **happen-before**
  - **Lock intrinsichi**: entità associata ad ogni oggetto e garantisce sia accesso esclusivo sia accesso consistente
  - **Azioni Atomiche**: Azioni che non sono interrompibili e si completano del tutto
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
  - **ObjectInputStream**: Fornisce meccanismo di deserializzazione quando si riceve un oggetto precedentemente serializzato con **ObjectOutputStream**
    - Gli oggetti che possono essere trasmessi su questo stream devoo implementare interfaccia Serializable o Externalizable
  
 - **Oggetto remoto**: Adottiamo il principio dell'astrazione introducedo uno **strato software** al fine di nascondere al programmatore il lavoro necessario all'invocazione di metodi remoti
    - **Strato software** composto da **stub** e **skeleton**
    - **Stub**: Oggetto che si trova sul client e rappresenta l'oggetto server verso il client e il suo scopo è comunicare con lo skeleton che si trova lato server
      - Ogni chiamata del client verso i metodi remoti genera una comuicazione fra stub e skeleton
    
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
      - Effettua il marshalling del valore restituito verso chi ha invocato il metodo
    
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
- Quando viene effettuato l'unmarshalling dell'oggetto il Classloader cerca di risolvere il nome della classe nel suo contesto e in caso non sia possibile viene acceduta la definizione della classe per poter ricreare l'oggetto all'altro capo della comunicazione

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

## Java EE 7 at a Glance
- **Introduzione Java EE**: Fornisce un modo standard per gestire le transazioni con Java Transaction API, messaggiare con Java Message Service, o la persistenza con Java Persistence API
- **Architecture**: I Containers sono degli ambienti Java EE runtime che provvedono alcuni servizi per i componenti che hostano come life-cycle management, dependency injection, concurrency, ecc...
- **Components**
  - **Applets**: Applicazioni GUI che sono eseguite su un browser web
  - **Applications**: Sono programmi che vengono eseguiti sul client
  - **Web applications**: Sono eseguiti in un web container e risponde ad una richiesta HTTP da un web clients
  - **Enterprise applications**: Sono eseguiti in un EJB container
    - **EJB**: Sono componenti container-managed per processare transazioni di logica di business
- **Containers**: Nascondono le complessità tecniche e migliorare la portabilità
  - **Applet Containers**: Usa una modello di sicurezza sandbox nel quale il codice eseguito nella "sandbox" non è autorizzato ad uscirne, impedendo ad ogni codice scaricato in locale di accede al sistema locale delle risorse
  - **The Application Client Container(ACC)**: Include un set di classi Java, librerire e altri file al fine di permettere injection, security management e il servizio di naming verso l'applicazione Java SE
    - Comunica con EJB con RMI-IIOP e con il web container attraverso HTTP
  - **Web Container**: Fornisce i servizi di base per gestire ed eseguire le componenti web
    - Responsabile di installare, inizializzare e invocare Servlet e supportare i protocolli HTTP e HTTPS
  - **EJB Container**: Responsabile della gestione ed esecuzione dei bean enterprise che contengono le logiche di business della tua applicazione Java EE
    - Crea una nuova istanza di EJB e ne gestisce il ciclo di vita e i servizi
- **Services**: I container forniscono servizi di base per i loro componenti distribuiti
  - **Java Transaction API**: Offre un servizio di demarcazione API usato dal container e dall'applicazione e offre un interfaccia fra il transaction manager e il resourse manager al livello di Service Provider Interface(SPI)
  - **Java Persistence API**: Standard API per object-relational mapping(ORM)
  - **Validation**: Fornisce funzionalitò di dichiarazione e convalida al livello di metodi e classi
  - **Java Message Service**: Permette alle componenti asincrone di di comunicare
  - **Java Naming and Directory Interface**: Usata per accedere al sistema di naming e alle directory del sistema
  - **JavaMail**: Possibilità di inviare email
  - **JavaBeans Activation Framework**: Fornisce un framework per gestire dati di differenti MIME
  - **XML processing**: Supporto per fare parsing di documenti XML
  - **JSON processing**: Permette alle applicazioni di generare, parsare, trasformare e fare query JSON
  - **Java EE Connector Architecture**: Componenti che ti permettono di accedere da EIS a Java EE come database, mainframe
  - **Security services**
  - **Web services**: Supporto per SOAP
  - **Dependency injection**
  - **Management**
  - **Deployment**
  ![Services](img/servicesJavaEE.png)
- **Packaging**: Per eseguire il deploy in un container, i componenti devono essere prima impacchettati in un formato standard di archivio
![Packaging](img/Packaging.png)

- **Annotaions and Deployment Descriptors**: Sfrutta il concetto di programmazione dichiarativa attraverso i Metadati al fine di dichiarare e modificare  i servizi e le informazioni ad essi associate insieme a classi Java, interfacce, costruttori, metodi
  - I Metadati si possono dichiarare usando un deployment descriptor

## Context and Dependency Injection
- **Inversion of control(IoC)**: Il container prende il controllo del tuo business code e fornisce servizi tecnici
- **Understanding Beans**
  - **Managed Beans**: Sono oggetti gestiti da container che supportano una serie di sevizi di base come injection delle risorse, gestione ciclo di vita e interception
  - **Beans**: Sono oggetti CDI che sono costruiti sulla base dei modelli Managed Bean
- **Life-Cycle Management**: Se vuoi runnare un CDI bean in un container non puoi utilizzare la keyword new, per questo motivo hai bisogno di fare inject sul bean e il container si occupa di gestire il suo ciclo di vita
![Cycle](img/ManCycle.png)
- **Interception**: Sonno usati per interporsi nelle invocazione di metodi di business
  - Vengono chiamati automaticamente dal container quando un metodo di un Managed Bean viene invocato
- **@Injection**: Java EE è un ambiente gestito è il container a fare inject di un riferimento per conto proprio
  - CDI dependency injection è l'abilità di fare inject di bean in altri modi sicuro
- **Injection Points**: L'annotazione @Inject definisce un injection point che viene injectato durante l'instansazione del bean
- **Default Injection**: Informa CDI a fare l'inject con la l'implementazione del bean di default
![DefaulInjection](img/deafultInjection.png)
- **Qualifiers**: Un qualifier rappresenta una semantica associata ad un tipo che viene soddisfatta da qualche implementazione di quel tipo
![Qualifier](img/qualifier.png)
- **Producers**: Permette di fare inject di CDI Bean in altri CDI bean. Di default non puoi fare inject di classi come java.utili.Date o java.lang.String o tipi primitivi perchè si trovano nel pacchetto nel file rt.jar e questo archivio non contiene un file bean.xml
  - Se un archivio non ha il file bean.xml sotto META-INF, CDI non attiverà la scoperta dei bean e i POJO non verranno trattati come bean e di conseguenza non sarà possibile fare inject
- **Disposer**: Alcuni metodi producono oggetti che richiedono una distruzione esplicita come connessioni Java Database Connectivity(JDBC), sessioni JMS, o entity manager
  - La distruzione viene effettuata attraverso i metodi disposer con l'annotazione @Disposer
    - Devono avere un parametro dispose dello stesso tipo e un qualifiers come il tipo di ritorno come il metodo produttore di ritorno
    - Il metodo disposer viene chiamato in automatico quando il client context termina e il parametro riceve l'oggetto prodotto dal metodo produttore
- **Scopes**: Non c'è un modo manuale per rimuovere un bean dal context
  - **Application Scoped**: Compre l'intera durata dell'applicazione
    - Il bean viene creato una volta per tutta la durata dell'applicazione e viene eliminato quando l'applicazione viene terminata
  - **Session Scoped**: Si estende su più richieste HTTP o per numerose invocazioni per una singola sessione utente
    - Viene cancellato quando la sessione termina
    - Deve essere serializzabile
  - **Request Scope**: Corrisponde and un singola richiesta HTTP o all'invocazione di un metodo
    - Il bean viene creato per la durata dell'invocazione del metodo e viene scartato quando il metodo termina
  - **Conversation Scope**: Si estende a più invocazioni nei limiti della sessione con un inizio e fine determinate dalle applicazioni
    - Deve essere serializzabile
  - **Dependent pseudo-scope**: Un dependent bean viene creato ogni volta che viene injectato e il riferimento è rimosso quando il target dell'inject è rimosso
    - Non vengono mai condivisi tra differenti client o differenti injection point
    - Ciclo di vita gestito da un altro bean
- **Interceptors**: Permettono di aggiungere preoccupazioni trasversali ai tuoi bean
  - **Constructor-level interceptors**: Associati con un costruttore della classe target
  - **Method-level interceptors**: Associati con uno specifico metodo di business
  - **Timeout method interceptors**: Si interpongono su un metodo di timeout con @AroundTimeout
  - **Life-cycle callback**: Si interpongono con gli eventi di callback del ciclo di vita di una istanza target
  - **Target Class Interceptors**: Scope dell'interceptor 
  ![Interceptor](img/interceptor.png)
  - **Life-Cycle Interceptors**: Con una annotazione di callback puoi informare il container a invocare un metodo durante una certa fase di vita
    - Ti permettono di isolare parte del codice in una classe e invocarlo quando l'evento di life-cycle è attivato
  - **Interceptor Binding**: Annotazione @InterceptorBinding che lega la classe interceptor ad un bean con nessuna diretta dipendenza fra le due classi
- **Decorators**: Prendere una classe e wrappare un altra classe attorno ad essa
  - Quando chiami una classe decoratore passi attraverso il decoratore che circando la classe target prima di arrivare alla classe target stessa
  - Aggiungono addizionale logica ai metodi business
- **Events**: Permettono ai bean di interagire senza una dipendenza nel tempo di compilazione
  - Eventi sono lanciati dagli **event producer** e sottoscritto dagli event observers
    - Un observer è un bean con uno o più metodi observer
      - Ognuno dei metodi observ prende un evento di uno specificato tipo come parametro che viene annotato con @Observers
      - I metodi observer viene notificato su un evento se l'evento object corrisponde il tipo di evento e qualifier opzionale
- **Transaction Support in Managed Beans**: Con la declarative transaction su una classe o un metodo enterprise bean, il container può creare una nuova transaction(REQUIRED, REQUIRES_NEW), eredita da una esistente (SUPPORT), o lancia una eccezione se la transazione non è stata ancora creata (MANDATORY)
  - Il container intercetta la chiamata al metodo corrispondente e si interpone le operazioni necessarie per inizializzare, sospendere o completare le transazioni JTA
  - **javax.transaction.Transactional annotation**: Fornisce all'applicazione l'abilità di controllare i confini della transazione su un CDI Managed Beans
  - Questo fornisce la semantica degli attribuiti della transazione EJB nella CDI senza dipendenza su un altro servizio EJB come RMI o tempo di servizio
## Java Persistence API
- **Entity**: Sono oggetti che vivono brevemente in memoria e in modo persistente nel database
  - ORM permette la manipolazione delle entity
  - Annotazione @javax.persistence.Entity che permette al provider di riconscere la classe come una classe persistente e non solo come un POJO
  - Annotazione @javax.persistence.Id deve denotare una semplice chiave primaria
  - Entità della classe devono avere un costruttore no-arg pubblico o protetto
  - Non deve essere una enum o una interfaccia
  - Non deve essere final
  - La classe enity deve implementare Serializable
- **Object-Relation Mapping**: Permettono di delegare a tool esterni o a framworrk le azioni necessarie per creare una corrispondenza fra oggetti e tabelle, permettendo allo sviluppatore l'uso delle entità invece delle tabelle
  - I metadati descrivono il mapping e premettono al provider della persistenza di riconoscere una entity e di interpretare il mapping
  - @Entity per modificare il comportamento di default
    - Nome della entity è mappato al nome di una tabella relazionale
    - Nome degli attribuiti è mappato al nome di una colonna
      - @Column per cambiare il default mapping
  ![ORM](img/orm.png)
- **Querying Entities**: javax.persistence.Entity è l'API responsabile di gestire le entity, permettendo di leggere, modificare ed eseguire operazioni CRUD e anche complesse query con JPQL
![Querying](img/querying.png)
- **Persistet Unit**: Indica all'entity manager il tipo di database da usare e i parametri della connessione definiti nel persistence.xml
- **Entity Life Cycle and Callbbacks**: Le Entity sono classi POJOs, quando l'entity manager gestisce le POJOs, loro hanno una chiave persistente e il database sincronizza il loro stato, quando non sono gestite sono semplici classi Java
  - Le operazioni sono persisting, updating, removing, loading e hanno un pre e post evento
![Entity Life](img/Enitylife.png)

## Object-Relational Mapping
- **Elementary Mapping**
  - **Table**: Si stabilisce per default che il nome della entity e della tabella sia uguale
  - **@Table**: @javax.persistence.Table permette di cambiare il valore di default legato ad una tabella
    - **@UniqueConstraint**: Puoi definire vincoli addizionali in aggiunta a @Table
  - **@SecondaryTable**: Permette di condividere dati attraverso tabelle multiple o tabelle secondarie attraverso @SecondaryTable
  - **@Id and @GeneratedValue**: Una chiave primaria deve corrispondere ad un singolo attributo di una classe entity
    - **@Id**: Denota una chiave primaria javax.persistence.Id
    - Quando crei una entiy il valore del suo identificatore viene generato in automatico dall'applicazione o automaticamente dal persistence provider atraverso **@GeneratedValue**
      - **SEQUENCE**: Uso sequenza SQL
      - **IDENTITY**: Identificare la colonna
      - **TABLE**: Indica al persistence provider di memorizzare il nome della sequenza e il suo corrente valore in una tabella, incrementando il valore ogni singola volta che una nuova istanza dell'entity è persistente
- **Relationship Mapping**
  - **Entity Relationships**: La cardinalità fra due entity può essere:
    - @OneToOne
      - In JPA una chiave esterna di una colonna è chiamata join column
      - @JoinColumn permette di modificare il mapping della chiave esterna
    - @OneToMany
    - @JoinTable permette di modificare il mapping della chiave esterna
    - @ManyToOne
    - @ManyToMany
    - Ogni annotazione può essere usata in modo monodirezionale e bidirezionale
## Argomenti extra esame
- **Fetching Relationships**: Puoi ottimizzare il caricamento dei dati dal database quando l'entity è letta (eagerly) o viene acceduta (lazily)
- **@OrderBy**: Permette ordinamento dinamico, quando recuperi l'associazione
- **@OrderColumnn**: Permette di mantenere la lista ordnniata in una colonna separata inn cui è memorizzato l'indice
  - **EAGER**: Porta tutti i dati nella memoria usando un piccola ammontare di accessi al database
  - **LAZY**: Controlli quale oggetto viene caricato, ma non hai accesso al database in qualsiasi momento
- **Inheritance Mapping**: @Inheritance usata sulla entity root per indicare le strategie di mapping per se stessa e per le classi foglia
  - JPA permette alle classi figli di sovrascrivere gli attribuiti della classe radice
  ![Inheritace](img/inheritance.png)
  - **Single-Table-per-Class Hierarchy Strategy**: Default inheritace mapping
    - Tutte le entity sono mappate ad una singola tabella
    - **@DiscriminatorColumn**: Permette di cambiare il nome del datatype
- **Joined-Subclass Strategy**: Ogni entity viene mappate sulla sua tabella
  - Entity root è mappata alla tabella che definisce la chiave primaria usata da tutte le tabella della gerarchia
- **Table-per-Concrete-Class Strategy**: Tutti gli attributi dell'entity root sono appati alle colonne delle tabelle delle entity figli
- **@Ovveride Atrributes**: @AttributeOverride per fare override del mapping della colonna
- **Abstract Entity**: Una entity che non può essere direttamente istanziato con la new keyword
- **Nonentity**: Classi transient, ovvero POJOs
  - Permettono di definire una comune struttura dati per le entity foglia
- **Mapped Superclass**: Non sono gestite dal persistence provider e fornisce informazioni sulla inheritence attraverso @MappedSuperclass
## Managing Persistent Object
- **Entity Manager**: Gestisce lo stato e il ciclo di vita delle entities in un cotesto persistente
  - Crea e rimuove istanze di entity persistenti e trova entities in base alla loro chiave primaria
  - Locka entities per proteggerle da accessi concorrenti
  - Entities diventano managed grazie al entity manager quando hai bisogno di caricare o inserire dati nel database
  - Entity managed permette di eseguire operazioni persistenti e si sincronizza automaticamente con il database
  - Quando una entity è detached ritorna un POJO
  - Interfaccia javax.persistence.EntityManager permette alla API di manipolare le entity
  - Configurazione legata alla factory che lo crea
  - **Obtaining a Entity Manager**
    - In un ambiente Java EE per ottenere un entity manager si usa l'annotazione @PersistenceContext oppure attraverso un lookup JNDI, il cui ciclo di vita viene gestito dal container
- **Persistency Context**: Unn insieme di istanze di managed entity gestite in un dato momento per una data transazione
  - Solo una istanza della entity con la stessa identità persistente può esistere nel persistence contex
  - Entity manager aggiorna o consulta il persistence context ogni volta che il metodo dell'interfaccia javax.persistence.EntityManager viene chiamato
  - Di default gli oggetti vivono nel contesto persistente per la duranta della transazione
  - **Persistence Unit**: Detta le impostazioni per connettere il database alla lista di entity che devono essere gestiste nel contesto persistente
    - File XML persistence.xml in META-INF definisce la persistence unit
  ![Persistence Context](img/persistencecontext.png)
- **Manipulating Entities**: Quando manipoli singole entities, l'interfaccia EntityManager può essere vista come un Data Access Object(DAO) che permette operazioni CRUD sulle entity
- **Persisting an Entity**: Inserire dati nel database quando i dati non esistono già
  - Crea una new entity settando i valori degli attributi
  - Lega le entity dove ci sono le associazioni
  - Chiama EntityManager.persist()
- **Finding by ID**
  - EntityManager.find() -> ritorna la entity altrimenti null
  - EntityManger.getReference()
     - Recupera un riferimento ad una entity ma non i suoi dati
- **Removing an Entity**
  - EntityManager.remove()
  - Una volta rimossa, la entity è eliminata dal database, scollagata dall'entity manager e non può essere sincronizzata più con il database
- **Orphan removal**: Per la consistenza dei dati gli orphans non sono desiderabili potendo avere righe non referienzate a nessuna altra tabella
  - Con JPA puoi il peristence provider a rimuovere automaticamente gli orphans
- **Syncronizing with the Database**
  - **Flushing an Entity**
    - EntityManager.flush()
    - Il peristence provider può esplicitamente forzare la flush dei dati nel database ma non committa la transazione
  - **Refreshing an Entity**
    -  EntityManager.refresh()
    - Usato per sincronizzare i dati nel lato opposto della flush, sovreascrive lo stato corrente della entity managed con i dati del database
- **Context of the Persistence Context**: Il persistence context contiene le entity managed
  - Con l'innterfaccia EntityManager puoi controllare se un entity viene managed, è detach, oppure pulire tutte le entity dal pesistence context
    - **Contains**
      - EntityManager().contains() -> ritorna un Booleanche ti permette di controllare se una istanza di una entity è al momento managed dall'entity manager nel corrente persistence context
    - **Clear and Detach**
      - **Clear**: clear() -> rende tutt le le entities managed in detached
      - **Detach**: detach(Object entity) -> Rimuove l'entity passata dal peristence context
    - **Merging an Entity**: Le entity detached non sono più associate nel persistent context, ma continuano a vivere
      - Per riassociarle al peristent context hai bisogno di riassociarle attraverso con em.mmerge(customer) all'interno della transazione
    - **Updating an Entity**: Se le'entity è managed la sincronizzazione è automatica altrimenti hai bisogno di eseguire una merge
    - **Cascading Events**: Quando una operazione viene eseguita su un entity si propaga a tutte le sue associazioni
### JPQL
- **JPQL**: Usato per definire ricerche su enities persistenti indipendentemente dal database sottostante
  - Query language che usa entities o collezioni di entities
  ```java
  SELECT <select clause>
  FROM <from clause>
  [WHERE <where clause>]
  [ORDER BY <order by clause>]
  [GROUP BY <group by clause>]
  [HAVING <having clause>]
  }
  ```
  - **Select**
    ```java
    SELECT [DISTINCT] <expression> [[AS] <identification variable>]
    expression ::= { NEW | TREAT | AVG | MAX | MIN | SUM | COUNT }
    ```
      - Un costruttore può essere usato nella SELECT e ritorna una istanza della classe inizializzata con il risultato della query
  - **From**: Definisci le entity dichiarando variabili identificative
  - **Where**: Espressione condizionale per restringere il risultato
  - **Binding Parameter**: Permette cambiamento dinamico dei parametri atraverso parameter-binding sintax
    - **Positional Parameters**: Usano ? seguito da un intero 
    - **Named Parameters**: Sono designati da identificatori di stringhe che hanno come prefisso :
  - **Subqueries**: Una SELECT query con un espressione condizionale WHERE o con una clausola HAVING
    - il risultato viene controllato e interpretato nell'espressione condizionale della main query
  - **Order By**: Clausola che si applica a tutte le entities o ai valori ritornati da una SELECT in ordine
  - **Group By**: Aggragazione dei valori risultati in base a delle proprietà 
  - **Having**: Definisce un filtro applicabile dopo che il risulato della query è stato raggruppato
  - **Bulk Delete**: Permette di eleminare un gran numero di entities in una solo operazione
    ```java
    DELETE FROM <entity name> [[AS] <identification variable>]
    [WHERE <where clause>]
    ```
  - **Bulk Update**: 
    ```java
      UPDATE <entity name> [[AS] <identification variable>]
      SET <update statement> {, <update statement>}*
      [WHERE <where clause>]
    ```
- **Queries**: Esistono 5 tipi di queries
  - **Dinamic queries**: Vengono definite al volo in base alle esigenze dell'applicazione
    - EntityManager.createQuery(String JPQLquery) -> ritorna un oggetto Query
  - **Named queries**: Si differenziano dalle dinamic queries essendo statiche e non modificabili
    - @NamedQueries
    - EntityManager.createNamedQuery() -> ritorna una query o un TypeQuery
  - **Criteria API**: javax.persistence.criteria permette di scrivere query in maniere object-oriented
    ```java
      CriteriaBuilder builder = em.getCriteriaBuilder();
      CriteriaQuery<Customer> criteriaQuery = builder.createQuery(Customer.class);
      Root<Customer> c = criteriaQuery.from(Customer.class);
      criteriaQuery.select(c).where(builder.equal(c.get("firstName"), "Vincent"));
      Query query = em.createQuery(criteriaQuery).getResultList();
      List<Customer> customers = query.getResultList();
    ```
  - **Native queries**: Hanno come parametro uno statement SQL e ritorna una istanza Query per eseguire quello statement
    - Non sono portabili da un database ad un altro
    - Il risultato viene convertito in automatico in una entity
    - @NamedNativeQuery
  - **Stored procedure queries**: Salvate nel database ed eseguite in esso
    - @NamedStoredProcedureQuery
    - Migliore performance dovita alla precompilazione della stored procedure
    - Codice statico
    - Riduce l'ammontare di dati passato nella rete
    ![Query](img/query.png)
  - getResultList() -> Restituisce una lista di risultati
  - getSingleResult() -> Restituisce un singolo risultato
    - Lancia NonUniqueResultException se è stato trovato più di un risultato
  - executeUpdate() -> Eseguire la bulk query e ritorna il numero di righe coinvolte nella query
  - setParameters() -> Settare i parametri prima di eseguire una query
  - Flush indica al persistence provider come gestire i cambiamenti e le query in sospeso
    - AUTO
    - COMMIT.AUTO
  - setLockMode(LockModeType) -> Permetteno una lettura ripetibile
- **Entity Life Cycle**: Quando una entity viene istanziata è solo un POJO per la JVM e può essere usata come un normale oggetto dall'applicazione
  - Quando l'entità diventa persistente viene definita managed e viene automaticamente sincronizzato con il database sottostante
  - Quando crei una nuova istanza di una entity usa l'operatore new
    - Per renderlo persistente usi EntityManager.persist() diventano un entity managed e viene sincronizzato con il database
    - Un altro modo per rendere l'entity managed è caricarlo dal database usando EntityManger.find() oppure creare una query JPQL
    - Puoi chiamare EntityManager.remove() per non essere più managed e effettua la sua rimozione dal database
      - L'oggetto continua a vivere fino a quando il garbage collector non lo elimina
      - Puoi fare la reattach attraverso EntityManager.merge() per rendere nuovamente 
  ![Entity Life Cycle](img/EntityLifeCycle.png)
- **Callbacks**: Ogni ciclo di vita ha dei "pre" e "post" event che possono essere intercettati dall'entity manager per invocare un metodo di business
  - Prima di inserire una entity nel database l'entity manager chiama un metodo annotato come @PrePersist
    - Se non lancia l'eccezione viene reso persistente
    - Viene invocato il metodo annotato come @Postpersist
    - Non puoi avere due @PrePersist nella stessa entity
  - Un metodo annotato con @PostLoad viene chiamato quando una entity è caricato dal database
  - Un metodo può lanciare solo unchecked (runtime) exception
  - Un metodo può invocare JDI, JDBC, JMS, e EJB ma non può invocare nessun Entity Manager o operazioni Query
  - Se un metodo è specificato nella superclasse verrà invocato prima del metodo della classe figlio
  ![Callback](img/Callback.png)
  ![Callback2](img/Callback2.png)
-  **Listeners**: Entity listeners sono usati per estrarre le logiche di business in una classe separata e condividerle fra le entity
  - Un POJO nel quale puoi definire uno o più metodi life-cycle callback
  - Classe deve avere il costruttore no-arg
  - Se invocato sul metodo deve avere accesso allo stato della entity e deve avere il tipo del parametro compatibile con l'entity
  - @EntityListeners
    - Quando ce ne sono più di uno il persistence provider li itera uno ad uno
  - Un metodo può lanciare solo unchecked (runtime) exception
  - I listeners definiti nella superclasse vengono invocati prima di quelli nella classe figlio

## Enterprise JavaBeans
- **Understanding Enterprise JavaBean**: Sono componenti server-side che incapsulano la logica di business  e si occupa delle transazioni e della sicurezza
  ![EJB](img/EJB.png)
- **EJB Container**: Ambiente runtime che fornisce
- **Type of EJBs**: Un session bean può essere di vari tipi
  - **Stateless**: Non contiene nessuna conversazione di stato fra i metodi e un istanza può essere usata per qualsiasi client
    - Usato per task che si concludono con una singola chiamata di un metodo
  - **Staful**: Contengono uno stato di conversazione, deve essere mantenuto fra i metodi per un singolo utente
  - **Singleton**: Un bean singolo condiviso fra client e sopporta accesso concorrente
    - Il container deve assicurarsi che una sola istanza esista per una intera applicazione
  - **Message-driven beans**:  Sono usati per essere integrati con sistemi esterni ricevendo messaggi asincroni usando JMS
  - Gli EJB possono essere usati come endpoint per servizi web
- **Services Given by the Container**
  - **Remote client communication**: EJB client può invocare metodi remoti attraverso protocolli standard
  - **Dependency injection**: Il container può fare diverse inject in un EJB
  - **State management**: Per stateful session bean, il container gestisce il loro stato in modo trasparente
  - **Pooling**: Per bean stateless e MDBs, il container crea un pool di istanze che possono essere condivisi da client multipli
  - **Component life cycle**: Il container è responsabile della gestione del ciclo di vita di ogni componente
  - **Messaging**: Il container permette al MDBs di ascoltare la destinazione e consuma i messaggi senza troppi JMS plumbing
  - **Transaction management**: Con un declarative trasaction management, EJB può usare annotazioni per informare il container sulla policy di transazione che bisogna usare
  - **Security**: Classi o accessi livello metodi possono essere specificati da EJBs per rinforzare le autorizzazioni user e role
  - **Concurrency support**: Tranne per i Singleton, quando qualche dichiarazione di concorrenza è necessario, tutti gli altri tipo di EJB sono di natura thread-safe
## appunti
pag 1-10 fino a jcpc compreso + A Brief History of Java EE
packaging
services
annotation e deploymentd descriptor
@Remote(ItemRemote.class) metodi remoti invocabili dell'interfaccia itemremote
@Local(ItemLocal.class)

Context and Dependency Injection
23-24-25
28-29-30-31-32-33-34-37(producers)-38-40-41
inject tu non sai risolvere o non puoi risolvere un oggetto, quindi chiedi ad un altro di risorvere e quindi inietti la dipendenza
si usa per evitare di creare due classi isbn e issn oppure passare al costruttore, ma per evitare ciò si fa inject
se non è un bean si usa il producers altrimenti glassfish non funziona
producers per tutti gli oggetti bean
@Produces @ThirteenDigits
 private String prefix13digits = "13-";
 se faccio injet in un altro bean la stringa injectata avrà 13-

 observ permette a componenti software di comunicare ma sullo stesso spazio di indirizzamento, nella stessa applicazione

 fino a eventi compresi

 ch 4 java persistence API
 entity manager restituisce un istanza della classe
 salta pag 113 e 114
 115 e 116 fino al codice in alto
 poi pag 181
 pag 183

 bean che usa solo DI dependency managed bean
 uso database diventa entity

 184-185-186-187-188-189-190-191-192
 192 fino a 201 da fare alla veloce
 201-202-203-204-205-206-207-208-209
 217-218-219-220-221-222-223-224

 parametro ?c per esempio

30/10
bean su rete stateful
solo quando è estremamente necessario essendo altamento oneroso

costruttore senza parametri daro che deve essere istanziato dal container

bean singleton va sincronizzato

creao java bean module remote
modulo api da distribuire sui client

interfaccia remota serve sia sul server che sul client
crei un altro modulo in cui metti le interfacce remote

aggiungere glassfish/lib/gf-client. jar nella cartella di glassfish

appunti 31/10
capitolo 8 Session Beans Life Cycle
Authorization fino a putting it all together

capitolo 9 transaction
introduzione
transaction support in EJBs fino a 301

capitolo 13
persistenza messaggi garantita dal broker

skip controlling acknowledgment
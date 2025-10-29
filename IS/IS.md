# Ingegneria del Software
## Informazione di base Ingegneria del Software
- **Processo**: Un particolare metodo per fare qualcosa costituito da unna sequenza di passi che coinvolgono attività, vincoli e risorse
- **Sistemi software**:
    - **Upper-CASE**: Strumenti che supportano le attività delle fasi di analisi e specifica dei requisiti e progettazione di un processo software
    - **Lower-CASE**: Strumenti che supportano attività delle fasi finali del processo quali programming, testing e debugging
## Ciclo di vita del Software
- **Software life cycle**: Periodo di tempo che inizia quando un sotware viene concepito e termina quando non è più utilizzabile
- **Software Development cycle**: Periodo di tempo che inizia con la decisione di sviluppo del prodotto software e termina quando è consegnato
- **Modello ciclo di vita del Software(CVS)**: Rappresenta una caratterizzazione descrittiva o prescrittiva di come un sistema sotware viene o dovrebbe essere sviluppato. Esistono vari tipi di CVS
    - **Modelli a cascata**: rappresenta un modello sequenziale lineare senza fasi di riciclo. Viene organizzato in fasi caratterizzate dalle tasks, dalle attività e dai controlli, i prodotti di una fase non sono più modificabili
        - **Studio di fattibilità**: Stabilire se avviare il progetto indiviuando le scelte necessarie e dà in output il documento di fattibilità
        - **Analisi dei requisiti**: Descrivere le funzionalità e le caratteristica che l'applicazione deve avere e dà in output il documento di specifica dei requsiti
        - **Progettazione**: Definire una struttura opportuna per il sofotware e dà in output il documento di specifica del progetto
        - **Programmazione e test di unità**: ogni modulo viene codificato nel linguaggio scelto e testato
        - **Integrazione e test di sistema**: Comporre moduli nel sistema globale, verificare il corretto funzionamento del sistema, α-test e β-test
        - **Deployment**: Distribuzione software
        - **Manutenzione**: Evoluzione del software
    
        Il modello a cascata è facilmente comprensibile e applicabile, ma ha un interazione con il committente solo a inizio e fine e il software è installabile sono quando è totalmente finito

    - **V&V e Retroazione(Feedback)**: 
        - **Verification**: si occupa di stabilire la corrispondenza fra un software e la sua specifica.
        - **Validation**: si occupa di stabilire l'appropriatezza di un prodotto software alla sua missione operativa
        - **Feedback**: possono essere innviate ad una qualsiasi delle fasi precedenti

        - Alcune fasi possono essere solo verificati solo attraverso la validation
    
    - **Modello a V**: Fasi a sinistra collegate a quelle a destra, i test eseguiti a destra vengono pianificati a sinistra e se si trova un errore si rivedono le attività della fase a sinistra

    - **Trasformazioni formali**: Sequenza di passi che trasforma formalmente una specifica in una implementazione, tuttavia presente porblematiche relative ai costi elevati, competenze e skill specifici e il committente non è in grado di capire le specifiche formali

    - **Modelli a sviluppo di componenti**: Modello basato sul riuso di componenti

    - **Modelli basati su prototipo**: Utilizzo di un prototipo per accertarsi di aver compreso bene le sue richieste e per valutare la fattiblità, e in seguito alla fase di utilizzo del prototipo si passa alla produzione della versione definitiva, il prototipo deve essere **gettato**
        - **Mock-ups**: Produzione completa interfaccia utente
        - **Breadboards**: Produce feedback su come implementare le funzionalità
        - **Prototipazione "throw-away"**: Lo sviluppo si avvia con la parte dei requisiti meno compresa
        - **Prototipazione "esplorativa"**: Lavorare a stretto contatto con il committente e avviando la svilluppo con la parte meglio compresa
    
    - **Sviluppo evolutivo**: Utilizzato per sistemi con un ciclo di vita breve, hanno tuttavia delle problematiche relative alla perdità di visibilità del processo, richieste competenze specifiche nell'uso di linguaggi di prototipazione
        - **Sviluppo incrementale**: Il sistema viene decomposto in sottosistemi che vengono implementati, testati, rilasciati, installati e messi in manutenzione con priorità diverse.
        Permette di anticipare da subito delle funzionalità al committente in base alla priorità più alta e permette di eseguire un testing più esaustivo grazie ai prototipi che permettono di individuare i requisiti per i successivi incrementi con una maggiore copertura per i servizi con più alta priorità

        - **Sviluppo iterativo**: Presenta da subito tutte le funzionalità/sottosistemi ed in seguito vengono migliorate

        - **Extreme programming**: Partecipazione più attiva del committente al team di sviluppo e con un miglioramente costante e continuo del codice

        - **Modello a spirale**: Sfrutta il concetto di riciclo, il processo viene rappresentato come una spirale, rappresenta un meta-modello e non prevede un numero predefinito di fasi, in cui una fase è un giro della spirale

## Modeling with UML
- **Modeling**: Consiste nel costruire una astrazione della realtà in modo da ignorare irrelevanti dettagli
    - **Model**: Astrazione che descrive un sottoinsieme del sistema
    - **View**: Descrive selezionati aspetti della realtà
    - **Notation**: Insieme di regole grafiche o testuale per descrive le views
- **Phenomenon**: Un oggetto nel mondo del dominio come lo percepisce
- **Concept**: Descrive le proprietà del fenomeno che sono comuni
    - **Name**
    - **Purpose**
    - **Members**
- **Abstract data type**: Tipo speciale la cui implementazione rimane nascosta al resto del sistema
- **Class**: Una astrazione nel contesto dei linguaggi object-oriented
- **Application Domain**: ambiente nel quale il sistema opera
- **Solution Domain**: Le tecnologie disponibile dalla build del sistema
- **UML(Unified Modeling Language)**: Uno standard per modellare software obbject-oriented
    - **Use case Diagrams**: Descrive il comportamento funzionale come viene visto dall'utente
        - **Actor**: Modella una esterna entità che comunica col sistema, e ha un nome unico e una descrizione opzionale
        - **Use Case**: Rappresenta una funzionalità di una classe provvista dal sistema come un flusso di eventi
        - **Extend**: Rappresenta un caso eccezionale
        - **Inlcudes**: Comportamento escluso dal caso d'uso
    - **Class diagrams**: Descrive la struttura statica del sistema
        - **Object**
        - **Attributes**
        - **Relations**
    - **Sequence diagrams**: Descrive il comportamento dianamico tra gli attori e il sistema attraverso gli oggetti del sistema
    - **Statechart diagrams**: Descrive il comportamento dinamico degli oggetti singoli
    - **Activity Diagrams**: Modella il comportamento dinamico del sistema
    - **Comventions**
        - Rettangoli sono classi o istanze
        - Ovali sono user cases o funzioni
        - Istanze denotate con un nome sottolineato
        - Tipi denotate con un nome non sottolineato
        - Diagrammi sono i grafi

## Requirements Elicitation
- **Software Lifecycle**: Insieme delle attività e delle relazioni al fine di sviluppare un prodotto software

- **Requirements Elicitation**: Definizione del sistema in termini comprensibili al cliente

- **Requirements Analysis**: Specifica tecnica del sistema in termini comprensibili dallo sviluppatore

- **Problem Statement**: Sviluppato dal cliente come una descrizione del problema da affrontare nel sistema
    - **Current situation**: Il problema da risolvere, un problema nel sistema corrente
        - **Cambio nel dominio dell'applicazione**
        - **Cambio nel dominio delle soluzioni**

    - **Descrizione di uno o più scenari**: Esempi di uso del sistema in termini di una serie di interazioni fra l'utente e il sistema, una descrizione testuale dell'uso del sistema
        - **As-is scenario**: L'utente descrive la situazione corrente
        - **Visionary scenario**: L'utente descrive il fututo sistema
        - **Evaluation scenario**: Attività dell'utente in base a quale il sistema deve essere valuatato
        - **Training scenario**: Istruzioni step-by-step che guidano un nuovo utente attraverso il sistema
        - **Scenario-Based Design**: Deve essere iterattivo e ciascuno scenario deve essere considerato come un documento di lavoro da migliorare e modificare quando cambiano i requisiti, i criteri del cliente o la situazione di distribuzione
    
    - **Use Cases**: Insieme di eventi del sistema, includendo interazioni con gli attori
        - **Graficamente**: Ovale
        - **Attori**: Descrivono attore coinvolto nel caso d'uso
        - **Entry condition**
        - **Flusso di eventi**
        - **Exit condition**
        - **Eccezioni**: Descrivono cosa succede se qualcosa va male
        - **Special Requirements**: Lista dei requisiti non funzionali e dei constraints
        - **Use case Relationships**:
            - **Dipendenze**:
                - **Include**: Un caso d'uso usato da un altro caso d'uso, descrive una funzione come aggregazioni di casi d'uso
                - **Extends**: Un caso d'uso esteso da un altro caso d'uso
            - **Generalization**: Un caso d'uso astratto con differente specializzazione, il figlio eredita il comportamento del padre e può aggiungere o sovrascrivere alcuni comportamenti
    - **Use Case Model**: Insieme di tutti i casi d'uso che specificano le funzioni del sistema

    - **Requirements**:
        - **Requisiti funzionali**: Descrivono le interazioni fra il sistema e l'ambiente indipendente dall'implementazione
        - **Requisiti non funzionali**: Aspetti visibili dal sistema non direttamente correlati al comportamento funzionale, con possibilità di test degli stessi
            - **FURPS+**: 
                - **Usability**: Facilità con cui l'utente può imparare a usare, preparare input e interpretare l'output del sistema o delle componenti
                - **Reliability**: Rappresenta la capacità del sistema o delle componenti di svolgere le funzioni richiesta in condizioni stabili per un periodo di tempo specificato
                - **Performance**: Requisiti riguardo tempo di risposta, tempo di risposta, disponibilità e accuratezza
                - **Supportability**: Facilità riguardo le modifiche al sistema, adattabilità e manutenibilità
        - **Constraints (pseudo requirements)**: Imposti dal cliente dell'ambiente nel quale il sistema opera
            - **FURPS+**:
                - **Implementation requirements**: Vincoli di implementazione del sistema come strumenti, linguaggi di programmazione
                - **Interface requirements**: Vincoli imposti da sistemi esterni
                - **Operation Requirements**: Vincoli all'amministratore o alla gestione del sistema
                - **Packaging requirements**: Vincoli sulla consegna effettiva del sistema
                - **Legal requirements**: Vincoli riguardo licenze, regolamenti e certificati
        - **Requirements validation criteria**:
            - **Correttezza**: Rappresenta il punto di vista del cliente
            - **Completezza**: Tutti i possibili scenari
            - **Consistenza**: Assenza contraddizione fra requisiti funzionali e non funzionali
            - **Realismo**: Requisiti possono essere implementati e consegnati
            - **Tracciablità**: Ogni funzione del sistema può essere tracciata in un insieme di requisiti funzionali
        - **Types of Requirements Elicitation**:
            - **Greenfield Engineering**: Lo sviluppo parte da zero, estraendo i requisiti dall'utente finale e dal cliente, attivato dall'esigenza dell'utente
            - **Re-engineering**: Re-design o reimplementare partendo da un sistema esistente, attivato da un technology enabler
            - **Interface Engineering**: Provvede i servizi di un sistema esistente in un nuovo ambiente, attivato da un technology enabler o esigenze di mercato
        - **Managin requirements elicitation**: 
            - Negoziare con il cliente (Joint Application Design -aka JAD)
            - Mantenere la tracciabilità
    - **Project Schedule**: Maggiori traguardi che implicano l'interazione con i clienti includendo deadline del sistema da consegnare

    - **Target environment**: Ambiente nel quale il sistema che viene consegnato deve compire una serie di test di sistema

    - **Client Acceptance Criteria**: Criteri per i test di sistema

## Project Organization and Communication
- **Soft skills**:
    - **Management**: Team meeting
    - **Presentation**: Un grande aspetto del tuo progetto nella fase di sviluppo
    - **Collaboration**: Negoziare requirements with the client and with members from your team and other teams
    - **Technical writing**: Scrivere parte della documentazione del progetto

- **Project components**:
    - **Work product**: Qualsiasi oggetto prodotto dal progetto e vengono chiamati **deliverables**
    - **Schedule**: Specifica quando il lavoro sul progetto deve essere terminato
    - **Partecipant**: Qualsiasi persona che partecipa al progetto
    - **Task**: Lavoro che deve essere svolto da un partecipante del gruppo per creare un prodotto di lavoro

- **Project Communication**:
    - **Planned (schedules) communication**: Aiuta a diffondere informazione che i partecipanti si aspetti usano
        - **Problem inspection**
        - **Status meetings**
        - **Peer reviews**
        - **Client and project reviews**
        - **Release**
    
    - **Unplanned communication**: Aiuta a gestire le crisi e le necessità informative inaspettate
        - **Requests for clarification**
        - **Request for change**
        - **Issue resolution**
    
    - **Communication mode**: Tipi di informazione scambiate che definiscono un oggetto e il suo scope
    - **Communication mechanism**: Strumenti o procedure che possono essere usati per trasmettere informazioni

- **Project Start Phase**:
    - **Attend the kick-off meeting**: I partecipanti del progetto ascolatano i problemi da risolvere dal cliente e lo scope del sistema da sviluppare
    - **Join team**: I partecipanti sono assegnati al team in base alle loro skill e ai loro interessi
    - **Attend training session**: I partecipanti che non hanno le skill necessarie per la task ricevono un allenamento extra
    - **Join commmunication infrastructure**: Deve supportare si attività pianificate che non
    - **Extended communication infrastructure**: Addizionali bacheche e portali di gruppo vengono stabbiliti per il progetto
    - **Attend first team status meeting**: Ai partecipanti del progetto viene insegnato a condurre status meeting, registrare informazioni di stato e diffonderlo agli altri membri
    - **Understand the review schedule**: Il programma di revisione contiene una serie di obiettivi per counicare i risultati del progetto sotto forma di review al project manager e al cliente

- **Team organization**:
    - **Team**: Piccolo gruppo di partecipanti al progetto che svolgono la stessa task
    - **Group**: Un insieme di persone a cui è assegnata una task comune, ma lavorano in modo indipendente senza nessuna necessità di comunicazione per completare la propria parte
    - **Commitee**: Gruppo di persone che insieme recensiscono e criticano problematica e propongono azioni

- **Interaction Types**:
    - **Reporting**: Riportare informazioni sullo stato
    - **Decision**: Usato per promuovere iniziative
    - **Communication**: Usato per scambiare tutti gli altri tipi di informazioni necessarie per decisioni o status

- **Hierarchical Organization**: Status e decision sono unidirezionali
    - **Problem of Hierarchical Organization**: Molte decisioni tecniche hanno la necessità di essere svolte in locale, ma dipende dall'informazione di un altro sviluppatore in un altro team
        - **Solution**: Scambio di informazioni attraverso una struttura aggiuntiva di comunicazione
            - **Liaison**: Resposabile dello scambio di informazioni
            - **Peer-based**: Gli sviluppatori possono comunicare direttamente con gli altri
            - **Cross-functional team**: Non lavorano direttamente sul sottosistema

- **Roles**: Definisce una serire di task tecniche e di gestione che ci si aspetta da un partecipante del team
    - **Management roles**: Si occupa di organizzare ed eseguire il progetto entro i vincoli richiesti
    - **Development roles**: Si occupa di specificare, disegnare e costrutire il sottosistema
        - **Analista**
        - **Architetto del sistema**
        - **Object designer**
        - **Implementatore**
        - **Tester**
    - **Cross-functional roles(Liaison)**: Si occupa della coordinazione dei team
    - **Consultant roles**: Si occupa di dare temporaneo supporto in aree dove il progetto manca di esperti

- **Tasks and Work Products**:
    - **Task**: Un lavoro ben definito per unn ruolo
        - Il project manager o il team leader assegna le task
        - I gruppi con task correlate sono detti **activities**
    - **Work product**: Oggetto risulato di una task
    - Tutti i work product che vengono consegnati al cliente vengono detti **deliverable**

- **Work Packages**: Presenta al suo interno la specifica da svolgere per completera un lavoro
    - **Nome della task e la sua descrizione**
    - **Risorse necessarie per la task**
    - **Dipendenze di input e output**

- **Schedule**: Mappa di task nel tempo, assegnando ad un ognuno inzio e fine
    - **Gantt**: Grafico a barre in cui asse orizzontale rappresenta il tempo e l'asse verticale la liste delle differenti task da fare
    - **PERT**: Grafo aciclico
        - Inizio e durata della task servono per calcolare il percorso critico
        - Percorso critico rappresenta la pianificazione più corta possiile 
        - Le task sul percorso critico sono le più importanti, potendo causare un ritardo dell'intero progetto
    - **Scheduled Communication Modes**:
        - **Problem definition**: Presentare obiettivi, requisiti e vincoli
        - **Project review**: Valutare lo stato e rivedere il modello del sistema, la decomposizione del sistema e l'interfaccia del sottosistema
        - **Client review**: Dialogo con il cliente, per accettare cambiamenti dei requisiti
        - **Peer Reviews**:
            - **Walkthrough(Informal)**: Incrementare la qualità del sottosistema
            - **Inspection(Formal)**: Si occupa di verificare la conformità dei requsiti
        - **Status Review**: Trova deviziano dalla pianificazione e le corregge o identifica i problemi
        - **Brainstorming**: Generare e valutare un grande numero di soluzioni al problema
        - **Release**: Baseline dei risultati di ogni activity software sviluppata
            - **Software Project Management Plan (SPMP)**
            - **Requirements Analysis Document (RAD)**
            - **System Design Document (SDD)**
            - **Object Design Document (ODD)**
            - **Test Manual (TM)**
            - **User Manual (UM)**
        - **Postmortem review**: Descrivere le lezioni apprese
- **Modalità di comunicazione basata su eventi**
    - **Richiesta di chiarimenti**
    - **Richiesta di cambiamento riguardo un problema con annessa soluzione**
    **Risoluzione problematiche**
- **Meccanismi di comunicazine sincroni**
    - **Hallway conversetion**: Conversazione non pianificata, richiesta di chiarimenti o di cambi
        - **Pro**: Poco costosa ed efficace
        - **Contro**: Si possono perdere informazioni essenziali, e possono esserci problemi di non comprensione
    - **Meeting**: Conversazioni pianificate, revisione del cliente, del progetto, status, peer, postmortem, brainstorming, e risoluzione problematiche
        - **Pro**: Efficace meccanismo per la risoluzione dei problemi
        - **Contro**: Costi alti e difficoltà di gestione e di ottenere un reale risultato efficace
        - **Roles**
            - **Primary facilitator**: Responsabile dell'organizzazione del meeting e della guida dell'esecuzione
                - Scrive l'agenda descrittiva degli oggetti e dello scope del meeting
                - Distribuisce l'agenda agli altri partecipanti
            - **Minute Taker**: Respondabile di registrare il meetin, identificare gli action item e le problematiche e le rilascia ai partecipanti
            - **Time keeper**: Responsabile di tenere traccia del tempo
    - **Questionari e intervista strutturate**: Definizione del problema e revisione postmortem
        - **Pro**: Capace di chiarire problemi durante la raccolta dei requisiti ad un costo basso per l'utente
        - **Contro**: Difficile da progettare
    - **Groupware sincrono**: Conversazioni non pianificate, revisione del cliente, del progetto, status, peer, postmortem, brainstorming, e risoluzione problematiche
        - **Pro**: Le persone comunicano nello stesso momento in luoghi differenti
        - **Contro**: Difficoltà di coordinazione
- **Meccanismi di comunicazione asincroni**
    - **E-mail**: Release, cambio richiesta, brainstorming
        - **Pro**: Ideale per comunicazioni o annunci basati su eventi
        - **Contro**: Il contesto dell'email può essere frainteso, non letto o perso
    - **Newsgroups**: Release, cambio richiesta, brainstorming
        - **Pro**: Adatto a notificare e discutere con le persone che condividono un interesse comune
        - **Contro**: Primitvo accesso di controllo
    - **World Wide Web**: Release, cambio richiesta, inspection
        - **Pro**: Fornisce all'utente un ipertesto
        - **Contro**: Non supporta facilemente documenti che si evolvono rapidamente
    - **Lotus Notes**: Gli utenti collaborano creando, condividendo e modificando documenti in uno spazio simile ad un database
        - **Pro**: Provvede un eccellente controllo sul meccanismo di controllo e replica del database
        - **contro**: Costoso e formato proprietario
## Configuration Management
- **Software Cofiguration Management**: Comprende le discipline e le tecniche di inizializzazione, valutazione e controllo del cambiamento del prodotto software durante e dopo il processo di software engineering
- **Activities**
    - **Configuration item identification**
    - **Promotion management**
    - **Release management**
    - **Change management**
    - **Branch management**
    - **Variant management**
- **Configuration Item**: Segmenti di codice del programma, ma ancge tutti i documenti coinvolti nello svilluppo
    - **Requirements Analysis Document(RAD)**
    - **System Design Document (SDD)**
    - **Object Design Document (ODD)**
    - **Unit test**
    - **Source code**
    - **Input data and data bases**
    - **Test data**
    - **Support software**
- **Version**: Stato del configuration item, differenti versioni hanno differenti funzionalità
- **Revision**: Corregge errori in una versione, ma non conivolge le funzionalità
- **Release**: Una versione resa disponibile esternamente
- **Baseline**: Una specifica o un prodotto che è stato approvato formalemente e che potrà servire per sviluppi futuri e può essere cambiato solo attraverso procedure formali
    - **Developental baseline**: Coordina le engieering activities
    - **Fuctinal baseline**: Ottiene le esperienze dei clienti con un sistema funzionale
    - **Product baseline**: Coordina le vendite e il supporto clienti
**Change management**: Un cambio di una richiesta crea una nuova release
    - Cambio richiesto
    - Cambio richiesto viene valutato in bbase agli obiettivi del progetto
    - Dopo la revisione viene accettato o rifiutato
    - Se accettato, viene assegnato ad uno sviluppatore e implementato
    - La modifica viene verificata
- **Controlling Changes**
    - **Promotion**: Lo stato di svilppo interno al software viene modificato
    - **Release**: Un cambiamento software viene reso visibile fuori dallo sviluppo dell'organizzazione
- **SCM Directories**
    - **Programmer's Directory**: Libreria per comtenere entità software appena create o modificate
    - **Master Directory**: Si occupa di gestire la corrente baseline e di controllare i cambiamenti fatti ad essa, i cambiamenti devono essere autorizzati
    - **Software Repository**: Archivio delle varie baseline rilasciate per uso generale
- **Typical Configuration Management Roles**
    - **Configuration Manager**: Responsabile di identificare i configuration item, definire porcedure di creazione promozione e rilascio
    - **Chage control board member**: Responsabile di approvare o rfiutare un cambio di richiesta
    - **Developer**: Crea promozioni causata da un cambio i richiesta o dalla normale attività di sviluppo
    - **Auditor**: Responsabile di selezionare e valutare la prommozioni di rilascio e di garantire completezza e consistenza del rilascio

- **Branch management**: Identifica uno percorso di sviluppo indipendente richiedendo una configuration management indipendente
- **Variant management**: Versioni destinate ad esistere
    - **Redundant teams**:
        - Un team viene assegnato ad ogni variante
        - Ad ogni team vengono forniti gli stessi requisiti e la responsabilità di completare design, impementazione e test delle varianti
    - **Single project**: Progettare una decomposizione del sottosistema al fine di massimizzare il codice condiviso fra le varianti

## Object Modeling
- **Model**: Astrazione dei dettagli della realtà, in modo da permettere degli step più facili nel model per rappresentare i complessi elementi reali
- **Activities during Object Modeling**
    - **Class Identification**: Identifica i confini del sistema, le entità principali
        - **Application domain approach**: Si chiede agli esperti del dominio dell'applicazione di identificare le astrazioni
        - **Syntatic approach**: Inzia con i casi d'uso, estrae gli oggetti partecipanti dal flusso di eventi e usa anlisi sostantivo-verbo per identificare i componenti
        - **Design patterns approach**: Usa un design pattern riutilizzabile
        - **Component-based approach**: Identifica le soluzioni di classe esistenti
    - **Finding Object**
        - **Application knowledge**: Confronto con gli utenti finali e gli esperti per determinare l'astrazione del domionio dell'applicazione
        - **Design knowledge**: Riutilizzabile astrazione nella soluzione del dominio
        - **General world knowledge**
        - **Formulazione di scenari e casi d'uso**
    - **Finding Partecipant Objects**: Prendi uno scenario e guarda il suo flusso di eventi
- **Object vs Class**
    - **Class**: Descrive un gruppo di oggetti con proprietà simili
    - **Object diagram**: Un notazione grafica per modellare oggetti, classi e relazioni
        - **Class diagram**: Template per descrivere molte istanze di un dato
            - Descrizione statica delle proprietà del sistema
            - Usato dagli esperti dell'application domain e dagli sviluppatori
                - **Application domain**: Problema del dominio
                - **Application domain class**: Un astrazione del application domain
                - **Solution domain**: Domini che aiutano nella soluzione del problema
                - **Solution domain class**: Una astrazione introdotta per ragioni tecniche al fine di aiutare nella soluzione del problema 
        - **Instance diagram**: Un particolare set di oggetti che si relazionano fra loro

- **Object Types**
    - **Entity Objects**: Rappresentano l'informazione persistente tracciata dal sistema
    - **Boundary Objects**: Rappresentano l'interazione fra utente e sistema
    - **Control Objects**: Rappresentano le attvità di controllo eseguita dal sistema
- **Order of activities in modeling**
    1. Class identification
    2. Identification of attributes and operations
    3. Identification of associations between classes
    4. Identification of multiplicities
    5. Identification of roles
    6. Identification of constaints

- **Analyst**: Interessato alle application classes, le associazioni fra le classi sono relazioni fra le astrazioni del dominio
- **Designer**: Si concentra sulla soluzione del problema, descrive l'interfaccia delle classi e del sottosistema, favorendo usabilità e riusabilità dell'interfaccia
- **Implementors**
    - **Class implementor**: Implementa la classe, sceglie appropriate strutture dari e algoritmi e realizza l'interfaccia di classe in un linguaggio di programmazione
    - **Class extender**: Estende le classi in sottoclassi, necessarie per nuovi problemi o per nuovi application domain
    - **Class-user(Client)**: Il programmatore che usa classi esistenti, interessato solo nelle operazioni della classe e nelle sue precondizioni
- **Operation**: Una funzione o una trasformazione applicata all'oggetto della classe
- **Signature**: Numero e tipo di argomenti, tipo di risultato
- **Method**: Implementazione di una operazione per la classe

- **Analysis model**: Costruito durante la fase di analisi, contiene solo application domain class
    - Comunicazione fra analisti, esperti del dominio dell'applicazione e utenti finali
- **Object model**: Creato durante la fase di object design, contiene application solution e domain classes
    - Comunicazione fra designers e implementatori

## Modeling with UML
- **Modeling**: Astrazione della realtà
- **System**: Una astrazione che descrive un sottoinsieme del sistema
- **View**: Raffigura aspetti selezionati di un modello
- **Notation**: Un insieme di regole grafiche e testuali per rappresentare una view
- **Phenomenon**: Un oggetto nel mondo del dominio come lo percepisci
- **Concept**: Descrive le proprietà comuni del fenomeno
    - **Name**: Per distinguerlo dagli altri concetti
    - **Purpose**: Proprietà che determinano se un fenomeno è membro di un concetto
    - **Members**: Insieme dei fenomeni che fanno parte di un concetto
- **Abstract Data Types & Classes**
    - **Abstract Data Types**: Tipo speciale la cui implementazione è nascosta dal resto del sistema
    - **Class**: Un astrazione nel contesto dei linguaggio object-oriented
- **Application Domain**: Ambiente nel quale il sistema opera
- **Solution Domain**: Le tecnologie disponibili per costruire il sistema
- **UML(Unifed Modeling Language)**:  Uno standard per modellare software object-oriented. Per immagini vedere pdf UML
    - **Use Case Diagrams**: Descrive il comportamento funzionale del sistema come visto dall'utente
        - **Actor**: Rappresentano il ruolo, ovvero un tipo di utente del sistema
            - Modella un entità esterna che comunica col sistema
            - Ha un nome unico e una descrizione opzionale
        - **Use Cases**: Rappresenta una sequenza di interazioni per un tipo di funzionalità
            - Rappresenta una classe di funzionalità fornita dal sistema come flussi di eventi
            - Nome unico
            - Attori partecipanti
            - Entry condition
            - Flussi di eventi
            - Exit condition
            - Requisiti speciali
        - **<< Extends >> Relationship**: Rappresenta casi eccezionali o raramente invocati
            - I casi d'uso che rappresentano flussi eccezionali possono estendere più di un caso d'uso
            - Direzione verso l'extended caso d'uso 
        - **<< Include >> Relationship**: Comportamento escluso dal caso d'uso a fine di riutilizzo
            - Verso il caso d'uso
    - **Class Diagrams**: Descrive la struttura statica del sistema: Object, Attributes, Relations
        - Usato per :
            - Analisi Requisiti per modellare concetti del problema del dominio
            - System Design per modellare un sottosistema e le interfacce
            - Object Design per modellare le classi
        - **Classes**: Rappresenta un concetto
            - **Attributi**: Stato
                - Hanno un tipo
            - **Operazioni**: Comportamenti 
                - Hanno una signature
        
        - **Instances**: Rappresenta un fenomeno
            - Nome sottolineato e può contenere l'istanza della classe
            - Rappresentati con il loro valore

        - **Actor vs Instances**
            - **Actor**: Un entità esterna al sistema che deve essere modellata, e deve interagire col sistema
            - **Class**: Una astrazione che modella un entità nel dominio del problema, deve essere modellata all'interno del sistema
            - **Object**: Una specifica istanza di una classe
        - **Associations**: Relazione fra classi
            - Mapping bidirezionale
                - Per renderla monodirezionale, la freccia deve puntare verso il server role
            - One-toone, many-to-many, one-to-many
            - Descrive una serie di link
            - **Associations Classes**: Associazioni che possono avere attribuiti ed operazioni attaccate a loro
                - Può essere trasformata in una classe e semplici associazioni
        - **Link**: Connesione fra due istanze di un oggetto
            - Il link è una istanza di una associazione
        - **Roles**: Il nome che identifica univocamente un estremità di una associazione
            - Necessarie per associazioni fra due oggetti della stessa classe
            - **Client Role**: Un oggetto che può operare su altri oggetti ma non può essere mai operato da altri oggetti
            - **Server Role**: Un oggetto che non opera mai con altri oggetti, ma è sempre operato da altri oggetti
            - **Agent Role**: Unn oggetto che può operare ed essere operato
                - Spesso creato per svolgere un lavoro per conto di un attore o di un altro agente
        - **Aggregation**: Speciale associozione che denota una gerarchia
            - **Aggregate**: Padre
            - **Componets**: Figli
            - **Coposition**: Denotato da un diamante solido che indica che i components non posso esistere senza gli aggregati
        - **Qualification**: Migliora le informazioni riguardo la multiplicità delle associazioni fra le classi, permettendo di ridurre 1-to-many a 1-1
        - **Inheritance**: Le classi figlio ereditano gli attribuiti e le operazioni della classe padre
        - **Package**: eccanismo per organizzare elementi in gruppi
            - Un sistema complesso può essere decomposto in sottosistemi, dove ogni sottosistema è modellato come un pacchetto
    - **Sequence Diagrams**: Descrive il comportamento dinamico fra gli attori e il sistema e fra gli oggetti e il sistema
        - Classi rappresentate come colonne
        - Messaggi raprresentati come frecce
        - Activations rappresentati come rettangoli stretti
        - Lifelines rappresentate come linee tratteggiate
        <br><br>
        - **Nested messages**: Freccia indica l'activation a cui è inviato il messaggio
        - **DataFlow**: Frecce tratteggiate indicano il dataflow
        - **Lifelines**: Indicato da frecce tratteggiate verticali
        - **Iteration**: Denotato da * prima del messaggio
        - **Condition**: Denotato dall'espressione booleana in [] prima del nome del messaggio
        - **Creation**: Denotato da una freccia che punta all'oggetto
        - **Destruction**: Denotato da una X alla fine della activation
    - **Statechart Diagrams**: Descrive il comportamento dinamico di un oggetto individuale
    - **Activity Diagrams**: modella il comportamento dinamico del sistema ,in particolare il workflow
        - **Action state**: Non può essere decomposto
        - **Activity state**: Può essere decomposto
            - L'activity viene modellata da un altro activity diagram
        - **Modeling Concurrency**: Sincronizzazione delle activity multiple
        - **Swimlanes**: Divisione per denotare l'oggetto o il sottosistema che implementa l'azione
    - **Implementation Diagrams**
    - **Object Constraint Language**
    <br><br>
    - **Conventions**
        - Rettangoli per classi e istanze
        - Ovali per funzioni e casi d'uso
        - Istanze denotate con un nome sottolineato
        - Tipi denotati con nome non sottolineato
        - Diagrammi sono grafi
            - Nodi sono le entità
            - Archi sono le relazioni fra le entità

## appunti
pdf introductio uml
non cancellare gli oggetti in fase di analisi
a livello di creazione sono gli entity objects
gli altri fate conto esistano già

un evento per un oggetto è il messaggio ricevuto

annulla operazione è inutile
controlli login sul formmato non vanno fatti
bastano username e password come controlli
bbasta email non corretta sia per email già usata che non esistente
sistema verifica che username e password siano corretti sono lo stesso evento->tesso caso d'uso

mmettere tabella per tutti i formati dei parametri di input, referenziata nel documento
Eccezioni basate sul tempo potrebbero essere utili per la registrazione
Fare scenatio e caso d'uso per la registrazione

specificare il tipo di notifica, no bisogna lasciare il sistema notifica l'utente

tabella casi d'uso rende tutto più leggibile

Eccezioni e flussi alternativi vanno messi insieme tanto non cambia nulla

login il sistema controlla la coppia username e password, non separatamente
se username non esiste, o corrisponde con password sbagliata messaggio a schermo ma rimane nella stessa pagina

aggiunngere funzionalità utente registrato

visualizzazione di un altro profilo è una funzionalità del visitatore non di un utente registrato
su modifica password ho annulla operazione e ho salva

scrivere dove vengono salvati i dati, es database, file system

diagramma utente va fatto per lo scenario
rifare disegni casi d'uso e aggiunta casi d'uso

immagini da referenziare per i casi d'uso
navigazione va bene pure fatta nel docummento finale
far riferimento al mock up all'interno del caso d'uso

cambio password gestibile con 

messaggi di eerori o in una tabella o nel caso d'uso
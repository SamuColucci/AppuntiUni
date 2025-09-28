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

    - **Trasparenza**: Mascherare i dettagli e le differenze della architettura al fine di agevolare la progettazione e la implementazione<br>
    ![Relazione fra le Trasparenze](img/RelazioneTrasparenza.png)
    Esistono diversi tipi di trasparenza:
        - **Trasparenza di accesso**: 

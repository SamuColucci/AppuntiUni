# Ingegneria del Software
## Informazione di base Ingegneria del Software
- **Processo**: Un particolare metodo per fare qualcosa costituito da unna sequenza di passi che coinvolgono attività, vincoli e risorse
- **Sistemi software**:
    - **Upper-CASE**: Strumenti che supportano le attività delle fasi di analisi e specifica dei requisiti e progettazione di un processo software
    - **Lower-CASE**: Strumenti che supportano attività delle fasi finali del processo quali programming, testing e debugging
## Ciclo di vita del Software
- **Software life cycle**: Periodo di tempo che inizia quando un sotware viene concepito e termina quando non + più utilizzabile
- **Software Development cycle**: Periodo di tempo che inizia con la decisione di sviluppo del prodotto software e termina quando è consegnato
- **Modello ciclo di vita del Software(CVS)**: Rappresenta come un sistema software descrittiva o prescrittiva di come un sistema sotware viene o dovrebbe essere sviluppato. Esistono vari tipi di CVS
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

        - **Sviluppo Iterativo**: Presenta da subito tutte le funzionalità/sottosistemi ed in seguito vengono migliorate

        - **Extreme programming**: Partecipazione più attiva del committente al team di sviluppo e con un miglioramente costante e continuo del codice

        - **Modello a spirale**: Sfrutta il concetto di riciclo, il processo viene rappresentato come una spirale, rappresenta un meta-modello e non prevede un numero predefinito di fasi, in cui una fase è un giro della spirale
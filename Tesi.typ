#import "./template/template.typ": *

#show: template

//###############################################################################################################################

= Contesto organizzativo

== Presentazione dell'azienda

Kirey Group è una società italiana di consulenza IT e informatica, fondata nel 2017, con una rete che conta oltre 850 dipendenti. L'azienda ha sedi in diverse città italiane, tra cui Milano, Padova, Roma e Torino, e uffici internazionali in Spagna, Portogallo e nell'Europa dell'Est.

Kirey Group supporta le imprese offrendo competenze che spaziano dalla gestione delle infrastrutture IT alla sicurezza informatica, fino all'analisi dei dati.

La missione dell'azienda è di aiutare i clienti a ottimizzare i loro processi aziendali e aumentare la competitività, proponendo soluzioni digitali innovative.
//###############################################################################################################################

== Clientela

Kirey Group collabora principalmente con clienti, sia privati che pubblici, provenienti dal settore bancario, finanziario e assicurativo, a cui offre soluzioni tecnologiche ad hoc e servizi di consulenza mirati. 

Le istituzioni finanziarie rappresentano una parte significativa della clientela dell'azienda, grazie alla loro necessità costante di innovare, migliorare l'efficienza operativa e rispettare stringenti normative di conformità.

Un esempio concreto a cui ho potuto assistere, sebbene non in maniera attiva, durante il mio tirocinio è stato quello dell'azienda *CRIF*, leader nel settore di informazione creditizia. In particolare, nel reparto a cui sono stato assegnato, il gruppo si occupa della gestione dei database, assicurando l'efficienza, l'affidabilità e le performance delle infrastrutture per supportare i servizi di informazione creditizia.

//###############################################################################################################################

== Processi aziendali

=== Introduzione

Durante il mio tirocinio presso Kirey Group, ho avuto modo di osservare da vicino l'organizzazione interna dell'azienda e i processi che la caratterizzano. 
Essendo una realtà specializzata in consulenza e servizi IT, Kirey non si occupa principalmente di sviluppo _software_, ma concentra una parte significativa delle sue attività nel fornire supporto e soluzioni ai clienti, garantendo un'assistenza continua e personalizzata.
Questo approccio richiede una gestione meticolosa delle attività, un costante aggiornamento tecnologico e una pianificazione orientata alla soddisfazione del cliente.

=== Supporto continuo ai clienti

Uno degli aspetti più rilevanti che caratterizzano i processi aziendali di Kirey Group è l'attenzione costante alle esigenze dei clienti.
L'azienda garantisce un supporto 24 ore su 24, 7 giorni su 7 per assicurare la continuità operativa dei sistemi critici. 

Personalmente sono stato inserito nella _Business line_ denominata "_Application performance monitoring_" (APM), e più precisamente nel gruppo "_Database assesment_" (DBA) che si occupa di di monitorare e gestire i servizi di _database management_ che l'azienda offre.

Questo supporto viene gestito attraverso:

- *_Team_ di supporto*: Divisione del personale in diversi team, ciascuno specializzato in una parte del monitoraggio dei sistemi o della gestione tempestiva delle segnalazioni dei clienti.

- *Sistemi di _ticketing_*: Il supporto viene gestito tramite piattaforme di _ticketing_ come Jira Service Management, che consentono di tracciare ogni richiesta di assistenza. Ogni _ticket_ viene classificato per priorità e assegnato a tecnici specializzati, garantendo tempi di risposta rapidi e conformi agli SLA (_Service Level Agreement_) concordati con i clienti.

- *Monitoraggio continuo*: L'uso di strumenti come Elasticsearch, Logstash e Kibana permette un monitoraggio continuo dei sistemi. Durante il tirocinio, ho avuto l'opportunità di osservare dashboard personalizzate che aiutano a identificare anomalie in tempo reale e a intervenire proattivamente per prevenire disservizi.

=== Metodologie di lavoro agile

Nonostante il focus consulenziale, Kirey Group adotta metodologie Agile per la gestione delle attività e dei progetti.

L'approccio Scrum è ampiamente utilizzato per organizzare il lavoro in modo efficiente e flessibile, anche per attività di supporto e manutenzione evolutiva.

- *_Daily Meeting_*: Ogni giorno, i membri di un team partecipano a brevi riunioni chiamate _daily stand-up meeting_. Durante questi incontri, ciascun membro condivide lo stato delle attività, gli eventuali ostacoli e le priorità della giornata. Questo processo facilita una comunicazione trasparente e permette di risolvere rapidamente eventuali problemi.

- *Sprint di Manutenzione*: Le attività di manutenzione e supporto sono organizzate in sprint della durata di una settimana. Ogni sprint include interventi pianificati di aggiornamento dei sistemi, miglioramenti delle infrastrutture e risoluzione di problemi ricorrenti.

- *Retrospettive*: Al termine di ogni sprint, si svolge una retrospettiva per analizzare l'andamento delle attività e individuare possibili miglioramenti nei processi di supporto. Questo approccio iterativo contribuisce a ottimizzare continuamente l'efficienza dei servizi offerti ai clienti.

//###############################################################################################################################

== Tecnologie utilizzate

=== Tecnologie primarie

Una delle soluzioni tecnologiche principali adottate da Kirey Group con cui ho avuto a che fare durante la mia esperienza è lo _stack_ *ELK* (Elasticsearch, Logstash, Kibana), una _suite_ di strumenti _open-source_ utilizzata per la gestione e l'analisi dei dati, ideale nei progetti che l'azienda si offre ai clienti:

#showImageWithSource(
  imagePath: "/assets/ELK.png",
  imageWidth: auto,
  caption: [_Stack_ Elastic],
  source: "https://www.elastic.co",
  label: <ELK>
)

- *Elasticsearch* è un motore di ricerca e analisi distribuito, progettato per l'indicizzazione e la ricerca di grandi volumi di dati in tempo reale. È ideale per analizzare log e dati transazionali, permettendo ai clienti di ottenere rapidamente _insight_ dettagliati delle loro applicazioni e dell'uso che ne viene fatto attraverso _query_ veloci e potenti.

- *Logstash* è uno strumento per l'elaborazione e la trasformazione dei dati prima che questi vengano indicizzati in Elasticsearch. Permette di raccogliere dati da diverse fonti, arricchirli e normalizzarli attraverso _pipeline_ configurabili, facilitando la gestione di flussi di dati complessi. 

- *Kibana* è un'interfaccia grafica per la visualizzazione e l'analisi dei dati presenti in Elasticsearch. Consente agli utenti di creare _dashboard_ personalizzate e visualizzazioni interattive per monitorare i dati in tempo reale, migliorando la visibilità operativa e supportando decisioni aziendali informate.

Queste tecnologie non vengono utilizzate in isolamento: ho notato come l'interazione tra Logstash, Elasticsearch e Kibana sia fondamentale per fornire soluzioni complete. Ad esempio, i dati raccolti e modificati da Logstash normalmente vengono indicizzati in Elasticsearch per poi essere visualizzati in tempo reale con Kibana. Questo flusso integrato permette di individuare rapidamente anomalie o comportamenti sospetti nei log delle applicazioni.

Questo _stack_ permette all'azienda di offrire soluzioni per:

- Monitoraggio e analisi dei log delle applicazioni per individuare potenziali anomalie e comportamenti sospetti;
- Supporto alla conformità con normative del settore come *PSD2* (_Payment Services Directive 2_) e *GDPR* (_General Data Protection Regulation_);
- Ottimizzazione dell'efficienza operativa tramite _dashboard_ di monitoraggio in tempo reale.

=== Tecnologie secondarie

Oltre allo _stack_ ELK, Kirey Group utilizza diverse tecnologie complementari, scelte in base alle esigenze del progetto:

- *Java* e framework come *Spring Boot* per lo sviluppo _back-end_ di applicazioni. Spring Boot facilita la creazione di applicazioni Java _stand-alone_ con configurazione minima e supporta funzionalità come gestione delle dipendenze e microservizi.

- *React* è una libreria *JavaScript* per la creazione di interfacce utente dinamiche e componenti riutilizzabili. Nei progetti aziendali, ho osservato come l'integrazione di React con Kibana possa migliorare ulteriormente l'interattività delle dashboard.

- *Docker* è una piattaforma per la creazione e gestione di _container_, che garantisce un ambiente di esecuzione coerente per le applicazioni. Ogni _container_ include tutto il necessario per l'esecuzione del software (codice, _runtime_, librerie, ecc.).

- *Kubernetes* (K8s) è un sistema per l'orchestrazione dei _container_, che automatizza il _deployment_, la gestione e la scalabilità delle applicazioni Docker.

=== Panoramica delle piattaforme di lavoro

Kirey Group adotta strumenti collaborativi per facilitare il lavoro in team e garantire un'efficace gestione dei progetti:

- *Microsoft Teams* per la comunicazione interna, le chat e le videoconferenze, supportando la collaborazione sia in ufficio che da remoto.

- *Jira* è uno strumento per la gestione delle attività e degli sprint nei progetti _Agile_. Permette di tracciare i progressi e organizzare il lavoro in modo efficiente. Durante gli sprint, ho utilizzato Jira per coordinare le attività con i membri del team e monitorare l'avanzamento del progetto.

- *Confluence* è una piattaforma di documentazione centralizzata utilizzata per condividere conoscenze e informazioni sui progetti, garantendo un archivio facilmente consultabile. Ho notato come l'integrazione tra Jira e Confluence permetta di mantenere la documentazione sempre aggiornata e di reperire informazioni su tutti i progetti a cui un dipendente è assegnato in maniera rapida.

- *Bitbucket* è un servizio di version control basato su Git, utilizzato per il controllo delle versioni del codice e per l'integrazione continua (CI/CD). Facilita il _merge_ e il _deployment_ del codice attraverso pipeline automatizzate. Ho trovato particolarmente utile l'integrazione di Bitbucket con Jira per collegare direttamente le modifiche del codice alle specifiche attività del progetto.

Queste piattaforme assicurano una gestione ottimale delle informazioni, una comunicazione fluida e un'alta produttività operativa, permettendo di lavorare efficacemente sia in team locali che distribuiti.

//###############################################################################################################################

== Approccio all'innovazione

Uno degli aspetti fondamentali della strategia aziendale di Kirey Group è l'innovazione.
Essa viene perseguita in modo sistematico e non si riversa solo nello sviluppo tecnologico, ma anche nel costante miglioramento dei processi interni e della cultura organizzativa.

Nel corso del tirocinio, ho potuto notare come Kirey Group consideri l'innovazione un processo continuo, che entra in ogni aspetto delle attività aziendali.
Questo approccio si concretizza attraverso l'investimento continuo per l'adozione di nuove tecnologie, il miglioramento costante dei processi interni e la promozione di una cultura organizzativa aperta al cambiamento. 
In particolare, ho potuto osservare l'importanza attribuita a:

- *Innovazione tecnologica*: l'azienda cerca costantemente di rimanere al passo con le più moderne tecnologie, in particolare riguardanti big data analytics e machine learning. Nell'ambito del progetto di sviluppo dell'applicazione alla quale io sono stato assegnato, sono stato in grado di lavorare con strumenti avanzati e tecnologicamente "nuovi" di Elasticsearch e Kibana e analizzare e rappresentare grandi quantità di dati;

- *Innovazione nei processi* : ho potuto partecipare, seppure da esterno, a riunioni di sprint e sessioni di pianificazione, utilizzando la metodologia Agile, e lo sviluppo basato su attività come Scrum e CI/CD. Esse aiutano a rendere il processo più efficiente e flessibile;

- *Formazione costante*: a seguito di colloqui avuti con alcuni colleghi è emerso che l'azienda, specialmente nei primi anni dall'assunzione, offre una vasta gamma di opportunità formative e di studio da svolgere durante l'orario di lavoro.

//###############################################################################################################################

#pagebreak()

= Obiettivi dello stage

    == Obiettivi dello Stage secondo Kirey group
    Analisi degli obiettivi, dei problemi o delle aree di miglioramento individuate dall'azienda, con una spiegazione su come questi motivi si inseriscano nella strategia a lungo termine dell'organizzazione.

    == Progetto proposto
    Analisi del progetto proposto e di ciò che l'azienda si aspettava.

    == La Strategia di Innovazione dell'Azienda e gli Stage
    Considerazioni sull'approccio generale dell'azienda rispetto agli stage e alla collaborazione con giovani professionisti, evidenziando la visione dell'azienda in merito a innovazione e sviluppo di giovane personale.

    == Obiettivi Personali e Motivazioni della Scelta
    Spiegazione delle motivazioni personali che hanno portato alla scelta dello stage e delle competenze o esperienze che lo stage avrebbe permesso di sviluppare rispetto ad altre opportunità.

#pagebreak()

= Svolgimento del progetto

    == Metodo di Lavoro (Way of working)
    Descrizione del metodo di lavoro adottato, inclusi gli strumenti di gestione, le modalità di pianificazione delle attività e le interazioni con il tutor aziendale. Verranno evidenziate anche le tecniche di analisi e tracciamento dei requisiti fornitemi dall'azienda.

    == Sfide Progettuali e Tecnologiche
    Esposizione dei principali problemi affrontati, sia progettuali che tecnologici, suddivisa per fasi (analisi, progettazione, programmazione, verifica e validazione).

    == Codifica
    Esposizione dei principali problemi affrontati in fase di codifica e spiegazione delle scelte fatte per superarli.

    == Risultati Ottenuti
    Descrizione dei risultati ottenuti dallo stage, sia dal punto di vista qualitativo (visione dell'utente sul prodotto finale) sia quantitativo (metrica delle performance, copertura dei requisiti e testing).

#pagebreak()
 
= Valutazione dell'esperienza

    == Valutazione del Raggiungimento degli Obiettivi
    Riflessione sul raggiungimento degli obiettivi iniziali dello stage, in base a dati concreti, e valutazione del grado di soddisfazione sia per l'azienda che per lo studente.

    == Crescita Professionale
    Analisi dei progressi personali in termini di conoscenze acquisite e competenze pratiche sviluppate durante lo stage.

    == Competenze e Gap con il Corso di Studi
    Valutazione della preparazione accademica rispetto alle competenze richieste in azienda, con eventuale discussione sulle aree di miglioramento o lacune riscontrate nel percorso formativo.
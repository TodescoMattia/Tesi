#import "./template/template.typ": *

#show: template

= Sommario

Il presente documento è stato redatto allo scopo di illustrare l'esperienza di tirocinio svolta presso l'azienda Kirey Group da Mattia Todesco, nel periodo compreso tra il 3 luglio e il 19 settembre 2024.

L'obiettivo principale del progetto era lo sviluppo di una web app per la gestione dei dispositivi di una rete, integrando i dati tra IP Fabric, un programma di monitoraggio rete, ed Elasticsearch per migliorare il monitoraggio e la gestione dei dispositivi in questione. 

Il documento si articola in quattro capitoli principali:

    - Contesto organizzativo: descrive il contesto organizzativo e produttivo dell'azienda Kirey group in cui il tirocinante è stato inserito;
    - Obiettivi dello _stage_: presenta il progetto assegnato, il ruolo del tirocinante e le motivazioni alla base della sua scelta;
    - Svolgimento del progetto: illustra il metodo di lavoro adottato, le attività svolte e i risultati conseguiti;
    - Valutazione dell'esperienza: riporta le considerazioni finali del tirocinante sull'esperienza e sulle competenze acquisite.

All'interno del documento sono state adottate le seguenti convenzioni tipografiche:

    - i termini in lingua straniera sono resi in corsivo;
    - ogni immagine è accompagnata da una didascalia e dalla fonte di provenienza;
    - i termini riportati nel glossario sono contrassegnati con una lettera "G" in pedice.

In appendice sono inclusi un elenco di abbreviazioni e acronimi, un glossario e una bibliografia con sitografia dei riferimenti consultati.

#pagebreak()

//###############################################################################################################################


= Contesto organizzativo

== Presentazione e struttura dell'azienda

#showImageWithSource(
  imagePath: "/assets/Kirey_logo.jpg",
  imageWidth: auto,
  caption: [Logo di Kirey group],
  source: "https://www.kireygroup.com",
  label: <Kl>
)

Kirey Group è un'azienda italiana di informatica e consulenza IT fondata nel 2017, con una rete di oltre 850 dipendenti distribuiti in sedi italiane come Milano, Padova, Roma e Torino, e in uffici internazionali in Spagna, Portogallo e Europa dell'Est. 
    
L'azienda offre supporto alle imprese in vari settori, tra cui finanza, sanità, telecomunicazioni, energia e industria, con competenze che spaziano dalla gestione delle infrastrutture IT alla sicurezza informatica e all'analisi dei dati. 

La missione di Kirey Group è quella di aiutare i clienti ad ottimizzare i processi aziendali e a migliorare la competitività attraverso soluzioni digitali innovative.

//###############################################################################################################################

== Clientela

Kirey Group collabora principalmente con clienti, sia privati che pubblici, provenienti dal settore bancario, finanziario e assicurativo, a cui offre soluzioni tecnologiche e servizi di consulenza mirati. 

Le istituzioni finanziarie rappresentano una parte significativa della clientela dell'azienda, grazie alla loro necessità costante di innovare, migliorare l'efficienza operativa e rispettare stringenti normative di conformità.

Un esempio concreto a cui ho potuto assistere, sebbene non in maniera attiva, durante il mio tirocinio è stato quello dell'azienda *CRIF*, leader nel settore di informazione creditizia. In particolare, nel reparto a cui sono stato assegnato, l'azienda si occupa della gestione dei database, assicurando l'efficienza, l'affidabilità e le performance delle infrastrutture per supportare i servizi di informazione creditizia.

//###############################################################################################################################

== Processi aziendali

Durante il mio tirocinio presso Kirey Group, ho avuto modo di osservare da vicino l'organizzazione interna dell'azienda e i processi che la guidano. 
Essendo una realtà specializzata in consulenza e servizi IT, Kirey non si occupa esclusivamente di sviluppo _software_, ma concentra una parte significativa delle sue attività nel fornire supporto e soluzioni ai clienti, garantendo un'assistenza continua e personalizzata.
Questo approccio richiede una gestione meticolosa delle attività, un costante aggiornamento tecnologico e una pianificazione orientata alla soddisfazione del cliente.

=== Supporto continuo ai clienti

Uno degli aspetti più rilevanti dei processi aziendali di Kirey Group è l'attenzione costante alle esigenze dei clienti.
L'azienda garantisce un supporto 24 ore su 24, 7 giorni su 7 per assicurare la continuità operativa dei sistemi critici. 

Personalmente sono stato inserito nella _Business line_ denominata "APM" ovvero "_Application performance monitoring_", e più precisamente nel gruppo "DBA" ovvero "_Database assesment_" che si occupa di di monitorare e gestire i servizi di _database management_ che l'azienda offre.

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
Una delle soluzioni tecnologiche principali adottate da Kirey Group è lo _stack_ ELK (Elasticsearch, Logstash, Kibana), ampiamente utilizzato nei progetti destinati ai clienti:

#showImageWithSource(
  imagePath: "/assets/ELK.png",
  imageWidth: auto,
  caption: [_stack_ Elastic],
  source: "https://www.elastic.co",
  label: <ELK>
)

- *Elasticsearch* è un motore di ricerca e analisi distribuito, ideale per l'indicizzazione e la ricerca di grandi volumi di dati in tempo reale. Viene impiegato per analizzare log e dati transazionali, permettendo ai clienti di ottenere rapidamente insight dettagliati;

- *Logstash* viene utilizzato per l'elaborazione e la trasformazione dei dati prima che vengano indicizzati in Elasticsearch. Facilita la raccolta, l'arricchimento e la normalizzazione dei dati da diverse fonti, semplificando la gestione di flussi complessi di dati;

- *Kibana* fornisce interfacce di visualizzazione intuitive che consentono agli utenti di creare dashboard personalizzate per il monitoraggio e l'analisi dei dati, migliorando la visibilità operativa e supportando le decisioni aziendali.

Questo _stack_ di applicativi permette all'azienda di offrire:

- Monitoraggio e analisi dei log delle applicazioni per la rilevazione di potenziali anomalie e comportamenti sospetti;

- Supporto alla conformità alle normative del settore (come PSD2, GDPR, ecc...);

- Ottimizzazione dell'efficienza operativa tramite dashboard di monitoraggio in tempo reale.

===  Tecnologie secondarie

Oltre all'ELK _stack_, Kirey Group utilizza una vasta gamma di tecnologie secondarie che vengono utilizzate al bisogno, tra cui:

- *Java* e framework come *Spring Boot* per lo sviluppo _back-end_ di applicazioni;
- *React* per lo sviluppo di interfacce utente;
- *Docker* e *Kubernetes* per la creazione di _container_ e la gestione delle applicazioni, andando a migliorarne il _deployment_ e la scalabilità delle stesse.

=== Panoramica delle piattaforme di lavoro

Kirey Group adotta inoltre alcune piattaforme collaborative e strumenti di produttività per facilitare il lavoro in team:

- *Microsoft Teams* per la comunicazione interna e le videoconferenze;
- *Confluence* per la documentazione centralizzata dei progetti;
- *Jira* per la gestione delle attività e la pianificazione degli sprint;
- *Bitbucket* per il version control e l'integrazione continua (CI/CD).

Queste piattaforme assicurano una gestione efficace delle informazioni, una comunicazione fluida e un'alta produttività, sia per i _team_ in ufficio che per quelli in modalità remota.

//###############################################################################################################################

== Approccio all'innovazione

Uno degli aspetti fondamentali della strategia aziendale di Kirey Group è l'innovazione.
Essa viene perseguita in modo sistematico e non si riversa solo nello sviluppo tecnologico, ma anche nel costante miglioramento dei processi interni e della cultura organizzativa.

Nel corso del tirocinio, ho potuto notare come Kirey Group consideri l'innovazione un processo continuo, che entra in ogni aspetto delle attività aziendali.
Questo approccio si concretizza attraverso l'investimento continuo per l'adozione di nuove tecnologie, il miglioramento costante dei processi interni e la promozione di una cultura organizzativa aperta al cambiamento. 
In particolare, ho potuto osservare l'importanza attribuita a:

- *Innovazione tecnologica*: l'azienda cerca costantemente di rimanere al passo con le più moderne tecnologie, in particolare riguardanti big data analytics e machine learning. Nell'ambito del progetto di sviluppo dell'applicazione alla quale io sono stato assegnato, sono stato in grado di lavorare con strumenti di Elasticsearch e Kibana e analizzare e rappresentare grandi quantità di dati;

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
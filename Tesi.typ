#import "./template/template.typ": *

#show: template

= Sommario

Il presente documento è stato redatto allo scopo di illustrare l'esperienza di tirocinio svolta presso l'azienda Kirey Group da Mattia Todesco, nel periodo compreso tra il 3 luglio e il 19 settembre 2024.

L'obiettivo principale del progetto era lo sviluppo di una web app per la gestione dei dispositivi di una rete, integrando i dati tra IP Fabric ed Elasticsearch per migliorare il monitoraggio e la gestione dei dispositivi di rete. 

Il documento si articola in quattro capitoli principali:

    - Contesto organizzativo: descrive il contesto organizzativo e produttivo dell'azienda Kirey group in cui il tirocinante è stato inserito;
    - Obiettivi dello stage: presenta il progetto assegnato, il ruolo del tirocinante e le motivazioni alla base della sua scelta;
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

== Presentazione e struttura dell'Azienda

Kirey Group è un'azienda italiana di informatica e consulenza IT fondata nel 2017, con una rete di oltre 850 dipendenti distribuiti in sedi italiane come Milano, Padova, Roma e Torino, e in uffici internazionali in Spagna, Portogallo e Europa dell'Est. 
    
L'azienda offre supporto alle imprese in vari settori, tra cui finanza, sanità, telecomunicazioni, energia e industria, con competenze che spaziano dalla gestione delle infrastrutture IT alla sicurezza informatica e all'analisi dei dati. 

La missione di Kirey Group è quella di aiutare i clienti ad ottimizzare i processi aziendali e a migliorare la competitività attraverso soluzioni digitali innovative.

//###############################################################################################################################

== Clientela

Kirey Group collabora principalmente con clienti provenienti dal settore bancario, finanziario e assicurativo, a cui offre soluzioni tecnologiche e servizi di consulenza mirati. 

Le istituzioni finanziarie rappresentano una parte significativa della clientela dell'azienda, grazie alla loro necessità costante di innovare, migliorare l'efficienza operativa e rispettare stringenti normative di conformità.

Un'esempio concreto a cui ho potuto assistere, sebbene non in maniera attiva, durante il mio tirocinio è stato quello dell'azienda *CRIF*, leader nel settore di informazione creditizia.

//###############################################################################################################################

== Processi Aziendali
Descrizione dei processi interni di sviluppo, manutenzione e gestione delle attività. Saranno inclusi aspetti come metodologie di lavoro, pianificazione e approccio alla risoluzione dei problemi.

//###############################################################################################################################

== Tecnologie Utilizzate
Una delle soluzioni tecnologiche principali adottate da Kirey Group è lo stack ELK (Elasticsearch, Logstash, Kibana), ampiamente utilizzato nei progetti destinati ai clienti:

- *Elasticsearch* è un motore di ricerca e analisi distribuito, ideale per l'indicizzazione e la ricerca di grandi volumi di dati in tempo reale. Viene impiegato per analizzare log e dati transazionali, permettendo ai clienti di ottenere rapidamente insight dettagliati;

- *Logstash* viene utilizzato per l'elaborazione e la trasformazione dei dati prima che vengano indicizzati in Elasticsearch. Facilita la raccolta, l'arricchimento e la normalizzazione dei dati da diverse fonti, semplificando la gestione di flussi complessi di dati;

- *Kibana* fornisce interfacce di visualizzazione intuitive che consentono agli utenti di creare dashboard personalizzate per il monitoraggio e l'analisi dei dati, migliorando la visibilità operativa e supportando le decisioni aziendali.

Questo stack di applicativi permette all'azienda di offrire:

- Monitoraggio e analisi dei log delle applicazioni per la rilevazione di potenziali anomalie e comportamenti sospetti;

- Supporto alla conformità alle normative del settore (come PSD2, GDPR, ecc...);

- Ottimizzazione dell'efficienza operativa tramite dashboard di monitoraggio in tempo reale.

===  Tecnologie secondarie

Oltre all'ELK stack, Kirey Group utilizza una vasta gamma di tecnologie secondarie che vengono utilizzate al bisogno, tra cui:

- *Java* e framework come *Spring Boot* per lo sviluppo back-end di applicazioni;
- *React* per lo sviluppo di interfacce utente;
- *Docker* e *Kubernetes* per la creazione di container e l'orchestrazione delle applicazioni, andando a migliorarne il deployment e la scalabilità delle stesse.

=== Panoramica delle piattaforme di lavoro

Kirey Group adotta inoltre alcune piattaforme collaborative e strumenti di produttività per facilitare il lavoro in team:

- *Microsoft Teams* per la comunicazione interna e le videoconferenze;
- *Confluence* per la documentazione centralizzata dei progetti;
- *Jira* per la gestione delle attività e la pianificazione degli sprint;
- *Bitbucket* per il version control e l'integrazione continua (CI/CD).

Queste piattaforme assicurano una gestione efficace delle informazioni, una comunicazione fluida e un'alta produttività, sia per i team in ufficio che per quelli in modalità remota.

//###############################################################################################################################

== Approccio all'Innovazione
Analisi del ruolo dell'innovazione in azienda, (ho chiesto esempi concreti di come vengono promosse nuove idee o miglioramenti tecnologici) inclusi eventuali progetti di ricerca e sviluppo o collaborazioni con altre realtà.

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
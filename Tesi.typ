#import "./template/template.typ": *

#show: template

//###############################################################################################################################

= Contesto organizzativo

== Presentazione dell'azienda

Kirey Group è una società italiana di consulenza IT e informatica, fondata nel 2017, con una rete che conta oltre 850 dipendenti. L'azienda ha sedi in diverse città italiane, tra cui Milano, Padova, Roma e Torino, e uffici internazionali in Spagna, Portogallo e nell'Europa dell'Est.

Durante il mio tirocinio presso Kirey Group, ho potuto osservare da vicino l'offerta dell'azienda verso i clienti. L'approccio di Kirey Group copre molteplici aspetti per le moderne realtà aziendali, tra cui:

- *Gestione delle infrastrutture IT*: Kirey Group si occupa di progettare, implementare e mantenere infrastrutture tecnologiche. Offre servizi di monitoraggio continuo, gestione dei server, ottimizzazione delle reti e supporto tecnico per garantire l'efficienza operativa delle infrastrutture informatiche aziendali;

- *Sicurezza informatica*: L'azienda sviluppa e implementa soluzioni avanzate di _cybersecurity_, come gestione delle identità e accessi, analisi delle vulnerabilità e risposte alle minacce;

- *Analisi dei dati*: Kirey Group realizza piattaforme di _data analytics_, crea modelli predittivi e fornisce strumenti di visualizzazione dei dati. Si occupa di raccogliere, organizzare ed elaborare grandi volumi di informazioni per estrarre informazioni significative, supportando le aziende nell'identificazione di trend e opportunità di business.

//###############################################################################################################################

== Clientela

Kirey Group collabora principalmente con clienti, sia privati che pubblici, provenienti dal settore bancario, finanziario e assicurativo, a cui offre soluzioni tecnologiche ad hoc e servizi di consulenza mirati. 

Le istituzioni finanziarie rappresentano una parte significativa della clientela dell'azienda, grazie alla loro necessità costante di innovare, migliorare l'efficienza operativa e rispettare stringenti normative di conformità.

Un esempio concreto a cui ho potuto assistere, sebbene non in maniera attiva, durante il mio tirocinio è stato *CRIF* (Centrale Rischi Finanziari), leader nel settore di informazione creditizia. In particolare, nel reparto a cui sono stato assegnato, il gruppo si occupa della gestione dei database, assicurando l'efficienza, l'affidabilità e le performance delle infrastrutture per supportare i servizi di informazione creditizia.

//###############################################################################################################################

== Processi aziendali

=== Introduzione

Durante il mio tirocinio presso Kirey Group, ho avuto modo di osservare da vicino l'organizzazione interna dell'azienda e i processi che la caratterizzano. 
Essendo una realtà specializzata in consulenza e servizi IT, Kirey non si occupa principalmente di sviluppo _software_, ma concentra una parte significativa delle sue attività nel fornire supporto e soluzioni ai clienti, garantendo un'assistenza continua e personalizzata.
Questo approccio richiede una gestione meticolosa delle attività, un costante aggiornamento tecnologico e una pianificazione orientata alla soddisfazione del cliente.

=== Supporto continuo ai clienti

Uno degli aspetti più rilevanti che caratterizzano i processi aziendali di Kirey Group è l'attenzione costante alle esigenze dei clienti.
L'azienda garantisce un supporto 24 ore su 24, 7 giorni su 7 per assicurare la continuità operativa dei sistemi critici. 

Personalmente sono stato inserito nella _Business line_ denominata "_Application performance monitoring_" (APM), ovvero nel ramo dell'azienda che si occupa del monitoraggio in tempo reale delle prestazioni e della funzionalità delle applicazioni dei clienti, e più precisamente nel gruppo "_Database assesment_" (DBA) che si occupa di di monitorare e gestire i servizi di _database management_ che l'azienda offre.

Questo supporto viene gestito attraverso:

- *_Team_ di supporto*: Divisione del personale in diversi gruppi, ciascuno specializzato in una porzione del monitoraggio dei sistemi o della gestione delle segnalazioni dei clienti.

- *Sistemi di _ticketing_*: Il supporto viene gestito tramite piattaforme di _ticketing_, che consentono di tracciare ogni richiesta di assistenza. Ogni _ticket_ viene classificato per priorità e assegnato al gruppo preposto per quel compito, garantendo tempi di risposta rapidi e conformi agli SLA (_Service Level Agreement_) concordati con i clienti.

- *Monitoraggio continuo*: L'uso di strumenti come Elasticsearch, Logstash e Kibana (approfonditi nella @tecnologie) permette un monitoraggio continuo dei sistemi. Durante il tirocinio, ho avuto l'opportunità di osservare _dashboard_ personalizzate che aiutano a identificare anomalie in tempo reale e a intervenire proattivamente per prevenire disservizi.

=== Documentazione

Un altro elemento fondamentale che ho potuto osservare è l'attenzione alla documentazione continua e al condividere la conoscenza all'interno dei _team_. 

Ogni volta che viene risolto un problema complesso o implementata una nuova procedura, viene creato un documento dettagliato che spiega i passaggi seguiti. Questa documentazione è salvata su piattaforme collaborative come Confluence. Durante il tirocinio, mi sono trovato spesso a consultare queste risorse, e ho avuto anche l'opportunità di contribuire con le mie esperienze e osservazioni. Questo approccio garantisce che tutti i gruppi possano accedere rapidamente a soluzioni già testate, migliorando la continuità operativa e la capacità di risolvere problemi simili in futuro.

=== Automazione dei processi di supporto

Un altro aspetto che ho potuto osservare durante il mio tirocinio è stata l'implementazione dell'automazione dei processi per migliorare l'efficienza e la rapidità di risposta. 

Nel gruppo Database Assessment (DBA), molte attività ripetitive come la verifica della salute dei database e il controllo dei log vengono automatizzate tramite script personalizzati e strumenti di automazione come Bash scripting. Questa automazione permette di ridurre i tempi di intervento e minimizzare gli errori umani. Ho avuto l'opportunità di vedere come questi strumenti siano configurati per inviare notifiche automatiche  via e-mail al team quando vengono rilevati problemi critici, facilitando interventi immediati e tempestivi.

=== Metodologie di lavoro agile

Nonostante il focus consulenziale, Kirey Group adotta metodologie Agile per la gestione delle attività e dei progetti. 
Viene implementata quindi una collaborazione continua tra team di lavoro e cliente, basata principalmente sulla consegna frequente di piccoli incrementi funzionanti del prodotto.

L'approccio Scrum è ampiamente utilizzato per organizzare il lavoro in modo efficiente e flessibile, anche per attività di supporto e manutenzione evolutiva.

#showImageWithSource(
  imagePath: "/assets/Scrum.png",
  imageWidth: auto,
  caption: [Panoramica _framework_ Scrum],
  source: "https://www.scrum.org",
  label: <Scrum>
)
 All'interno dell'azienda, le "abitudini" Agile derivate dal _framewrok_ Scrum che sono state adottate sono:

- *_Daily Meeting_*: Ogni mattina i membri di un determinato gruppo di lavoro partecipano a brevi riunioni chiamate _daily stand-up meeting_. Durante questi incontri, ciascun membro condivide lo stato delle attività, gli eventuali ostacoli e le priorità della giornata. Questo processo facilita una comunicazione trasparente e permette di risolvere rapidamente eventuali problemi.

- *Sprint di Manutenzione*: Le attività di manutenzione e supporto sono organizzate in sprint della durata di una settimana. Ogni sprint include interventi pianificati di aggiornamento dei sistemi, miglioramenti delle infrastrutture e risoluzione di problemi ricorrenti.

- *Retrospettive*: il venerdi pomeriggio al termine di ogni Sprint si svolge una retrospettiva per analizzare l'andamento delle attività e individuare possibili miglioramenti nei processi di supporto.

=== Gestione delle _escalation_

infine, un ultimo processo chiave che ho potuto osservare è la gestione delle _escalation_, ovvero delle "emergenze". 

In situazioni in cui i problemi sono particolarmente critici o complessi, c'è una procedura ben definita per coinvolgere rapidamente i responsabili tecnici _senior_ o altri esperti del settore. Ho assistito a diversi casi in cui un problema veniva individuato tramite il sistema di monitoraggio, e grazie a un processo di _escalation_ efficace, il _team_ riusciva a risolverlo rapidamente senza impattare l'operatività del cliente. 

Questa gestione strutturata delle _escalation_ assicura che ogni problema riceva l'attenzione necessaria, mantenendo alto il livello di servizio offerto ai clienti.

//###############################################################################################################################

== Tecnologie utilizzate <tecnologie>

=== Tecnologie principali

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

=== Tecnologie di supporto

Oltre allo _stack_ ELK, Kirey Group utilizza diverse tecnologie complementari, scelte in base alle esigenze del progetto:

- *Java* e framework come *Spring Boot* per lo sviluppo _back-end_ di applicazioni. Spring Boot facilita la creazione di applicazioni Java _stand-alone_ con configurazione minima e supporta funzionalità come gestione delle dipendenze e microservizi.

- *React* è una libreria JavaScript per la creazione di interfacce utente dinamiche e componenti riutilizzabili. Nei progetti aziendali, ho osservato come l'integrazione di React con Kibana possa migliorare ulteriormente l'interattività delle dashboard.

- *Docker* è una piattaforma per la creazione e gestione di _container_, che garantisce un ambiente di esecuzione coerente per le applicazioni. Ogni _container_ include tutto il necessario per l'esecuzione del software (codice, _runtime_, librerie, ecc.).

- *Kubernetes* (K8s) è un sistema per l'orchestrazione dei _container_, che automatizza il _deployment_, la gestione e la scalabilità delle applicazioni Docker.

Di seguito una rappresentazione fornitami dall'azienda di una tipica interazione tra le tecnologie sopra elencate:

#showImageWithSource(
  imagePath: "/assets/Tecnologie_secondarie.png",
  imageWidth: auto,
  caption: [Diagramma architetturale delle tecnologie di supporto],
  source: "Risorsa fornita dal tutor aziendale",
  label: <TS>
)
=== Strumenti di lavoro

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

- *Innovazione tecnologica*: l'azienda cerca costantemente di rimanere al passo con le più moderne tecnologie, in particolare riguardanti _big data analytics_ e _machine learning_. Nell'ambito del progetto di sviluppo dell'applicazione alla quale io sono stato assegnato, sono stato in grado di lavorare con strumenti avanzati e tecnologicamente "nuovi" di Elasticsearch e Kibana e analizzare e rappresentare grandi quantità di dati;

- *Innovazione nei processi* : ho potuto partecipare, seppure da esterno, a riunioni di sprint e sessioni di pianificazione, utilizzando la metodologia Agile, e lo sviluppo basato su attività come Scrum e CI/CD (Continuous Integration / Continuous Delivery). Esse aiutano a rendere il processo più efficiente e flessibile;

- *Formazione costante*: a seguito di colloqui avuti con alcuni colleghi è emerso che l'azienda, specialmente nei primi anni dall'assunzione, offre una vasta gamma di opportunità formative e di studio da svolgere durante l'orario di lavoro.

//###############################################################################################################################

#pagebreak()

= Lo stage

== Il ruolo dello Stage secondo Kirey group

Lo stage ricopre un ruolo cruciale nel percorso di crescita di Kirey Group, rappresentando un tassello fondamentale per il raggiungimento degli obiettivi di innovazione e sviluppo aziendale. 
Come parte integrante della strategia dell'azienda, lo stage è concepito non solo come un momento di apprendimento per i giovani, ma anche come un'opportunità per Kirey Group di attrarre nuovi talenti e introdurre idee e competenze fresche all'interno dei propri team.

Durante il mio periodo di stage, sono stato inserito in un gruppo di lavoro collaborativo e stimolante, dove la mia figura non è stata relegata a un ruolo secondario, ma è stata valorizzata come risorsa attiva nel processo aziendale. L'ambiente lavorativo si è rivelato inclusivo e supportivo, favorendo la condivisione delle conoscenze e un costante scambio di idee. La fase iniziale del mio percorso è stata dedicata alla formazione, durante la quale ho avuto modo di conoscere altri colleghi, provenienti sia dall'Università di Padova, come me, sia da contesti accademici e professionali differenti, a testimonianza dell'impegno dell'azienda nel creare un ecosistema variegato e aperto alla diversità.

Questo periodo di formazione ha rappresentato un'occasione unica per applicare le competenze acquisite nel mio percorso di studi a situazioni reali e sfide concrete. Allo stesso tempo, per Kirey Group, lo stage si configura come uno strumento strategico per individuare nuovi talenti e valutare la possibilità di integrare le risorse più promettenti nel proprio organico, contribuendo a mantenere un vantaggio competitivo e a stimolare un continuo processo di innovazione.

== Progetto proposto

=== Descrizione del progetto

L'obiettivo principale di questo progetto è sviluppare un'applicazione web che automatizzi il censimento e la gestione dei dispositivi di rete, offrendo agli utenti un'interfaccia grafica per monitorare e configurare il sistema in tempo reale.

L'applicazione estrae i dati sui dispositivi di rete da IPFabric, li memorizza in un indice Elasticsearch e consente agli utenti di abilitare o disabilitare il monitoraggio delle prestazioni di rete.

Il sistema è progettato per garantire una sincronizzazione costante dei dati, permettendo agli utenti di mantenere l'elenco dei dispositivi e le configurazioni sempre aggiornati. Attraverso l'applicazione web, gli utenti possono anche aggiornare i dati e modificare le impostazioni di monitoraggio per riflettere in tempo reale lo stato della rete.

==== Funzionalità Principali

- *Visualizzazione e Aggiornamento dell'Indice:* L'applicazione consente agli utenti di visualizzare le informazioni sui dispositivi salvate nell'indice Elasticsearch, offrendo un'interfaccia grafica per esplorare i dati. Inoltre, è possibile aggiornare i documenti nell'indice per garantire che le informazioni siano sempre allineate con lo stato attuale della rete.

- *Modifica dei Campi:* Gli utenti hanno la possibilità di modificare specifici campi dei dispositivi all'interno dell'indice, come i flag per il monitoraggio SNMP, Netflow (dei protocolli di rete) e altre impostazioni, consentendo una gestione dettagliata e personalizzata dei dispositivi di rete.

- *Aggiornamento del File YAML:* L'applicazione permette di aggiornare automaticamente un file YAML che contiene la lista dei dispositivi con monitoraggio attivo, facilitando la gestione e la configurazione dei dispositivi da monitorare direttamente dall'interfaccia web.

#showImageWithSource(
  imagePath: "/assets/NPMDevices.png",
  imageWidth: auto,
  caption: [Architettura di base dell'applicazione],
  source: "Prodotta durante lo stage",
  label: <Architettura>
)

=== Obiettivi

Gli obiettivi sono classificati secondo le seguenti notazioni:
- *Ob*: per i requisiti obbligatori, vincolanti in quanto obiettivo primario richiesto dal committente;
- *D*: per i requisiti desiderabili, non vincolanti o strettamente necessari, ma dal riconoscibile valore aggiunto;
- *Op*: per i requisiti opzionali, rappresentanti valore aggiunto non strettamente competitivo.

Le sigle precedentemente indicate saranno seguite da un numero identificativo del requisito.

#linebreak()
#set table.cell(inset: (y:0.25cm), breakable: true)
#show figure: set block(breakable: true)

#figure(
  table(
    columns: (0.5fr, 2fr),
    align: (center+horizon, left+horizon),
    [*Categoria*], [*Descrizione*],
    [*Ob 1.1*], [Individuazione delle componenti da installare.],
    [*Ob 1.2*], [Installazione e configurazione delle componenti.],
  ),
  kind: table,
  numbering: (_) => [#counter(heading).get().at(0)] + "." + [#counter(figure.where(kind: table)).display()],
  caption: [Preparazione dell'ambiente per l'applicazione web.],
)

#linebreak()

#figure(
  table(
    columns: (0.5fr, 2fr),
    align: (center+horizon, left+horizon),
    [*Categoria*], [*Descrizione*],
    [*Ob 2.1*], [Estrazione lista dei dispositivi da monitorare da IPFabric.],
    [*Ob 2.2*], [Scrittura in Elasticsearch della lista dei dispositivi da monitorare.],
    [*Ob 2.3*], [Aggiornamento automatico del file con il censimento dispositivi.],
    [*D 2.4*], [Aggiornamento automatico configurazioni Logstash per il monitoraggio SNMP.],
    [*D 2.5*], [Aggiornamento automatico configurazioni Logstash per il monitoraggio Netflow.],
  ),
  kind: table,
  numbering: (_) => [#counter(heading).get().at(0)] + "." + [#counter(figure.where(kind: table)).display()],
  caption: [Implementazione dell'applicazione: back-end.],
)
#linebreak()

#figure(
  table(
    columns: (0.5fr, 2fr),
    align: (center+horizon, left+horizon),
    [*Categoria*], [*Descrizione*],
    [*Ob 3.1*], [Realizzazione di una tabella per la visualizzazione dei dispositivi.],
    [*Ob 3.2*], [Implementare la modifica e il salvataggio nella tabella.],
    [*Ob 3.3*], [Implementare la sezione filtri per le ricerche nella tabella.],
    [*Op 3.4*], [Implementare la possibilità di aggiornare la lista dei dispositivi con un bottone.],
    [*Op 3.5*], [Implementare l'autenticazione e la profilazione per il login nell'applicazione.],
  ),
  kind: table,
  numbering: (_) => [#counter(heading).get().at(0)] + "." + [#counter(figure.where(kind: table)).display()],
  caption: [Implementazione dell'applicazione: front-end.],
)

#linebreak()

#figure(
  table(
    columns: (0.5fr, 2fr),
    align: (center+horizon, left+horizon),
    [*Categoria*], [*Descrizione*],
    [*Ob 4.1*], [Descrizione delle tecnologie e prodotti utilizzati.],
    [*Ob 4.2*], [Descrizione dei flussi logici del progetto e delle funzionalità.],
    [*D 4.3*], [Pro/contro di ogni componente e criticità nell'applicazione.],
  ),
  kind: table,
  numbering: (_) => [#counter(heading).get().at(0)] + "." + [#counter(figure.where(kind: table)).display()],
  caption: [Documentazione dettagliata.],
)

== La Strategia di Innovazione dell'Azienda e gli Stage

== Obiettivi Personali e Motivazioni della Scelta


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
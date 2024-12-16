#set page(
  numbering: "i",
  number-align: center,
  paper: "a4",
  margin: (x: 3cm, y: 2.5cm)
)

#let coverPage(body) = {
  box(width: 100%, height: 100%, stroke: 0.5pt, outset: 50pt, clip: false)[
    #v(1.5em)
    #align(center, image("./assets/logo.png", width: 15em)) // Assicurati che il percorso e il file esistano
    #v(4em)
    #align(center, text("UNIVERSITÀ DEGLI STUDI DI PADOVA", size: 2em, weight: "bold"))
    #v(2em)
    #align(center, text("Dipartimento di Matematica \"Tullio Levi-Civita\"", size: 1.5em))
    #v(2.5em)
    #align(center, text("Corso di Laurea in", size: 1.5em))
    #align(center, text("INFORMATICA", size: 2em, weight: "bold"))
    #v(2.5em)
    #align(center, text("Tesi di Laurea", size: 1.5em))
    #align(center, text("NPM - Network performance monitoring", size: 1.6em))
    #v(3em)
    #align(center, text("A.A. 2024/2025", size: 1.5em, weight: "extralight"))

    #v(5em)
    #grid(
      columns: (1fr, 1fr),
      align: (left, right),
      text("Prof. Tullio Vardanega"),
      text("Mattia Todesco\nMatricola n. 1193375")
    )
  ]
  
  pagebreak()
  
  align(center+bottom, [Mattia Todesco: _NPM Network performance monitoring_, Tesi di laurea triennale, 2025 ])
  counter(page).update(1)

  pagebreak()

  heading("Sommario", outlined: false)
[
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
]

  pagebreak()
  body

}
#coverPage([]) // Invoca la funzione con un array vuoto per visualizzare la copertina.

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
  body
}
#coverPage([]) // Invoca la funzione con un array vuoto per visualizzare la copertina.

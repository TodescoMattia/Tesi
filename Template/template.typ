#import "./coverPage.typ": coverPage

#let template(
  body
) = {  
  show heading.where(
    level: 1
  ): it => {
    set text(size: 1.5em)
    it
    v(1em, weak: true)
  }
  show heading.where(
    level: 2
  ): it => {
    set text(size: 1.2em)
    v(0.5em, weak: false)
    it
    v(1em, weak: true)
  }
  show heading.where(
    level: 3
  ): it => {
    set text(size: 1.1em)
    it
    v(1em, weak: true)
  }
  
  show: coverPage

  set page(
    numbering: "1",
    number-align: center,
    paper: "a4",
    margin: (x: 3cm, y: 2.5cm),
  )
  set heading(
    numbering: "1.1",
  )
  set list(
    marker: ([•], [--]),
  )
  set enum(
    numbering: "1a)",
  )
  set table(
    fill: (_, row) => if row == 0 { luma(220) },
    stroke: 0.5pt + luma(140),
  )
  show link: set text(fill: blue)
  show outline.entry.where(
    level: 1
  ): it => {
    v(6pt)
    strong(it)
  }

  show "TODO": it => [
    #box(
      stroke: red,
      inset: 0.15em,
      text("Riferimento assente", fill: red, weight: "bold")
    )
  ]

  let lastVisitedOn(date) = {
    if (date.at(2) < 99) { date.at(2) += 2000 }
    text("(ultimo accesso " + datetime(year: date.at(2), month: date.at(1), day: date.at(0)).display("[day]/[month]/[year]") + ")", size: 0.8em, style: "italic", fill: luma(100))
  }

  show figure.where(kind: table): set figure(supplement: "Tabella")
  
  // Page header.
  set page(
    header: locate(loc => {
      text(
        0.75em,
        if counter(page).at(loc).first() > 1 [
          #h(1fr)
          #line(length: 100%, stroke: 0.25pt)
        ]
      )
    }),
    margin: (x: 3cm, y: 2.5cm),
  )
  
  set text(size: 13pt)
  // Index of contents
  page(numbering: none)[
    #outline(
      title: "Indice dei contenuti",
      depth: 4,
      indent: true
    )
  ]
  pagebreak()

  show outline.entry.where(
    level: 1
  ): it => {
    set text(weight: "extralight")
    v(-6pt)
    it
  }
  
  // Index of images
  page(numbering: none)[
    #outline(
      title: "Indice delle immagini",
      target: figure.where(kind: image)
    )
  ]
  pagebreak()
  
  // Index of tables
  page(numbering: none)[
    #outline(
      title: "Indice delle tabelle",
      target: figure.where(kind: table)
    )
  ]
  pagebreak()
  
  // Prepare regex for glossary terms matching
  let glossary = json("/glossario.json");
  let glossaryRegex = ()
  let regexSeparator = "(\b|$)|(\b|$)"
  for term in glossary.keys() {
    glossaryRegex.push(term)
    glossaryRegex.push(lower(term))
    if glossary.at(term).acronyms.len() > 0 {
      glossaryRegex.push(glossary.at(term).acronyms.join(regexSeparator))
      glossaryRegex.push(lower(glossary.at(term).acronyms.join(regexSeparator)))
    }
    if glossary.at(term).synonyms.len() > 0 {
      glossaryRegex.push(glossary.at(term).synonyms.join(regexSeparator))
      glossaryRegex.push(lower(glossary.at(term).synonyms.join(regexSeparator)))
    }
  }
  glossaryRegex = glossaryRegex.dedup().sorted().rev().join(regexSeparator)
  
  // Highlight glossary terms
  show regex(
    glossaryRegex
  ): it => {
    it
    h(0.03em)
    text(
      fill: luma(100),
      sub(emph("G"))
    )
    h(0.02em)
  }

  // Body
  set par(
    justify: true
  )
  counter(page).update(1)

  body

  pagebreak()
  
  show regex(
    "\bG\b"
  ): it => {
    ""
  }
  
  set heading(
    level: 1,
    numbering: none,
  )

  show heading.where(
    level: 1
  ): it => {
    set text(size: 14pt)
    it
    v(1em, weak: true)
  }
  show heading.where(
    level: 2
  ): it => {
    set text(size: 12pt)
    it
    v(1em, weak: true)
  }
  
  [= Acronimi e abbreviazioni]

  let acronyms = json("/acronimi.json");
  
  let previousTerm = acronyms.keys().at(0)
  heading(
    level: 1,
    outlined: false,
    previousTerm.at(0)
  )
  v(-1em)
  line(length: 100%)
  for term in acronyms.keys() {
    if (term.at(0) != previousTerm.at(0)) {
      heading(
        level: 1,
        outlined: false,
        term.at(0)
      )
      v(-1em)
      line(length: 100%)
    }
    [#strong(term): #text(acronyms.at(term)). \ ]
    previousTerm = term
  }
  
  pagebreak()

  [= Glossario]

  let previousTerm = glossary.keys().at(0)
  heading(
    level: 1,
    outlined: false,
    previousTerm.at(0)
  )

  v(1em)
  line(length: 100%)
  v(-1em)
  for term in glossary.keys() {
    if (term.at(0) != previousTerm.at(0)) {
      heading(
        level: 1,
        outlined: false,
        term.at(0)
      )
      v(-1em)
      line(length: 100%)
      v(-1em)
    }
    heading(
      level: 2,
      outlined: false,
      if glossary.at(term).acronyms.len() > 0 {
        term + " (" + glossary.at(term).acronyms.join(", ") + ")"
      }
      else {
        term
      }
    )
    text(
      glossary.at(term).description
    )
    previousTerm = term
  }

  pagebreak()

  [= Bibliografia e sitografia]
  let bibliography = json("/bibliografia_sitografia.json");
  let previousTerm = bibliography.keys().at(0)

  heading(
    level: 1,
    outlined: false,
    previousTerm.at(0)
  )

  v(-1em)
  line(length: 100%)
  for term in bibliography.keys() {
    if (term.at(0) != previousTerm.at(0)) {
      heading(
        level: 1,
        outlined: false,
        term.at(0)
      )
      v(-1em)
      line(length: 100%)
    }
    [- #eval(bibliography.at(term).description, mode: "markup") \ #link(bibliography.at(term).url) #lastVisitedOn(bibliography.at(term).date) \ \ ]
    previousTerm = term
  }
}

#let showImageWithSource(imagePath: "", imageWidth: auto, caption: "", source: "",label: "") = {
  [
    #figure(
    align(center,image(imagePath, width: imageWidth)),
    caption: [#caption],
    supplement: "Immagine",
    numbering: (_) => [#counter(heading).get().at(0)] + "." + [#counter(figure.where(kind: image)).display()],
    )#label
    #if source != "" [
      #v(-1.7em)
      #set par(justify: false)
      #align(center, text("\nFonte: " + link(source)))
    ]
  ]
}

// Chiamata alla funzione template per visualizzare il contenuto
#template([])

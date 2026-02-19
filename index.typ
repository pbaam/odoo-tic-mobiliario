#import "@preview/in-dexter:0.7.2": *
#import "@preview/icu-datetime:0.2.1" as icu
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#let course = (
  name: "2º Año de Desarrollo de Aplicaciones Multiplataforma",
  module: "Software de Gestión Empresarial",
)
#let institution = (
  name: "IES Ítaca",
  logo: "doc/eitaca.jpeg",
  website: "https://www.e-itaca.es/",
)
#let authors = (
  (
    name: "Pablo Aurelio Álvarez Marzo",
    email: "0298palvarez@e-itaca.es"
  ),
  (
    name: "Miguel Arnauda Miña",
    email: "0238marnauda@e-itaca.es",
  ),
  (
    name: "Dilan Jhosep Solarte Londoño",
    email: "0267dsolarte@e-itaca.es",
  ),
)

#show outline.entry.where(level: 1): set outline.entry(fill: [])
#show figure.caption: it => context [
  #text(weight: "bold")[]
  #it.body
  #v(25pt)
]
#show heading: set block(below: 2em)

#set figure(supplement: "Imagen")
#set text(font: "Noto Sans")
#set heading(
  numbering: "1.",
)
#set page(
  footer: context {
    if counter(page).get().first() > 1 {
      line(length: 100%)

      grid(
        columns: (1fr, 1fr, 1fr),
        gutter: 3pt,
        text(authors.at(0).name + "\n" + authors.at(1).name + authors.at(2).name, size: 9pt),
        "",
        align(right)[
          Página #{counter(page).display()} de #{counter(page).final().at(0)}
        ],
      )
    }
  }
)

#title[
  Módulo de Odoo para la gestión de inventario TIC y mobiliario
]
#v(12pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  [
    #authors.at(0).name \
    #text(link("mailto:" + authors.at(0).email), size: 7pt) \
  ],
  [
    #authors.at(1).name \
    #text(link("mailto:" + authors.at(1).email), size: 7pt) \
  ],
  [
    #authors.at(2).name \
    #text(link("mailto:" + authors.at(2).email), size: 7pt) \
  ],
)

#block(
  width: 100%,
  height: 100%,
  place(bottom + left)[
    #link(institution.website)[#institution.name],
    #course.name \
    #course.module  \
    #link(institution.website)[#image(institution.logo, width: 100pt)]
    #v(30pt)
    #icu.fmt(datetime.today(), locale: "es-ES", length: "long") \
  ]
)

//#outline(
//  title: pad("Índice", bottom: 1em),
//)
//#pagebreak()

//= Biografía
//#bibliography("", full: true, title: none)

= Funcionalidades

- creación de mobiliario
- creación de etiquetas del mobiliario
- modificación
- eliminación
- gestión de inventario
- creación del inventario
- búsqueda de un objeto del inventario
- eliminación de inventario

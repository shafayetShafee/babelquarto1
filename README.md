# Hosting a Multilingual Quarto Book in Github Pages (using the  `{babelquarto}` R package)

Suppose you have a book directory[^1] with the quarto souce documents in different languages. The directory sturcture is as follows,

[^1]: This example book structure is created using the `babelquarto::quarto_multilingual_book( parent_dir = getwd(), book_dir = "blop")`.

``` bash
blop
├── cover.png
├── index.es.qmd
├── index.fr.qmd
├── index.qmd
├── intro.es.qmd
├── intro.fr.qmd
├── intro.qmd
├── references.bib
├── references.es.qmd
├── references.fr.qmd
├── references.qmd
├── summary.es.qmd
├── summary.fr.qmd
├── summary.qmd
└── _quarto.yml
```

### Steps:

1. Render and generate the multilingual quarto book,

   ``` r
   babelquarto::render_book("./blop")
   ```
   
   This will generate a directory `_book` with the rendered html files.
   
2. Create a directory `docs` in the parent directory of `blop` and then copy all the contents of `_book` in the `docs` directory.

3. Then pass the `docs` directory to the function [`create_abs_lang_link`](make_link_relative.R).

   ``` r
   create_abs_lang_link("_book", base_link = "https://<user-name>.github.io/<repo-name>")
   ```
   
4. Then host this `docs` directory in github pages.

[`Quarto Multilingual Book`](https://shafayetshafee.github.io/babelquarto1/)



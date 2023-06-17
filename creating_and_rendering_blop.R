library(babelquarto)

parent_dir <- getwd()

quarto_multilingual_book(
  parent_dir = parent_dir
  , book_dir   = "blop"
)


# babelquarto::render_book("./blop")
# cp blop/_book/* docs -r
# create_abs_lang_link("docs", base_link = "https://shafayetshafee.github.io/babelquarto1")

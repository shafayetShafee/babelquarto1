Rscript -e "babelquarto::render_book('./blop')" &&
cp blop/_book/* docs -r
Rscript -e "source('make_link_relative.R');create_abs_lang_link('docs', base_link = 'https://shafayetshafee.github.io/babelquarto1')"

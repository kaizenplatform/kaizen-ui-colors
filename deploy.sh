script_dir="$(cd "$(dirname "${BASH_SOURCE:-${(%):-%N}}")"; pwd)"
lib_dir="${script_dir}/preview/lib"
styles_dir="${script_dir}/preview/styles"
sass --style expanded --sourcemap=none -r ${lib_dir}/sass-utilities.rb ${styles_dir}/style.scss ${styles_dir}/style.css

git subtree push --prefix preview/ origin gh-pages

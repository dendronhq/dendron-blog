cd .next
yarn export
[[ -d ../docs ]] && rm -r ../docs
mv out ../docs 
touch ../docs/.nojekyll
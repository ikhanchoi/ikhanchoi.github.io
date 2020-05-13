#!/bin/bash
sourcedir=./../mathnotes/essays
assetdir=./assets/pandoc

# 포스트 생성
for entry in $sourcedir/*; do
	name=${entry##*/}
	source=$sourcedir/$name/$name.tex

	title=$(grep "\title{" "$source" | cut -c 8- | rev | cut -c 2- | rev)
	title=${title// /-}
	date=$(grep "\date{" "$source" | cut -c 7- | rev | cut -c 2- | rev)
	target=_posts/$date-$title.md

	sed -i 's#../../ikany#../mathnotes/ikany#g' "$source"
	sed -i 's#\\begin{thm}#\\begin{thm}(tagopen)b(tagclose) Theorem. (tagopen)/b(tagclose)#g' "$source"

	pandoc --lua-filter=$assetdir/filter.lua --template=$assetdir/template.md --shift-heading-level=3 --standalone -o "$target" "$source"

	sed -i 's#../mathnotes/ikany#../../ikany#g' "$source"
	sed -i 's#(tagopen)b(tagclose) Theorem. (tagopen)/b(tagclose)##g' "$source"

	sed -i 's#(tagopen)#<#g' "$target"
	sed -i 's#(tagclose)#>#g' "$target"
done


# 푸시
git add *
git commit -m $(date +"%D")
git push

# 판독 필터:
#	amsthm 어렵네
#   tikz(특히 commutative diagram)
#	bib
#	vlasov-poisson 보고 싹 고칠 것 exs 같은 거
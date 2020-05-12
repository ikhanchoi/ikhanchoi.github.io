#!/bin/bash
sourcedir=./../mathnotes/essays
assetdir=./assets/postgenerator

for entry in $sourcedir/*; do
	name=${entry##*/}
	pandoc --lua-filter=$assetdir/filter.lua --template=$assetdir/template.md --shift-heading-level=1 --atx-header --standalone -N -o ../../_posts/3000-01-01-$name.md $dir/$name/$name.tex
done


# 판독 필터:
#	amsthm
#	date on the title of md file
#	vlasov-poisson 보고 싹 고칠 것
#   tikz(특히 commutative diagram)
#	bib

today=$(date +"%y/%m/%d")
git add *
git commit -m '$today'
git push
#!/bin/bash
sourcedir=./../mathnotes/essays
assetdir=./assets/postgenerator

for entry in $sourcedir/*; do
	name=${entry##*/}
	pandoc --lua-filter=$assetdir/filter.lua --template=$assetdir/template.md --shift-heading-level=1 --atx-header --standalone -N -o ../../_posts/3000-01-01-$name.md $dir/$name/$name.tex
done


# 판독 필터:
#	amsthm
#	date
#	vlasov-poisson 보고 싹 고칠 것
#!/bin/bash
sourcedir=./../mathnotes/essays
assetdir=./assets/postgenerator
date=$(grep '\date{' $dir/$name/$name.tex | rev | cut -c 1-10 | rev)

# 포스트 생성
for entry in $sourcedir/*; do
	name=${entry##*/}
	pandoc --lua-filter=$assetdir/filter.lua --template=$assetdir/template.md --shift-heading-level=1 --atx-header --standalone -N -o ../../_posts/$date-$name.md $dir/$name/$name.tex
done

# 푸시
git add *
git commit -m $(date +"%D")
git push

# 판독 필터:
#	amsthm
#	date on the title of md file
#	vlasov-poisson 보고 싹 고칠 것
#   tikz(특히 commutative diagram)
#	bib
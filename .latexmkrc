#!/usr/bin/env perl

# カレントディレクトリ変更
$do_cd = 1;

# uplatexの呼び出し(後で変わる)
$pdf_mode = 3;
$latex = 'uplatex -synctex=1 -interaction=nonstopmode -file-line-error -halt-on-error %O %S';
$dvipdf = 'dvipdfmx %O -o %D %S';
$max_repeat = 5;

# bibtex系
# `bibtex_use=2`を削除し、biberを明示的に使用
$biber = 'biber --input-directory=.tex_intermediates';
$bibtex = '';  # `bibtex`を無効化

# index
$makeindex = 'upmendex %O -o %D %S -s jpbase';

# ヴューワ
$dvi_previewer = "open %S";
$pdf_previewer = "open %S";

# 出力フォルダ指定
$out_dir = ".";
# 中間ファイルを別フォルダに隠しておける
$emulate_aux = 1;
$aux_dir = ".tex_intermediates";

# 中間ファイル登録
$clean_ext="$clean_ext run.xml";
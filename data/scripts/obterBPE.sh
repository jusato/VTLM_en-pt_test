#!/bin/bash

OUTPATH=BPE_res         # caminho onde os arquivos processados serão armazenados
FASTBPE=fastBPE/fast    # caminho para fastBPE

# create output path
mkdir -p $OUTPATH

$FASTBPE learnbpe 50000 conceptual_captions/cc-en.tsv.train conceptual_captions/cc-pt.tsv.train > $OUTPATH/codes
$FASTBPE getvocab conceptual_captions/cc-enVocab.tsv.train conceptual_captions/cc-ptVocab.tsv.train > $OUTPATH/vocab

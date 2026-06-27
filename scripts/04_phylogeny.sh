#!/bin/bash
source scripts/00_config.sh

qiime phylogeny align-to-tree-mafft-fasttree \
  --i-sequences ${RESULTS_DIR}/rep-seqs.qza \
  --o-alignment ${RESULTS_DIR}/aligned-rep-seqs.qza \
  --o-masked-alignment ${RESULTS_DIR}/masked-aligned-rep-seqs.qza \
  --o-tree ${RESULTS_DIR}/unrooted-tree.qza \
  --o-rooted-tree ${RESULTS_DIR}/rooted-tree.qza

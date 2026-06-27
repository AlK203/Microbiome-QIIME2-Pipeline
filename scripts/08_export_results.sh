#!/bin/bash
source scripts/00_config.sh

mkdir -p ${RESULTS_DIR}/exported

qiime tools export \
  --input-path ${RESULTS_DIR}/table.qza \
  --output-path ${RESULTS_DIR}/exported/feature-table

qiime tools export \
  --input-path ${RESULTS_DIR}/taxonomy.qza \
  --output-path ${RESULTS_DIR}/exported/taxonomy

qiime tools export \
  --input-path ${RESULTS_DIR}/rooted-tree.qza \
  --output-path ${RESULTS_DIR}/exported/tree

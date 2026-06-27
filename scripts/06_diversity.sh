#!/bin/bash
source scripts/00_config.sh

qiime diversity core-metrics-phylogenetic \
  --i-phylogeny ${RESULTS_DIR}/rooted-tree.qza \
  --i-table ${RESULTS_DIR}/table.qza \
  --p-sampling-depth ${SAMPLING_DEPTH} \
  --m-metadata-file ${METADATA} \
  --output-dir ${RESULTS_DIR}/core-metrics-results

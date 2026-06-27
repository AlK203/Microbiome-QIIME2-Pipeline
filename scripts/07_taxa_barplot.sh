#!/bin/bash
source scripts/00_config.sh

qiime taxa barplot \
  --i-table ${RESULTS_DIR}/table.qza \
  --i-taxonomy ${RESULTS_DIR}/taxonomy.qza \
  --m-metadata-file ${METADATA} \
  --o-visualization ${RESULTS_DIR}/taxa-barplot.qzv

#!/bin/bash
source scripts/00_config.sh

qiime feature-classifier classify-sklearn \
  --i-classifier ${CLASSIFIER} \
  --i-reads ${RESULTS_DIR}/rep-seqs.qza \
  --o-classification ${RESULTS_DIR}/taxonomy.qza

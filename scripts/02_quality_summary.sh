#!/bin/bash
source scripts/00_config.sh

qiime demux summarize \
  --i-data ${RESULTS_DIR}/paired-end-demux.qza \
  --o-visualization ${RESULTS_DIR}/demux-summary.qzv

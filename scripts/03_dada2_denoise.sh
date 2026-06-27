#!/bin/bash
source scripts/00_config.sh

qiime dada2 denoise-paired \
  --i-demultiplexed-seqs ${RESULTS_DIR}/paired-end-demux.qza \
  --p-trim-left-f ${TRIM_LEFT_F} \
  --p-trim-left-r ${TRIM_LEFT_R} \
  --p-trunc-len-f ${TRUNC_LEN_F} \
  --p-trunc-len-r ${TRUNC_LEN_R} \
  --o-table ${RESULTS_DIR}/table.qza \
  --o-representative-sequences ${RESULTS_DIR}/rep-seqs.qza \
  --o-denoising-stats ${RESULTS_DIR}/denoising-stats.qza

qiime feature-table summarize \
  --i-table ${RESULTS_DIR}/table.qza \
  --o-visualization ${RESULTS_DIR}/table-summary.qzv \
  --m-sample-metadata-file ${METADATA}

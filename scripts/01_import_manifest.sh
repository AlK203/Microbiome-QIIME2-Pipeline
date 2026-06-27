#!/bin/bash
source scripts/00_config.sh

qiime tools import \
  --type 'SampleData[PairedEndSequencesWithQuality]' \
  --input-path ${MANIFEST} \
  --output-path ${RESULTS_DIR}/paired-end-demux.qza \
  --input-format PairedEndFastqManifestPhred33V2

#!/bin/bash
# Project configuration
PROJECT_DIR="."
DATA_DIR="${PROJECT_DIR}/data"
RESULTS_DIR="${PROJECT_DIR}/results"
METADATA="${DATA_DIR}/metadata/sample_metadata.tsv"
MANIFEST="${DATA_DIR}/manifest.csv"

SAMPLING_DEPTH=10000
TRUNC_LEN_F=250
TRUNC_LEN_R=220
TRIM_LEFT_F=0
TRIM_LEFT_R=0

CLASSIFIER="${DATA_DIR}/classifier/silva-138-99-nb-classifier.qza"

mkdir -p ${RESULTS_DIR}

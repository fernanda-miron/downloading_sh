#!/usr/bin/env nextflow

params.index = "$baseDir/data/fastq.csv"
params.cram = "$baseDir/data/cram.csv"

Channel
    .fromPath(params.index)
    .splitCsv(header:true)
    .map{ row-> tuple(row.sampleId, row.read1, row.read2, row.read3) }
    .set { samples_ch }

process fastq {

    publishDir "./data/results", mode:"copy"

    input:
    set sampleId, read1, read2, read3 from samples_ch

    output:
    file sampleId into results_fastq

    script:
    """
    echo "Working in $sampleId"
    mkdir $sampleId
    (cd $sampleId && curl -O $read1)
    (cd $sampleId && curl -O $read2)
    (cd $sampleId && curl -O $read3)
    """
}

Channel
    .fromPath(params.cram)
    .splitCsv(header:true)
    .map{ row-> tuple(row.sampleId, row.read1) }
    .set { samples_cram }

process cram {

    publishDir "./data/results", mode:"copy"

    input:
    set sampleId, read1 from samples_cram

    output:
    file sampleId into results_cram

    script:
    """
    echo "Working in $sampleId"
    mkdir $sampleId
    (cd $sampleId && curl -O $read1)
    """
}

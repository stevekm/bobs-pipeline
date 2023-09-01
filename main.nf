nextflow.enable.dsl=2

include { MAKE_HAMBURGERS } from './workflows/hamburger.nf'

workflow {
    samples_ch = Channel.from(file(params.samplesheet))
        .splitCsv(header:true, sep: ',')
        .map{ row ->
            def meta = ["id": row.name, "orderName": row.order]
            return [ meta, file(row.file)]
        }

    MAKE_HAMBURGERS(samples_ch)
    MAKE_HAMBURGERS.out.hamburgers.view()
}
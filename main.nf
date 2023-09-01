params.outdir = "output"

include { MAKE_HAMBURGER } from './workflows/hamburger.nf'

workflow {
    MAKE_HAMBURGER(Channel.from(file("empty.txt")))
}
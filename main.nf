params.outdir = "output"

include { ADD_TOP_BUN } from './modules/top_bun.nf'
include { ADD_CHEESE } from './modules/cheese.nf'
include { ADD_BURGER } from './modules/burger.nf'
include { ADD_BOTTOM_BUN } from './modules/bottom_bun.nf'

workflow {
    ADD_TOP_BUN()
    ADD_CHEESE(ADD_TOP_BUN.out.sandwich)
    ADD_BURGER(ADD_CHEESE.out.sandwich)
    ADD_BOTTOM_BUN(ADD_BURGER.out.sandwich)
    ADD_BOTTOM_BUN.out.sandwich.view()
}
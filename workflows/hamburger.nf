include { ADD_TOP_BUN } from '../modules/top_bun.nf'
include { ADD_CHEESE } from '../modules/cheese.nf'
include { ADD_BURGER } from '../modules/burger.nf'
include { ADD_BOTTOM_BUN } from '../modules/bottom_bun.nf'

workflow MAKE_HAMBURGER {
    take:
    empty_plates_ch

    main:
    ADD_TOP_BUN(empty_plates_ch)
    ADD_CHEESE(ADD_TOP_BUN.out.sandwich)
    ADD_BURGER(ADD_CHEESE.out.sandwich)
    ADD_BOTTOM_BUN(ADD_BURGER.out.sandwich)
    ADD_BOTTOM_BUN.out.sandwich

    emit:
    hamburger = ADD_BOTTOM_BUN.out.sandwich
}
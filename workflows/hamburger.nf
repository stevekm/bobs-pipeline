include { ADD_TOP_BUN } from '../modules/top_bun.nf'
include { ADD_CHEESE } from '../modules/cheese.nf'
include { ADD_BURGER_PATTY } from '../modules/burger.nf'
include { ADD_BOTTOM_BUN } from '../modules/bottom_bun.nf'

workflow MAKE_HAMBURGERS {
    take:
    customers_ch

    main:
    ADD_TOP_BUN(customers_ch)
    ADD_CHEESE(ADD_TOP_BUN.out.sandwiches)
    ADD_BURGER_PATTY(ADD_CHEESE.out.sandwiches)
    ADD_BOTTOM_BUN(ADD_BURGER_PATTY.out.sandwiches)

    emit:
    hamburgers = ADD_BOTTOM_BUN.out.sandwiches
}
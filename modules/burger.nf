process ADD_BURGER_PATTY {
    tag "${meta.id}"

    input:
    tuple val(meta), path(input_sandwich)

    output:
    tuple val(meta), path(output_file), emit: sandwiches

    script:
    output_file = "${meta.id}.with_patty.txt"
    """
    cat "${input_sandwich}" > "${output_file}"
    printf '(~~~~~~~~~~~~~~~~~~~~~~~~~~~)
    (~~~~~~~~~~~~~~~~~~~~~~~~~~~)
    ' >> "${output_file}"
    """
}
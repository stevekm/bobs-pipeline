process ADD_CHEESE {
    tag "${meta.id}"

    input:
    tuple val(meta), path(input_sandwich)

    output:
    tuple val(meta), path(output_file), emit: sandwiches

    script:
    output_file = "${meta.id}.with_cheese.txt"
    """
    cat "${input_sandwich}" > "${output_file}"
    printf '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    ' >> "${output_file}"
    """
}
process ADD_CHEESE {
    input:
    path(input_sandwich)

    output:
    path(output_file), emit: sandwich

    script:
    output_file = "with_cheese.txt"
    """
    cat "${input_sandwich}" > "${output_file}"
    printf '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    ' >> "${output_file}"
    """
}
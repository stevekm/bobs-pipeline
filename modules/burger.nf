process ADD_BURGER {
    input:
    path(input_sandwich)

    output:
    path(output_file), emit: sandwich

    script:
    output_file = "with_burger.txt"
    """
    cat "${input_sandwich}" > "${output_file}"
    printf '(~~~~~~~~~~~~~~~~~~~~~~~~~~~)
    (~~~~~~~~~~~~~~~~~~~~~~~~~~~)
    ' >> "${output_file}"
    """
}
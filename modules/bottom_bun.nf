process ADD_BOTTOM_BUN {
    publishDir "${params.outdir}", mode: "copy", overwrite: true

    input:
    path(input_sandwich)

    output:
    path(output_file), emit: sandwich

    script:
    output_file = "hamburger.txt"
    """
    cat "${input_sandwich}" > "${output_file}"
    printf '\\__________________________/
    ' >> "${output_file}"
    """
}
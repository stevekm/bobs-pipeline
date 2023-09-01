process ADD_BOTTOM_BUN {
    tag "${meta.id}"
    publishDir "${params.outdir}", mode: "copy", overwrite: true

    input:
    tuple val(meta), path(input_sandwich)

    output:
    tuple val(meta), path(output_file), emit: sandwiches

    script:
    output_file = "${meta.id}.${meta.orderName}.burger.txt"
    """
    cat "${input_sandwich}" > "${output_file}"
    printf '\\__________________________/
    ' >> "${output_file}"
    """
}
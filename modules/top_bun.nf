process ADD_TOP_BUN {
    tag "${meta.id}"

    input:
    tuple val(meta), path(input)

    output:
    tuple val(meta), path(output_file), emit: sandwiches

    script:
    output_file = "${meta.id}.sandwich.txt"
    """
    printf '/¯¯`¯¯`¯¯¯`¯¯`¯¯¯`¯¯¯`¯¯`¯¯¯\\\\
    ' > "${output_file}"
    """
}
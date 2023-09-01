process ADD_TOP_BUN {
    input:
    path(input)

    output:
    path(output_file), emit: sandwich

    script:
    output_file = "sandwich.txt"
    """
    printf '/¯¯`¯¯`¯¯¯`¯¯`¯¯¯`¯¯¯`¯¯`¯¯¯\\\\
    ' > "${output_file}"
    """
}
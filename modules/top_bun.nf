process ADD_TOP_BUN {
    output:
    path(output_file), emit: sandwich

    script:
    output_file = "sandwich.txt"
    """
    printf '/¯¯`¯¯`¯¯¯`¯¯`¯¯¯`¯¯¯`¯¯`¯¯¯\\\\
    ' > "${output_file}"
    """
}
## This is a test of the `DoubleQuotes` lint

version 1.1

workflow test {
    #@ except: MetaDescription
    meta {}

    String good = "this string is okay"
    String bad = 'this string is not okay'
    String interpolated =  # a comment!
        "this string is ok ~{
            'but this is not and ~{
                "while this one is okay ~{
                    'this one is not'
                }"
            }'
        }!"
    #@ except: DoubleQuotes
    String excepted =
        'this string is excepted'

    output {}
}

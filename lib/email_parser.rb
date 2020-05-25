# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :addresses
    def initialize(emails)
        @addresses = emails 
    end

    def parse
        # Using Regular Expressions: learned about regular expression in comp sci class this year but found this specific syntax at: https://stackoverflow.com/questions/43358452/ruby-split-string-made-up-of-emails-at-space-or-comma

        #The characters between brackets are what .split() is looking for. In this case, "," and /s, which represents blank space. The + allows for there to be multiple spaces if emails are separated by white space and takes care of the common case in which a comma is followed by white space. 

        #uniq method removes duplicates from the array in ruby. 
        @addresses.split(/[,\s]+/).uniq
    end 
end 
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    def initialize(emails)
        @email_string = emails
    end

    
    def parse
        arr = remove_spaces(@email_string)
        # binding.pry

        arr = remove_commas(arr)
        # binding.pry

        arr = remove_duplicates(arr)
    end
end

def remove_spaces(string)
    string.split
end

def remove_commas(array)
    array.map do |element|
        element.delete ","
    end
end

def remove_duplicates(array)
    array.uniq
end
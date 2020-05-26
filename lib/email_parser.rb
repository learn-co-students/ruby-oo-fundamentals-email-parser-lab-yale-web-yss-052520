# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    
    def initialize(address_content)
        @email_list = address_content
    end

    def parse
        return @email_list.split(/\,\s|\s|\,/).uniq
    end

end
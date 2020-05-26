# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
    def initialize(email_addresses_string)
        @addresses=email_addresses_string
    end
    attr_accessor:addresses
    def parse
        @addresses.split.join(',').split(',').reject {|e| e==""}.uniq
    end
end

# binding.pry
# 0

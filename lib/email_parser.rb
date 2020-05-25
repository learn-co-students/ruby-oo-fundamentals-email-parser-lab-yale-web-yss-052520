# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry' 

class EmailAddressParser 
    def initialize (in_string_of_emails)
        @string_of_emails = in_string_of_emails
    end 

    attr_accessor :string_of_emails 

    def parse 
        if @string_of_emails.split(",") == [@string_of_emails]  
            arr = @string_of_emails.split(' ') 
            puts arr 
            return arr 
        end 
        arr = @string_of_emails.split(",") 
        arr2 = arr.map do |address| 
            EmailAddressParser.new(address.strip).parse 
        end.flatten 
        arr3 = []
        arr2.each do |elt| 
            if out?(elt, arr3)
                arr3.push(elt)
            end 
        end 
        return arr3 
    end 
end 

def out?(elt, array)
    array.each do |elt_array| 
        if elt_array == elt 
            return false 
        end 
    end
    return true 
end 

EmailAddressParser.new("avi@test.com arel@test.com").parse
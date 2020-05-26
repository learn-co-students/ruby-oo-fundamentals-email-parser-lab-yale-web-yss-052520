# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(emails)
        @emails = emails
    end 
    
    attr_accessor :emails

    def parse
        unique_emails = emails.split.collect do |email_address|
            email_address.split(",")
        end 
        unique_emails.flatten.uniq
    end 
end 
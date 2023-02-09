class EmailAddressParser
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    email_addresses = @email_addresses.gsub(",", " ").split(" ").uniq
    email_addresses.reject { |address| address.strip.empty? }
  end
end

email_addresses = "test1@example.com, test2@example.com test3@example.com, test4@example.com"
parser = EmailAddressParser.new(email_addresses)
puts parser.parse # outputs ["test1@example.com", "test2@example.com", "test3@example.com", "test4@example.com"]

# class Company
    
#     def initialize(company_name)
#         @company_name = company_name
#     end

#     #Returns the name of the company
#     def company_name
#         @company_name
#     end

# end

# Add the remaining methods to fill the requirements above
class Customer
    attr_accessor :accountNumber
    attr_accessor :firstName
    attr_accessor :lastName

    def initialize(fn, ln, acct)
        @accountNumber = acct
        @firstName = fn
        @lastName = ln
    end
end


class Company
    attr_accessor :name
    attr_accessor :address
    attr_accessor :lastName
    attr_accessor :customers

    def initialize
        @name = ""
        @address = ""
        @lastName = ""

        @customers = Array.new
    end
end

# Create the company
NoraCompany = Company.new

# Create some customers
steve = Customer.new("Steve", "Brownlee", "000000000")
ryan = Customer.new("Ryan", "Tanay", "000000000")
charisse = Customer.new("Charisse", "Lambert", "000000000")

# Add the customers into the aggregate instance variable of the company
NoraCompany.customers.push(steve)
NoraCompany.customers.push(ryan)
NoraCompany.customers.push(charisse)

puts "#{NoraCompany.customers}"
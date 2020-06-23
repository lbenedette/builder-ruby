require_relative 'builder/builder'
require_relative 'model/account'

class AccountBuilder
    include Builder
    builder_parameters :name, :email

    def initialize()
        @name = "Bilbo Baggins"
        @email = "bilbo.baggins@shire.com"
    end

    def build
        account = Account.new
        account.name = name
        account.email = email
        account
    end
end

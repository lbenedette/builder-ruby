require_relative 'account_builder'

account_default = AccountBuilder.new.build

p account_default.name
p account_default.email
p "---"


account_overwrite = AccountBuilder.new
            .with_name("Frodo Baggins")
            .with_email("frodo.baggins@shire.com")
            .build

p account_overwrite.name
p account_overwrite.email
## Builder

A simple module to create builders classes using the Builder Pattern.

This module was inspired in a builder class to create test objects in a Java/SpringBoot project.
You can see a example in this file: [AccountBuilder.java](https://github.com/lbenedette/spring-biblioteca-app/blob/master/api/src/test/java/com/biblioteca/builder/model/AccountBuilder.java)

### How to use

```ruby
class AccountBuilder
    include Builder
    build_parameters :name, :email

    def initialize
        @name = "Default name"
        @email = "default@example.com"
    end

    def build
        # setting the values
    end
end
```

Including the module inside a class you have access to the method `build_parameters(*attributes)` that will create the methods `with_name(name)` and `with_email(email)` so is possible to set new values everytime you use the builder.

All the `with_parameter` return the instace of the class, so is possible to use method chaining:

```ruby
account = AccountBuilder.new.with_name("John Doe").build
p account.name # John Doe
p account.email # default@example.com
```

Inside the **build_parameters** method all parameters will pass to `attr_acessor`, creating the get and set methods to them automatically.


### Next steps

- [x] create project
- [ ] create tests and organize
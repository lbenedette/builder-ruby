module Builder
    def self.included(base)
        base.extend ClassMethods
    end

    module ClassMethods
        def builder_parameters(*attributes)
            self.attr_accessor *attributes

            attributes.each do |attribute|
                self.send(:define_method, "with_#{attribute.to_s}") do |arg|
                    self.send("#{attribute.to_s}=", arg)
                    self
                end
            end
        end
    end
end

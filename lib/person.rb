
class Person
  # code here

  def initialize(options={})

    options.each do |property, value|
      instance_variable_set("@#{property}", value)
      self.define_singleton_method(property){ instance_variable_get("@#{property}") }
    end

  end

end
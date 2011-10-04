class Tester
  attr_accessor :value

  def initialize(attributes = {})
    @value  = attributes[:value]
  end

  def shuffler
    @value.split('').shuffle.join
  end
end

class Userx
  attr_accessor :name, :email

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end
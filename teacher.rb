require_relative './person'

class Teacher < Person
  def initialize(age, name, specialization, parent_permission: true)
    super(age, name: name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_hash()
    {
      age: @age.to_i,
      name: @name,
      specialization: @specialization
    }
  end
end

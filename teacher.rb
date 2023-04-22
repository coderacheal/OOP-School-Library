require_relative './person'

class Teacher < Person
  def initialize(age, name, parent_permission, specialization)
    super(age, name: name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

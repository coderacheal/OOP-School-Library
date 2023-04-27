require_relative './person'

class Student < Person
  def initialize(age, name, parent_permission, classroom = '')
    super(id = id, age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def to_hash()
    {
      age: @age.to_i,
      name: @name,
      parent_permission: @parent_permission,
    }
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

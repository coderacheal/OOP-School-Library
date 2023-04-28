require_relative './person'

class Student < Person
  def initialize(age, name, parent_permission, classroom = '')
    super(age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def to_hash()
    {
      id: @id,
      name: @name,
      age: @age.to_i,
      parent_permission: @parent_permission,
      rank: self.class
    }
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

class Student < Person
  def initialize(classroom)
    super(age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

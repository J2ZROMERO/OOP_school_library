require './person'
# student class
class Student < Person
  attr_reader :classroom
  attr_accessor :parent_permission

  def initialize(age, name = 'Unknown', classroom = 'math', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end

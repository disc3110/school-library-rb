class Student < Person
  attr_reader :classroom

  def initialize(age, name, parent_permission, classroom: nil)
    @classroom = classroom
    classroom.add_student(self) unless classroom.students.include?(self)
    super(age, name, parent_permission)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.add_student(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

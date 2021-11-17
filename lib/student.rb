class Student < Person
  def initialize(age, name, parent_permission, classroom: nil)
    @classroom = classroom
    super(age, name, parent_permission)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
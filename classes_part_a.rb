class Student
attr_accessor :student_name, :student_cohort
attr_reader :student_talk, :student_favourite_language

  def initialize(input_student_name, input_student_cohort)
    @student_name = input_student_name
    @student_cohort = input_student_cohort
    @student_talk = ""
  end

  def student_talking(chat)
    @student_talk = chat
  end

  def say_favourite_language(language)
    @student_favourite_language = "I love #{language}"
  end

end

require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_part_a.rb')

class TestClassesPartA < MiniTest::Test
  def test_student_name
    student = Student.new("Phil Mitchell", 17)
    assert_equal("Phil Mitchell", student.student_name)
  end

  def test_student_cohort
    student = Student.new("Phil Mitchell", 17)
    assert_equal(17, student.student_cohort)
  end

  def test_set_student_name
    student = Student.new("Phil Mitchell", 17)
    student.student_name = "John Smith"
    assert_equal("John Smith", student.student_name)
  end

  def test_set_student_cohort
    student = Student.new("Phil Mitchell", 17)
    student.student_cohort = 15
    assert_equal(15, student.student_cohort)
  end

  def test_student_talk
    student = Student.new("Phil Mitchell", 17)
    student.student_talking("I can talk!")
    assert_equal("I can talk!", student.student_talk)
  end

  def test_say_favourite_language
    student = Student.new("Phil Mitchell", 17)
    student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", student.student_favourite_language)
  end

end

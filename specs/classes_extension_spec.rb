require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_extension.rb')

class TestClassesExtension < MiniTest::Test
  def setup
    @books = [
      {
      title: "Lord of the Rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    },
    {
      title: "To Kill A Mockingbird",
      rental_details: {
        student_name: "John",
        date: "01/11/16"
      }
    },
    {
      title: "Learn to Program",
      rental_details: {
        student_name: "Phil",
        date: "01/11/17"
      }
    }
    ]

    @library = Library.new(@books)
  end

  def test_list_books
    result = @library.list_books
    assert_equal(@books, result)
  end

  def test_return_book_info
    result = @library.return_book_info("Learn to Program")
    assert_equal({
      title: "Learn to Program",
      rental_details: {
        student_name: "Phil",
        date: "01/11/17"
      }}, result)
  end

  def test_return_rental_info
    result = @library.return_rental_info("Lord of the Rings")
    assert_equal({
      student_name: "Jeff",
      date: "01/12/16"
    }, result)
  end
end

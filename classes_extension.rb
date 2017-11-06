class Library
  def initialize(input_books)
    @books = input_books
  end

  def list_books
    return @books
  end

  def return_book_info(title)
    for book in @books
      return book if book[:title] == title
    end
  end

  def return_rental_info(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
  end
end

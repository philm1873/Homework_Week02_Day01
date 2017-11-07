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

  def add_book(new_book)
    @books.push(new_book)
  end

  def change_rental_details(title, name, date)
    for book in @books
      book[:rental_details][:student_name] = name if book[:title] == title
      book[:rental_details][:date] = date if book[:title] == title
      return book
    end
  end
end

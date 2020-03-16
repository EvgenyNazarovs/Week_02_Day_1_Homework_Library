class Library

  def initialize(books)
    @books = books
  end

  def books
    return @books
  end

  def find_book_by_title(title)
    for book in @books
      if title == book[:title]
        return book
      end
    end
  end

  def test_find_rental_details_by_title(title)
    for book in @books
      if title == book[:title]
        return book[:rental_details]
      end
    end
  end

  def add_new_book(title)
    new_book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(new_book)
  end 

end

class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  # def books
  #   return @books
  # end

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

  def change_rental_details(title, borrower, due_date)
    for book in @books
      if title == book[:title]
        book[:rental_details][:student_name] = borrower
        book[:rental_details][:date] = due_date
      end
    end
  end


end

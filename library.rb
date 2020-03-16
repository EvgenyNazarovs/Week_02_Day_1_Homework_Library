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

end

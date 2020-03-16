require('minitest/autorun')
require('minitest/reporters')

require_relative('../library.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestLibrary < Minitest::Test

  def setup

    @books = [
      {
         title: "lord_of_the_rings",
         rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
      }
    },

      {
        title: "infinite_jest",
        rental_details: {
        student_name: "Chris",
        date: "01/12/19"
      }
    },

      {
         title: "state_and_revolution",
         rental_details: {
         student_name: "Neil",
         date: "01/07/17"
      }
    }
    ]

    @gu_library = Library.new(@books)

  end

  def test_books
    assert_equal(@books, @gu_library.books)
  end

  def test_find_book_by_title
    assert_equal(@books[1], @gu_library.find_book_by_title("infinite_jest"))
  end

  def test_find_rental_details_by_title
    assert_equal(@books[2][:rental_details], @gu_library.test_find_rental_details_by_title("state_and_revolution"))
  end


end



# Create a method that takes in a book title and returns only
# the rental details for that book.
# Create a method that takes in a book title and adds it to our
# book list (add a new hash for the book with the student name
# and date being left as empty strings)
# Create a method that changes the rental details of a book
# by taking in the title of the book, the student renting it
# and the date it’s due to be returned.

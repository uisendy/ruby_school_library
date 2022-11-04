class Book
  attr_reader :id, :rental
  attr_accessor :title, :author

  def initialize(title, author)
    @id = Random.rand(1..500)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(book)
    @rentals.push(book)
    book.rental
  end
end

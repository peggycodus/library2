class Book
  attr_reader :title, :author
  @@all_books = []

  def initialize(attributes)
    @title = attributes['title']
    @author = attributes['author']
  end

  def Book.all
     @@all_books
   end
end


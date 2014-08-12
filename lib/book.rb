class Book
  attr_reader :title, :author

  def initialize(attributes)
    @title = attributes['title']
    @author = attributes['author']
  end

end


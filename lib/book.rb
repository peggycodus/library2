class Book

  attr_reader :title, :all_books

  def initialize(attributes)
    @title = attributes['title']
    @id = attributes['id'].to_i
  end

  def Book.all
    all_books = []
    results = DB.exec('SELECT * FROM book;')
    results.each do |result|
      title = result['title']
      id = result['id'].to_i
      puts "#{title} #{id}"
      all_books << Book.new({'title' => title, 'id' => id})
    end
    all_books
  end

  def save
    results = DB.exec("INSERT INTO book (title) VALUES ('#{@title}') RETURNING id;")
    @id = results.first['id'].to_i
  end


  def ==(another_book)
    self.title == another_book.title
  end
end


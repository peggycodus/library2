class Book
  attr_reader :title, :all_books, :id, :authors

  def initialize(attributes)
    @title = attributes['title']
    @id = attributes['id'].to_i
  end

  def Book.authors
    @authors =[]
  end

  def Book.all
    all_books = []
    results = DB.exec('SELECT * FROM book;')
    results.each do |result|
      title = result['title']
      id = result['id'].to_i
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

  def edit(edited_title)
    @title = edited_title
    DB.exec("UPDATE book SET title = '#{@title}';")
  end

  def delete
    DB.exec("DELETE FROM book WHERE id = #{self.id};")
  end


end


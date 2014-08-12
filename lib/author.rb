class Author
  attr_reader :name, :id

  def initialize(attributes)
    @name = attributes['name']
    @id = attributes['id'].to_i
  end

  def self.all
    []
  end

  def Author.all
    all_authors = []
    results = DB.exec("SELECT * FROM author;")
    results.each do |result|
      id = result['id']
      name = result['name']
      all_authors << Author.new({'name' => name, 'id' => id})
    end
    all_authors
  end

  def save
    results = DB.exec("INSERT INTO author (name) VALUES ('#{@name}') RETURNING id;")
    @id = results.first['id'].to_i
  end

  def ==(another_author)
    self.name == another_author.name
  end
end

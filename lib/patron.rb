class Patron

  attr_reader :name, :id

  def initialize(attributes)
    @name = attributes['name']
    @id = attributes['id']
  end

  def Patron.all
    all_patrons = []
    results = DB.exec("SELECT * FROM patron")
    results.each do |result|
      name = result['name']
      id = result['id']
      all_patrons << Patron.new({'name' => name, 'id' => id})
    end
    all_patrons
  end

  def save
    results = DB.exec("INSERT INTO patron (name) VALUES ('#{@name}') RETURNING id;")
    @id = results.first['id'].to_i
  end

  def ==(another_patron)
    self.name == another_patron.name
  end
end

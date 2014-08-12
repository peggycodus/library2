class Checkout
  attr_reader :book_id, :patron_id, :id

  def initialize(attributes)
    @book_id = attributes['book_id']
    @patron_id = attributes['patron_id']
    @id = attributes['id']
  end

  def self.all
    all_checkouts = []
    results = DB.exec("SELECT * FROM checkout")

    results.each do |result|
      book_id = result['book_id']
      patron_id = result['patron_id']
      status = result['status']
      due_date = result['due_date']
      id = result['id']
      all_checkouts << Checkout.new({'book_id' => book_id, 'patron_id' => patron_id, 'due_date'=> due_date, 'status' => status, 'id' => id})
    end
    all_checkouts
  end
end

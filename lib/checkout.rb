class Checkout
  attr_reader :book_id, :patron_id, :id

  def initialize(attributes)
    @book_id = attributes['book_id']
    @patron_id = attributes['patron_id']
    @id = attributes['id']
  end
end

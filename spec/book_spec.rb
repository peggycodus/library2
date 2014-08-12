require 'spec_helper'

describe 'Book' do
  it 'creates an instance of a book' do
    test_book = Book.new({'title' => 'Mrs. Dalloway', 'author' => 'Virginia Woolf'})
    expect(test_book).to be_an_instance_of Book
  end
end


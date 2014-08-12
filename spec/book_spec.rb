require 'spec_helper'

describe 'Book' do
  it 'creates an instance of a book' do
    test_book = Book.new({'title' => 'Mrs. Dalloway', 'author' => 'Virginia Woolf'})
    expect(test_book).to be_an_instance_of Book
  end

  it 'starts with an empty array' do
    test_book = Book.new({'title' => 'Mrs. Dalloway', 'author' => 'Virginia Woolf'})
    expect(Book.all).to eq []
  end

  # it 'saves a book to the array of books' do
  #   test_book = Book.new({'title' => 'Mrs. Dalloway', 'author' => 'Virginia Woolf'})
  #   test_book.save
  #   expect(Book.all).to eq
end


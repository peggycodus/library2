require 'spec_helper'

describe 'Book' do
  it 'creates an instance of a book' do
    test_book = Book.new({'title' => 'Mrs. Dalloway', 'id' => 3})
    expect(test_book).to be_an_instance_of Book
  end

  it 'starts with an empty array' do
    test_book = Book.new({'title' => 'Mrs. Dalloway', 'id' => 3})
    expect(Book.all).to eq []
  end

  it 'saves a book to the array of books' do
    test_book = Book.new({'title' => 'Mrs. Dalloway', 'id' => 3})
    test_book.save
    expect(Book.all).to eq [test_book]
  end

  it 'will be the same book if they have the same name' do
    test_book = Book.new({'title' => 'Mrs. Dalloway', 'id' => 3})
    test_book.save
    test_book1 = Book.new({'title' => 'Mrs. Dalloway', 'id' => 3})
    test_book1.save
    expect(test_book).to eq test_book1
  end

  it 'can edit the name of the book' do
    test_book = Book.new({'title' => 'Mrs. Dalloway', 'id' => 3})
    test_book.save
    test_book.edit 'To The Lighthouse'
    expect(test_book.title).to eq 'To The Lighthouse'
  end

  it 'can delete a book' do
    test_book = Book.new({'title' => 'Mrs. Dalloway', 'id' => 3})
    test_book.save
    test_book.delete
    expect(Book.all).to eq []
  end

  it 'starts with an empty authors array' do
    test_book = Book.new({'title' => 'Mrs. Dalloway', 'id' => 3})
    expect(test_book.authors).to eq []
  end

  it 'joins an author to a book' do
    test_book = Book.new({'title' => 'Mrs. Dalloway', 'id' => 3})
    test_book.save
    new_author = Author.new({'name' => 'Virginia Woolf', 'id' => 1})
    new_author.save
    test_book.add_author(new_author.id)
    expect(test_book.authors).to eq [new_author]
  end

  it 'adds the author to the authors array' do
    new_author = Author.new({'name' => 'Virginia Woolf', 'id' => 1})
    new_author.save
    test_book = Book.new({'title' => 'Mrs. Dalloway', 'id' => 3})
    test_book.save
    expect(test_book.authors).to eq [new_author]
  end
end

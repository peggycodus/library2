require 'spec_helper'

describe 'Author' do
  it 'is initialized with a name and an id' do
    new_author = Author.new({'name' => 'Virginia Woolf', 'id' => 1})
    expect(new_author).to be_an_instance_of Author
  end

  it 'starts with an empty array' do
    new_author = Author.new({'name' => 'Virginia Woolf', 'id' => 1})
    expect(Author.all).to eq []
  end

  it 'saves an author to the database' do
    new_author = Author.new({'name' => 'Virginia Woolf', 'id' => 1})
    new_author.save
    expect(Author.all).to eq [new_author]
  end

  it 'is the same author if it has the same name' do
    new_author = Author.new({'name' => 'Virginia Woolf', 'id' => 1})
    new_author.save
    new_author_two = Author.new({'name' => 'Virginia Woolf', 'id' => 1})
    new_author_two.save
    expect(new_author).to eq new_author_two
  end
end

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


end

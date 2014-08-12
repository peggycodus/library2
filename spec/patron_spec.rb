require 'spec_helper'

describe 'Patron' do
  it 'creates a Patron' do
    test_patron = Patron.new({'name' => 'Sleepy Peggy', 'id' => 1})
    expect(test_patron).to be_an_instance_of Patron
  end

  it 'saves a patron to patron array' do
    test_patron = Patron.new({'name' => 'Sleepy Peggy', 'id' => 1})
    test_patron.save
    expect(Patron.all).to eq [test_patron]
  end

  it 'is the same patron if the name is the same' do
    test_patron = Patron.new({'name' => 'Sleepy Peggy', 'id' => 1})
    test_patron.save
    test_patron_two = Patron.new({'name' => 'Sleepy Peggy', 'id' => 1})
    test_patron_two.save
    expect(test_patron).to eq test_patron_two
  end
end

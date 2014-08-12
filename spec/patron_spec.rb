require 'spec_helper'

describe 'Patron' do
  it 'creates a Patron' do
    test_patron = Patron.new({'name' => 'Sleepy Peggy', 'id' => 1})
    expect(test_patron).to be_an_instance_of Patron
  end
end

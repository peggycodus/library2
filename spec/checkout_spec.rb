
require 'spec_helper'

describe 'Checkout' do

  it "creates a checkout for a Patron and a Book" do
    test_checkout = Checkout.new({'book_id' => 1, 'patron_id' =>4, 'due_date' => '10/10/2014', 'status' => 'overdue', "id" => 2})
    expect(test_checkout).to be_an_instance_of Checkout
  end

  it "saves a checkout to the database" do
    test_checkout = Checkout.new({'book_id' => 1, 'patron_id' =>4, 'due_date' => '10/10/2014', 'status' => 'overdue', "id" => 2})
    test_checkout.save
    expect(Checkout.all).to eq [test_checkout]
  end

end

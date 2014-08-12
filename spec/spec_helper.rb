require 'rspec'
require './lib/book'
require 'pg'
require 'pry'

DB = PG.connect({:dbname => 'library'})

# RSpec.configure do |config|
#   config.after(:each) do
#     DB.exec("DELETE FROM books *;")

#   end


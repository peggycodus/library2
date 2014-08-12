require 'rspec'
require './lib/book'
require './lib/author'
require './lib/patron'
require 'pg'
require 'pry'

DB = PG.connect({:dbname => 'library2'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM book *;")
    DB.exec("DELETE FROM author *;")
    DB.exec("DELETE FROM book_author *;")
    DB.exec("DELETE FROM patron *;")
  end
end


# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Harry Potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 19.99
    select '2018', :from => 'book_published_date_1i'
    select 'January', :from => 'book_published_date_2i'
    select '1', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Harry Potter')
    expect(page).to have_content('JK Rowling')
    expect(page).to have_content('19.99')
    expect(page).to have_content('2018-01-01')







  end
end
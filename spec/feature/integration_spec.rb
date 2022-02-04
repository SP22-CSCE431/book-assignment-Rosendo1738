# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    click_on 'Show'
    expect(page).to have_content('harry potter')
  end
end


RSpec.describe 'Adding Author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK'
    click_on 'Create Book'
    visit books_path
    click_on 'Show'
    expect(page).to have_content('harry potter')
    expect(page).to have_content('JK')
  end
end

RSpec.describe 'Adding Price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK'
    fill_in 'Price', with: 10.40
    click_on 'Create Book'
    visit books_path
    click_on 'Show'
    expect(page).to have_content('harry potter')
    expect(page).to have_content('JK')
    expect(page).to have_content(10.40)
  end
end

RSpec.describe 'Adding date', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Title', with: 'harry potter'
      fill_in 'Author', with: 'JK'
      fill_in 'Price', with: 10.40
      select '2022', :from => 'book_published_date_1i'
      select 'February', :from => 'book_published_date_2i'
      select '3', :from => 'book_published_date_3i'
      click_on 'Create Book'
      visit books_path
      click_on 'Show'
      expect(page).to have_content('harry potter')
      expect(page).to have_content('JK')
      expect(page).to have_content(10.40)
      expect(page).to have_content("2022-02-03")
    end
  end
require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the places execution path', {:type => :feature}) do

  it('takes entries and returns a list of entries') do
    visit('/')
    fill_in("location", :with => 'Miami')

    click_button('Submit')
    expect(page).to have_content('Here is your location:')
  end
end

require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes the user\'s entries and returns cost') do
    visit('/')
    fill_in('side1', :with => '24')
    fill_in('side2', :with => '24')
    fill_in('side3', :with => '25')
    fill_in('weight', :with => '6')
    fill_in('distance', :with => '1999')
    select('6 to 14 Business Days', :from => 'speed')
    click_button('Find Out Now!')
    expect(page).to have_content('29')
  end
end

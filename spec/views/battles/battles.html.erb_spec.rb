require 'rails_helper'

RSpec.describe "battles/index", type: :feature do

    it 'to visits battles index page' do
        visit "/battles/"
        expect(page.status_code).to eq(200)
      end

  it 'shows the main menu on the index battle page in an <li> tag' do
    visit battles_path
    expect(page).to have_css("li", text: "Create Player")
  end

  it 'shows the battle stat on the index battle page in an <li> tag' do
    visit battles_path
    expect(page).to have_css("li", text: "Create Enemy")
  end

  it 'shows the battle stat on the index battle page in an <li> tag' do
    visit battles_path
    expect(page).to have_css("li", text: "Create Location")
  end

  it 'shows the battle stat on the index battle page in an <li> tag' do
    visit battles_path
    expect(page).to have_css("li", text: "Create Attack")
  end

  it 'shows "Start a Battle" on the index battle page in an <h4> tag' do
    visit battles_path
    expect(page).to have_css("h4", text: "Start a Battle")
  end

  it 'shows "Current Players" on the index battle page in an <h4> tag' do
    visit battles_path
    expect(page).to have_css("h4", text: "Current Players")
  end
  
  it 'shows "Current Enemies" on the index battle page in an <h4> tag' do
    visit battles_path
    expect(page).to have_css("h4", text: "Current Enemies")
  end

  it 'shows "Current Locations" on the index battle page in an <h4> tag' do
    visit battles_path
    expect(page).to have_css("h4", text: "Current Locations")
  end

  it 'shows "Current Attacks" on the index battle page in an <h4> tag' do
    visit battles_path
    expect(page).to have_css("h4", text: "Current Attacks")
  end

  it 'shows "Stats" on the index battle page in an <h4> tag' do
    visit battles_path
    expect(page).to have_css("h4", text: "Stats")
  end



end

RSpec.describe "battles/show", type: :feature do
  it 'to visit battle show page' do
    visit "/battles/#{@battle.id}"
    expect(page.status_code).to eq(200)
  end
end

RSpec.describe "battles/new", type: :feature do
  it 'visit new battle page' do
    visit "/battles/new"
    expect(page.status_code).to eq(200)
  end
  it 'shows the battle form on the new battle page in an <h1> tag' do
    visit new_battle_path
    expect(page).to have_css("h1", text: "New Battle Form")
  end
  it 'shows the main menu on the new battle page in an <li> tag' do
    visit new_battle_path
    expect(page).to have_css("li", text: "Main Menu")
  end
  it 'shows the battle stat on the new battle page in an <li> tag' do
    visit new_battle_path
    expect(page).to have_css("li", text: "Battle Stats")
  end

end

RSpec.describe "battles/allstats", type: :feature do
  it 'visit new battle page' do
    visit "/battles/1/allstats"
    expect(page.status_code).to eq(200)
  end

end




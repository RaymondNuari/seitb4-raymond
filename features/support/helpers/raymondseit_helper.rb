module RaymondSeit

  def login_acc_dev
    visit "https://backoffice-staging.mokapos.com"
    fill_in('email', :with => 'testilang1@mailinator.com')
    fill_in('password', :with => '123456')
    find('#login-page > div:nth-child(2) > form > div.app-pages-Login-__style-form___2LTAX > button').click
    expect(page).to have_content('Dashboard')
  end

  def go_to_employees_slot
    find('#sidebar-wrapper > ul > li.dropdown.employees > a').click
    top_loading_bar
    find('#sidebar-wrapper > ul > li.dropdown.open.employees > ul > li:nth-child(1) > a').click
    top_loading_bar
  end

end

World(RaymondSeit)

module RaymondSeit

  def login_acc_dev
    visit "https://backoffice-dev.mokapos.com"
    fill_in('email', :with => 'testilang1@mailinator.com')
    fill_in('password', :with => '123456')
    find('#login-page > div:nth-child(2) > form > div.app-pages-Login-__style-form___2LTAX > button').click
    expect(page).to have_content('Dashboard')
  end


end

World(RaymondSeit)

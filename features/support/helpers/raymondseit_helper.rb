module RaymondSeit

  def login_acc_stg
  visit "https://backoffice-dev.mokapos.com"
  fill_in('email', :with => 'afrian@mailinator.com')
  fill_in('password', :with => '123456')
  find('#login-page > div:nth-child(2) > form > div.app-pages-Login-__style-form___2LTAX > button').click
  end


end

World(RaymondSeit)

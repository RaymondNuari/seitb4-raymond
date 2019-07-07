Then(/^i hit api using CURL$/) do
  @cookie = get_me_the_cookie('remember_token')
  outlet = Curl.get("https://service-staging.mokapos.com/account/v1/profile") do |curl|
    curl.headers['Content-Type']='application/json'
    curl.headers['Authorization']= "#{@cookie[:value]}"
  end

  @outlet = JSON.parse(outlet.body)
  @outlet_id = @outlet["outlets"][0]["id"]

  param = {"id":1,"name":"hit #{Time.now.to_i}","amount":"1"}
  gratu = Curl.post("https://service-staging.mokapos.com/inventory/v1/gratuities", param.to_json) do |http|
    http.headers['Content-Type']='application/json'
    http.headers['Authorization']= "#{@cookie[:value]}"
    http.headers['OUTLET_ID']= "#{@outlet_id}"
  end

  @getgratu = JSON.parse(gratu.body)
  binding.pry
end



Then(/^i hit api using curl to create employee role$/) do
 @cookie = get_me_the_cookie ('remember_token')
 outlet = Curl.get("https://service-staging.mokapos.com/account/v1/profile") do |cek|
   cek.headers['Content-Type'] = 'application/json'
   cek.headers['User-Agent'] = 'capybara'
   cek.headers['Authorization'] = "#{@cookie[:value]}"
 end

 @outlet = JSON.parse outlet.body
 @outlet_id = @outlet["outlets"]
 #@outlet_id=@outlet["outlets"]
 binding.pry
#{"name":"staff 1","permissions":[39,40,41,42,43,44,45,46,47,48,49,56,60,57,58,59,1,14,15,16]}

 param = {name:"staff 3","permissions":[39,40,41,42,43,44,45,46,47,48,49,56,60,57,58,59,1,14,15,16]}
 role = Curl.post("https://service-staging.mokapos.com/account/v1/roles", param.to_json) do |cek2|
   cek2.headers['Content-Type'] = 'application/json'
   cek2.headers['User-Agent'] = 'capybara'
   cek2.headers['Authorization'] = "#{@cookie[:value]}"
   cek2.headers['OUTLET_ID'] = "#{@outlet_id}"
 end

 @create_role = JSON.parse(role.body)
 #binding.pry

end

Then(/^i go to employee slots$/) do
 visit "https://backoffice-staging.mokapos.com/employees/staff"
 page.should have_content('Employee Slots')
end

Then(/^i hit api  using curl to create employee slot$/) do
 @cookie = get_me_the_cookie ('remember_token')
 role = Curl.get("https://service-staging.mokapos.com/account/v1/roles") do |cek4|
   cek4.headers['Content-Type'] = 'application/json'
   cek4.headers['User-Agent'] = 'capybara'
   cek4.headers['Authorization'] = "#{@cookie[:value]}"
 end

 @role_employee = JSON.parse role.body
 @role_id = @role_employee["roles"][2]["id"]
 binding.pry

 param = {email:"sastaff1@mailinator.com",first_name:"Salsaa",last_name:"Staff 1",phone:"848894898873",role_id:"154",description:"","photo_url":"","outlets":["29883"],"slot_id":148752,"auth_code":""}
 employee = Curl.post("https://service-staging.mokapos.com/account/v1/employees", param.to_json) do |cek3|
   cek3.headers['Content-Type'] = 'application/json'
   cek3.headers['User-Agent'] = 'capybara'
   cek3.headers['Authorization'] = "#{@cookie[:value]}"
   cek3.headers['OUTLET_ID'] = "#{@role_id}"
 end

 @create_employee = JSON.parse(employee.body)
 binding.pry

 
end

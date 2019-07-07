Then(/^i hit API view report role$/) do
  @cookie = get_me_the_cookie ('remember_token')
  outlet = Curl.get("https://service-staging.mokapos.com/account/v1/profile") do |curl|
    curl.headers['Content-Type']='application/json'
    curl.headers['Authorization']= "#{@cookie[:value]}"
  end

  @outlet = JSON.parse(outlet.body)
  @outlet_id1 = @outlet["outlets"][1]["id"]
  @outlet_id2 = @outlet["outlets"][2]["id"]
  @name = "roleraymond #{Time.now.to_i}"

  param = {"name":"#{@name}","permissions":[39,40,41,42,43,44,45,46,47,48,49,56,60,57,58,59,2,3,4,5]}
  role = Curl.post("https://service-staging.mokapos.com/account/v1/roles", param.to_json) do |roling|
    roling.headers['Content-Type'] = 'application/json'
    roling.headers['Authorization'] = "#{@cookie[:value]}"
  end
  @viewrole = JSON.parse(role.body)
end

Then(/^i create new employee with new role$/) do

  @cookie = get_me_the_cookie ('remember_token')
  slots = Curl.get("https://service-staging.mokapos.com/account/v1/slots?active=true&keyword=&includeMe=false") do |slot|
    slot.headers['Content-Type'] = 'application/json'
    slot.headers['Authorization'] = "#{@cookie[:value]}"
  end
  @viewslot = JSON.parse(slots.body)
    begin
    @i = 0
    while @check != true do
      @i+=1
      @x=@viewslot[@i].length
      @check = @x==8
    end
  end
  @slot_id= @viewslot[@i]["id"]

  roles = Curl.get("https://service-staging.mokapos.com/account/v1/roles") do |view|
    view.headers['Content-Type'] = 'application/json'
    view.headers['Authorization'] = "#{@cookie[:value]}"
  end
  @role_employee = JSON.parse roles.body
  @role_id = @role_employee["roles"][2]["id"]
  @employee_name = "seit#{Time.now.to_i}"

  param = {"email":"#{Time.now.to_i}seit@mailinator.com","first_name":"#{@employee_name}","last_name":"training","phone":"8#{Time.now.to_i}123","role_id":"#{@role_id}","description":"","photo_url":"","outlets":["#{@outlet_id1}", "#{@outlet_id2}"],"slot_id":"#{@slot_id}","auth_code":""}
  employees = Curl.post("https://service-staging.mokapos.com/account/v1/employees", param.to_json) do |employee|
    employee.headers['Content-Type'] = 'application/json'
    employee.headers['Authorization'] = "#{@cookie[:value]}"
  end

  @create_employee = JSON.parse(employees.body)
  go_to_employees_slot
  expect(page).to have_content("#{@employee_name}")
end

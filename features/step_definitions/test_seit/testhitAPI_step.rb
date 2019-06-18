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

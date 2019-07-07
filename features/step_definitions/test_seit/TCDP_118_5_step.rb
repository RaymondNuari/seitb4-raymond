Then(/^i make sure date less than invoice date cannot be clicked$/) do
  x = @day.to_i
  y = x - 1
  z = x + 1
  find("#form-create-payment-record > div > div:nth-child(2) > div > div > div > input").click
  find("div.react-datepicker__month-container > div.react-datepicker__month").should_not have_link("y")
  find("div.react-datepicker__month-container > div.react-datepicker__month").should_not have_link("z")
end

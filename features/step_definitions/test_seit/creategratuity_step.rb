Then(/^i go to Gratuity$/) do
  find('#sidebar-wrapper > ul > li.dropdown.open.library > ul > li:nth-child(7) > a').click
  sleep (5)
end

When(/^i click create Gratuity$/) do
  click_button('Create Gratuity')
  sleep(3)
end

Then(/^i input (\d+) on field Gratuity name$/) do |arg1|
  find(:css, "input[name$='name']").set("grat "+arg1)
end

Then(/^i input (\d+) on field Gratuity amount$/) do |arg2|
  find(:css, "input[name$='amount']").set("#{arg2}")
end

Then(/^i click save grat button$/) do
  click_button('Save')
  sleep(3)
end

Then(/^check (\d+) on Gratuity$/) do |arg1|
  expect(page).to have_content("grat #{arg1}")
end

When(/^i click (\d+) on list Gratuity$/) do |arg1|
  find('.app-pages-Library-Gratuity-List-__List___Op7V4', :text => "grat #{arg1}").click
  sleep(1)
end

Then(/^i click grat trash button$/) do
  find('#mk-col-right > div > form > div.app-pages-Library-Gratuity-GratuityDetail-GratuityForm-__GratuityForm___1iZpb > span.pull-left > button').click
  sleep(3)
end

When(/^pop up shown i click delete button grat$/) do
  find('body > div:nth-child(24) > div > div.fade.in.modal > div > div > div.modal-footer > button.btn.btn-danger').click
  sleep(3)
end

Then(/^check (\d+) not in Gratuity$/) do |arg4|
  expect(page).to have_no_content("grat #{arg4}")
end

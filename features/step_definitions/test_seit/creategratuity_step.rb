Then(/^i go to Gratuity$/) do
  find('#sidebar-wrapper > ul > li.dropdown.open.library > ul > li:nth-child(7) > a').click
  top_loading_bar
end

When(/^i click create Gratuity$/) do
  click_button('Create Gratuity')
  top_loading_bar
end

Then(/^i input (\d+) on field Gratuity name$/) do |arg1|
  find(:css, "input[name$='name']").set("grat "+arg1)
end

Then(/^i input (\d+) on field Gratuity amount$/) do |arg2|
  find(:css, "input[name$='amount']").set("#{arg2}")
end

Then(/^i click save grat button$/) do
  click_button('Save')
  top_loading_bar
end

Then(/^check (\d+) on Gratuity$/) do |arg1|
  expect(page).to have_content('Gratuity successfully created')
  expect(page).to have_content("grat #{arg1}")
end

When(/^i click (\d+) on list Gratuity$/) do |arg1|
  find('.app-pages-Library-Gratuity-List-__List___Op7V4', :text => "grat #{arg1}").click
  top_loading_bar
end

Then(/^i click grat trash button$/) do
  find('#mk-col-right > div > form > div.app-pages-Library-Gratuity-GratuityDetail-GratuityForm-__GratuityForm___1iZpb > span.pull-left > button').click
  top_loading_bar
end

When(/^pop up shown i click delete button grat$/) do
  click_button('Delete')
  top_loading_bar
end

Then(/^check (\d+) not in Gratuity$/) do |arg4|
  expect(page).to have_content('Gratuity successfully deleted')
  expect(page).to have_no_content("grat #{arg4}")
end

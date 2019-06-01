Then(/^i go to taxes$/) do
  find('#sidebar-wrapper > ul > li.dropdown.open.library > ul > li:nth-child(6) > a').click
  top_loading_bar
end

When(/^i click create tax$/) do
  click_button('Create Tax')
  top_loading_bar
end

Then(/^i input (\d+) on field tax name$/) do |arg1|
  find(:css, "input[name$='name']").set("tax "+arg1)
end

Then(/^i input (\d+) on field amoun$/) do |arg2|
  find(:css, "input[name$='amount']").set("#{arg2}")
end

Then(/^i click save tax button$/) do
  click_button('Save')
  top_loading_bar
end

Then(/^check (\d+) on taxes$/) do |arg1|
  expect(page).to have_content('Taxes successfully created')
  expect(page).to have_content("tax #{arg1}")
end


#delete
When(/^i click (\d+) on list taxes$/) do |arg1|
  find('.app-pages-Library-Tax-List-__style___1t2tW.app-pages-Library-Gratuity-List-__List___Op7V4', :text => "tax #{arg1}").click
  top_loading_bar
end

When(/^i click tax trash button$/) do
  find('#mk-col-right > div > form > div.app-pages-Library-Tax-TaxDetail-__style___1FnBw > span.pull-left > button').click
  top_loading_bar
end
When(/^pop up shown i click delete button tax$/) do
  click_button('Delete')
  top_loading_bar
end

Then(/^check (\d+) not in taxes$/) do |arg4|
  expect(page).to have_content('Taxes successfully deleted')
  expect(page).to have_no_content("tax #{arg4}")
end

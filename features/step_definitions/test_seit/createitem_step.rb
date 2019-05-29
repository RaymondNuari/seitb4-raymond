Given(/^i navigate to BO dev mokapos$/) do
  login_acc_stg
  top_loading_bar
end

Then(/^i click library$/) do
  find('#sidebar-wrapper > ul > li.dropdown.library > a').click
  top_loading_bar
end

Then(/^i go to item library$/) do
  find('#sidebar-wrapper > ul > li.dropdown.open.library > ul > li:nth-child(1) > a').click
  top_loading_bar
end

When(/^i click create item$/) do
  expect(page).to have_content('Item Library')
  click_button('Create Item')
  top_loading_bar
  end

Then(/^i input (\d+) on field item name$/) do |arg1|
    find(:css, "input[name$='name']").set("auto "+arg1)
end

Then(/^i choose category$/) do
  find('#mk-col-right > div > div > form > div.app-pages-Library-Item-ItemDetail-ItemForm-__ItemForm___Gczle.body-form-item > div:nth-child(1) > div.col-lg-9.col-md-9.col-sm-9.no-padding-left.no-padding-right.app-pages-Library-Item-ItemDetail-ItemForm-__ItemForm___3__vk > div:nth-child(2) > div > div > div > div > div.Select-control > span.Select-arrow-zone > span').click
  find('.Select-option', :text => 'kategori1').click
end

Then(/^i input (\d+) on field price$/) do |arg2|
  find(:css, "input[name$='item_variants[0].price']").set("#{arg2}")
end

Then(/^i input (\d+) on field sku$/) do |arg3|
  find(:css, "input[name$='item_variants[0].sku']").set("skuauto "+arg3)
end

Then(/^i click save button$/) do
  click_button('Save')
  expect(page).to have_content('Item was successfully created')
  top_loading_bar
end

Then(/^check (\d+) on library$/) do |arg1|
  expect(page).to have_content("auto #{arg1}")
end

#delete
When(/^i click (\d+) on list$/) do |arg1|
find('.app-pages-Library-Item-List-__List___1nIwr', :text => "auto #{arg1}").click
end


Then(/^i click trash button$/) do
  find('#mk-col-right > div > div > form > div.app-pages-Library-Item-ItemDetail-ItemForm-__ItemForm___1MYMN.footer-form-item > span.pull-left > button').click
  top_loading_bar
end

When(/^pop up shown i click delete button$/) do
  find('body > div:nth-child(24) > div > div.fade.in.modal > div > div > div.modal-footer > div > button.btn.btn-danger').click
  top_loading_bar
end

Then(/^check (\d+) not in library$/) do |arg1|
  expect(page).to have_content('Item was successfully removed')
  expect(page).to have_no_content("auto #{arg1}")
end

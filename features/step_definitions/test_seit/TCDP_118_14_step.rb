When(/^i go to Report invoice and choose cancelled invoice$/) do
  go_to_invoice_library
  top_loading_bar
  find('#dropdown-box-calendar > div > div > button > i').click
  find('#dropdown-box-calendar > div > ul > li > a > div > div > div.col-sm-4.element-non-mobi > div > div:nth-child(7) > button').click
  top_loading_bar
  click_button ('Select Status')
  find('#invoice-content > div > div.mk-action-bar > div > div > div > div:nth-child(2) > div > div:nth-child(3) > div > ul > li:nth-child(1) > a').click
  top_loading_bar
  find("#invoice-table-tbody > tr:nth-child(1)").click
  top_loading_bar
end

Then(/^i make sure there is no button cancel invoice$/) do
  find("div.mk-col-right-action-box.bottom.invoice > div > button").click
  expect(page).not_to have_content("Cancel Invoice")
end

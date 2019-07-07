Then(/^i click more button$/) do
  find("div.mk-col-right-action-box.bottom.invoice > div > button").click
end

Then(/^i make sure shows dropdown option for print and cancel invoice$/) do
  expect(page).to have_css("#mk-col-right > div.mk-col-right-action-box.bottom.invoice > div > ul > li:nth-child(1) > a", text: "Cancel Invoice")
  expect(page).to have_css("#mk-col-right > div.mk-col-right-action-box.bottom.invoice > div > ul > li:nth-child(2) > a", text:"Print")
end

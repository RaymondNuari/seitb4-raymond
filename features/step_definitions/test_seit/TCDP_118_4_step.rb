Then(/^i Make sure Amount Received cannot be less than one$/) do
  fill_in "amount_received", with: "0"
  choose('payment_type', option: 'cash')
  expect(page).to have_content("Please enter a value greater than or equal to 1")
end

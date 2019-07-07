Then(/^i make full payment$/) do
  record_full_payment_cash
  end

Then(/^i check record payment invoice button disabled$/) do
  fill_in "keyword", with: "#{$invoicenum}"
  find("#invoice-table-tbody > tr").click
  top_loading_bar
  expect(page).to have_button('Record Payment', disabled: true)
  end

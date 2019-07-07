Then(/^i create item for checkout$/) do
  visit 'https://backoffice-dev.mokapos.com/library/list'
  top_loading_bar
  @randomize = Time.now.to_i
  @param = {item_name: "item-#{@randomize}", item_price: rand(1000..100000)}
  create_item_for_checkout(@param)
end

Then(/^i hit api checkout invoice$/) do
  fill_in "search", with: @param[:item_name]
  top_loading_bar
  @item = get_api_spesific_item
  @item_id = @item["items"][0]["id"]
  @item_price = @item["items"][0]["item_variants"][0]["price"].to_i
  @item_name = @item["items"][0]["name"]
  @item_variant_id = @item["items"][0]["item_variants"][0]["id"]
  @item_category_id = @item["items"][0]["category_id"]

  @checkout_invoice = create_basic_invoice
  @quantity = @checkout_invoice["checkouts"][0]["quantity"]
  @customername = @checkout_invoice["customer_name"]
  @collectedby = @checkout_invoice["collected_by"]
  @subtotalprice = @checkout_invoice["subtotal"].to_i
  $invoicenum = @checkout_invoice["invoice_no"]
  @totalprice = @checkout_invoice["total_collected"].to_i
  @subtotalpricefix = number_with_delimiter(@subtotalprice, :delimiter => ".")
  @itempricefix = number_with_delimiter(@item_price, :delimiter => ".")
  @totalpricefix = number_with_delimiter(@totalprice, :delimiter => ".")
end

When(/^i go to Report invoice to check transaction$/) do
  go_to_invoice_library
  top_loading_bar
  find('#dropdown-box-calendar > div > div > button > i').click
  find('#dropdown-box-calendar > div > ul > li > a > div > div > div.col-sm-4.element-non-mobi > div > div:nth-child(1) > button').click
  top_loading_bar
  fill_in "keyword", with: "#{$invoicenum}"
  find("#invoice-table-tbody > tr").click
  top_loading_bar
end

Then(/^i make sure all checkout data show correctly$/) do
  check_invoice_data_before_payment
  end

Then(/^i Record full payment invoice with cash and cancel invoice$/) do
  click_resend_invoice
  check_email_resend_invoice
  record_full_payment_cash
  top_loading_bar
  fill_in "keyword", with: "#{$invoicenum}"
  find("#invoice-table-tbody > tr").click
  top_loading_bar
  page.find(:css, 'div.app-pages-Reports-Invoices-ReceiptInvoices-__style-receipt___34qNY > div > div')
  expect(page).to have_content("Rp. #{@totalpricefix}")
  expect(page).to have_content("Rp. 0")
  expect(page).to have_button('Record Payment', disabled: true)
  check_email_resend_invoice_paid
  cancel_full_invoice
  top_loading_bar
  fill_in "keyword", with: "#{$invoicenum}"
  find("#invoice-table-tbody > tr:nth-child(1)").click
  top_loading_bar
  page.find(:css, '#receipt > div.app-pages-Reports-Invoices-ReceiptInvoices-__style-receipt___1aR9y > div > div')
  print_invoice
  delete_item_after_payment
end

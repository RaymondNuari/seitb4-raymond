module CheckoutHelper
include ActionView::Helpers::NumberHelper

  def create_item_for_checkout(param)
    click_button ('Create Item')
    top_loading_bar
    fill_in 'name', :with => param[:item_name]
    find("div.mk-grouped-input > div:nth-child(1) > div > input").set param[:item_price]
    find('button', text: "Save").click
    top_loading_bar
    find('button', text: "Cancel").click
  end


  def get_api_spesific_item
    @cookie = get_me_the_cookie('remember_token')
    param = {"page": 0, "category_id": "", "inventory": "all", "outlet_id": "8975","keyword": "#{@param[:item_name]}", "is_mobile": "false"}
    item_params = Curl.get("https://service-dev.mokapos.com/inventory/v1/items", param) do |curl|
      curl.headers['Content-Type'] = 'application/json'
      curl.headers['Accept'] = "application/json"
      curl.headers['Authorization'] = "#{@cookie[:value]}"
      curl.headers['User-Agent'] = 'capybara'
      curl.headers['OUTLET_ID'] = "8975"
    end
    JSON.parse(item_params.body)
  end

 def create_basic_invoice
   @year = Time.now.year
   @month = Time.now.month
   @day = Time.now.day
   @hour = Time.now.hour
   @min = Time.now.min
   @sec = Time.now.sec
   # For receipt number randomize
   @invoice_no_randomize = ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(6).join
   receipt_number_randomize = ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(3).join

   @checkout_params = { "checkout": {
       "total_collected": "#{@item_price}",
       "subtotal": "#{@item_price}",
       "items": [
         {
           "item_name": "#{@item_name}",
           "tax": "0",
           "category_name": "Uncategorized",
           "client_price": "#{@item_price}",
           "discount_amount": "0",
           "item_variant_sku": "",
           "order_status": "New Order",
           "net_sales": "#{@item_price}",
           "quantity": "1",
           "gratuity": "0",
           "item_variant_name": "",
           "is_program_item": false,
           "item_id": @item_id,
           "item_variant_id": @item_variant_id,
           "track_stock": false,
           "gross_sales": "#{@item_price}",
           "category_id": @item_category_id
         }
       ],
       "invoice_due_date": "#{@year}-#{@month+1}-#{@day}T#{@hour}:#{@min}:#{@sec}.307098+07:00",
       "enable_gratuity": false,
       "is_offline": false,
       "client_created_at": "#{@year}-#{@month}-#{@day}T#{@hour}:#{@min}:#{@sec}.110847+07:00",
       "transaction_date": "#{@year}-#{@month}-#{@day}T#{@hour}:#{@min}:#{@sec}.186080+07:00",
       "amount_pay": "50000",
       "include_tax_and_gratuity": false,
       "customer_guid": "F1015DCE-3C6C-4C5C-AC40-C0B6D319C#{rand(100..999)}",
       "total_gross_sales": "#{@item_price}",
       "customer_id": 74497,
       "total_net_sales": "#{@item_price}",
       "uniq_id": 1,
       "is_loyalty": false,
       "total_gratuity": "0",
       "customer_name": "Abang1",
       "invoice_deposit_amount": 0,
       "is_sales_type": false,
       "payment_type": "invoice",
       "enable_tax": false,
       "total_discount": "0",
       "receipt_number": "ABC#{receipt_number_randomize}",
       "total_tax": "0",
       "is_refund_transaction": false,
       "customer_email": "abang1@mailinator.com",
       "customer_phone": "+62888777888",
       "invoice_no": "INV#{@invoice_no_randomize}" #try null invoice - jauhin sequence
     }
   }


   @cookie = get_me_the_cookie('remember_token')
   http = Curl.post("https://dev-old.mokapos.com/api/v2/checkouts", @checkout_params.to_json) do |http|
     http.headers['Accept'] = 'application/json'
     http.headers['Content-Type'] = 'application/json'
     http.headers['Cookie'] = "remember_token=#{@cookie[:value]}"
     http.headers['User-Agent'] = 'capybara'
     http.headers['OUTLET_ID'] = '8975'
   end

   JSON.parse(http.body)
 end

 def go_to_invoice_library
    visit 'https://backoffice-dev.mokapos.com/reports/invoices'
 end

 def check_invoice_data_before_payment
   expect(page).to have_content("Due in 31 days")
   expect(page).to have_content("Invoice Number")
   expect(page).to have_content("#{$invoicenum}")
   expect(page).to have_content("#{@collectedby}")
   expect(page).to have_content("#{@customername}")
   expect(page).to have_content("#{@item_name}")
   expect(page).to have_content("x#{@quantity}")
   expect(page).to have_content("Rp. #{@itempricefix}")
   expect(page).to have_content("Subtotal")
   expect(page).to have_content("Rp. #{@subtotalpricefix}")
   expect(page).to have_content("Total")
   expect(page).to have_content("Rp. #{@totalpricefix}")
   expect(page).to have_content("Amount Due")
   expect(page).to have_content("Rp. #{@totalpricefix}")
 end

 def click_resend_invoice
   find("button.btn.btn-default.pull-left.resend-invoice.app-components-receipt-invoices-ButtonGroup-__style___1pgst").click
   top_loading_bar
   expect(page).to have_content("Email has been successfully resend")
 end

 def check_email_resend_invoice
   open_new_window
   move_to_last_tab
   visit "https://www.mailinator.com/"
   find("#inboxfield").set("#{@customername}")
   find("div.hidden-sm.hidden-xs > div > span > button").click
   sleep 5
   expect(page).to have_content("Payment Invoice ##{$invoicenum} is Created")
   page.driver.browser.close
   move_to_first_tab
 end

 def check_email_resend_invoice_paid
   open_new_window
   move_to_last_tab
   visit "https://www.mailinator.com/"
   find("#inboxfield").set("#{@customername}")
   find("div.hidden-sm.hidden-xs > div > span > button").click
   sleep 5
   expect(page).to have_content("Payment Invoice ##{$invoicenum} is Paid")
   page.driver.browser.close
   move_to_first_tab
 end

 def record_payment_invoice_button
   find('#app-components-receipt-invoices-ButtonGroup-__style___3ncM2').click
   expect(page).to have_content("Record Payment")
 end

 def record_full_payment_cash
   find('#app-components-receipt-invoices-ButtonGroup-__style___3ncM2').click
   fill_in "amount_received", with: "0"
   fill_in 'note', with: "note#{@randomize}"
   expect(page).to have_content("Please enter a value greater than or equal to 1")
   fill_in "amount_received", with: "#{@totalprice}"
   choose('payment_type', option: 'cash')
   find('button', text: "Save").click
   top_loading_bar
   expect(page).to have_content("Record payment has been created and Invoice Email has been successfully sent")
 end

 def cancel_full_invoice
   find("div.mk-col-right-action-box.bottom.invoice > div > button").click
   find("#mk-col-right > div.mk-col-right-action-box.bottom.invoice > div > ul > li:nth-child(1) > a").click
   expect(page).to have_content("Amount to refund")
   expect(page).to have_content("Rp. #{@totalpricefix}")
   expect(page).to have_content("Item to Refund")
   expect(page).to have_content("#{@item_name}")
   expect(page).to have_content("Rp. #{@totalpricefix}")
   find('div.modal-body > div:nth-child(4) > div > select').select('Cancelled Order')
   click_button('Cancel Invoice')
   top_loading_bar
 end

def delete_item_after_payment
  visit 'https://backoffice-dev.mokapos.com/library/list'
  top_loading_bar
  fill_in "search", with: "#{@item_name}"
  top_loading_bar
  find("#mk-col-left > div > div > table > tbody > tr").click
  find("div.app-pages-Library-Item-ItemDetail-ItemForm-__ItemForm___1MYMN.footer-form-item > span.pull-left > button").click
  click_button('Delete')
  expect(page).to have_content("Item was successfully removed.")
end

def print_invoice
  find("#mk-col-right > div.mk-col-right-action-box.bottom.invoice > div > button").click
  find('#mk-col-right > div.mk-col-right-action-box.bottom.invoice > div > ul').click
  move_to_last_tab
  sleep 3
  # expect(page).to have_title("Payment Invoice ##{$invoicenum} is Cancelled")
  # page.should have_selector("title", :content => "Payment Invoice ##{$invoicenum} is Cancelled")
  page.driver.browser.close
  move_to_first_tab
end

end

World(CheckoutHelper)

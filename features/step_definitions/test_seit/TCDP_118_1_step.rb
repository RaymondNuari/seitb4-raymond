Then(/^i click resend button on report invoice$/) do
  click_resend_invoice
  check_email_resend_invoice
end

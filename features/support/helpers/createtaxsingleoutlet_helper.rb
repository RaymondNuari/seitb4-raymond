module Createtaxsingleoutlet

  def createtaxsingleoutlet(param)
    goto_taxes
    click_button_create_tax
    fill_tax_name(param[:taxname])
    fill_tax_amount(param[:taxamount])
    click_save_tax_button
    check_tax_has_created(param[:taxname])
  end
end

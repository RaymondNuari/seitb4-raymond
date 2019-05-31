module Deletetaxsingleoutlet

  def deletetaxsingleoutlet(param)
    goto_taxes
    choose_tax_name_and_click(param[:taxname])
    click_trash_button_tax
    click_pop_up_delete_button_tax
    check_tax_not_in_list(param[:taxname])
  end
end

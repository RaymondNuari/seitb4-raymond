module Deletegratsingleoutlet

  def delete_grat_single_outlet(param)
    goto_gratuity
    choose_grat_name_and_click(param[:gratname])
    click_trash_button_grat
    click_pop_up_delete_button_grat
    check_grat_not_in_list(param[:gratname])
  end



end

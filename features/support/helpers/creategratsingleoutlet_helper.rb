module Creategratsingleoutlet

  def create_grat_single_outlet(param)
    goto_gratuity
    click_button_create_grat
    fill_grat_name(param[:gratname])
    fill_grat_amount(param[:gratamount])
    click_save_grat_button
    check_grat_has_created(param[:gratname])
  end



end

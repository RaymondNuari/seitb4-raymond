module Deleteitemsingleoutlet

  def delete_item_single_outlet(param)
    goto_item_library
    choose_item_name_and_click(param[:item_name])
    click_trash_button_item
    click_pop_up_delete_button_item
    check_item_not_in_library(param[:item_name])
  end

end

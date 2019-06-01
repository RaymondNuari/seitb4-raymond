module Createitemsingleoutlet

  def create_new_item_single_outlet(param)
    goto_item_library
    click_button_create_item
    fill_item_name(param[:item_name])
    choose_category(param[:itemkategori])
    fill_item_price(param[:itemprice])
    fill_sku_name(param[:itemsku])
    click_save_item_button
    check_new_item_created(param[:item_name])
  end

end

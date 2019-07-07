module Createitemlib

  def goto_item_library
    find('#sidebar-wrapper > ul > li.dropdown.library > a').click
    top_loading_bar
    find('#sidebar-wrapper > ul > li.dropdown.open.library > ul > li:nth-child(1) > a').click
    top_loading_bar
  end

  def click_button_create_item
    click_button('Create Item')
    top_loading_bar
  end

  def fill_item_name(param)
    find(:css, "input[name$='name']").set(param)
  end

  def choose_category(param)
    find('#mk-col-right > div > div > form > div.app-pages-Library-Item-ItemDetail-ItemForm-__ItemForm___Gczle.body-form-item > div:nth-child(1) > div.col-lg-9.col-md-9.col-sm-9.no-padding-left.no-padding-right.app-pages-Library-Item-ItemDetail-ItemForm-__ItemForm___3__vk > div:nth-child(2) > div > div > div > div > div.Select-control > span.Select-arrow-zone > span').click
    find('.Select-option', :text => param).click
  end

  def fill_item_price(param)
    find(:css, "input[name$='item_variants[0].price']").set(param)
  end

  def fill_sku_name(param)
    find(:css, "input[name$='item_variants[0].sku']").set(param)
  end

  def click_save_item_button
    click_button('Save')
    expect(page).to have_content('Item was successfully created')
  end

  def check_new_item_created(param)
    expect(page).to have_content(param)
  end


end

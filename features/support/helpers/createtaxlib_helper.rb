module Createtaxlib

  def goto_taxes
    find('#sidebar-wrapper > ul > li.dropdown.library > a').click
    top_loading_bar
    find('#sidebar-wrapper > ul > li.dropdown.open.library > ul > li:nth-child(6) > a').click
    top_loading_bar
  end

  def click_button_create_tax
    click_button('Create Tax')
    top_loading_bar
  end

  def fill_tax_name(param)
    find(:css, "input[name$='name']").set(param)
  end

  def fill_tax_amount(param)
    find(:css, "input[name$='amount']").set(param)
  end

  def click_save_tax_button
    click_button('Save')
    # top_loading_bar
  end

  def check_tax_has_created(param)
    expect(page).to have_content('Taxes successfully created')
    expect(page).to have_content(param)
  end
end

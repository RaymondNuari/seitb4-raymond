module Creategratlib

  def goto_gratuity
    find('#sidebar-wrapper > ul > li.dropdown.library > a').click
    top_loading_bar
    find('#sidebar-wrapper > ul > li.dropdown.open.library > ul > li:nth-child(7) > a').click
    top_loading_bar
  end

  def click_button_create_grat
    click_button('Create Gratuity')
    top_loading_bar
  end

  def fill_grat_name(param)
    find(:css, "input[name$='name']").set(param)
  end

  def fill_grat_amount(param)
    find(:css, "input[name$='amount']").set(param)
  end

  def click_save_grat_button
    click_button('Save')
  end

  def check_grat_has_created(param)
    expect(page).to have_content('Gratuity successfully created')
    expect(page).to have_content(param)
  end


end

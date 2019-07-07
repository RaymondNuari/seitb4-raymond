module Deletetaxlib

def choose_tax_name_and_click(param)
  find('.app-pages-Library-Tax-List-__style___1t2tW.app-pages-Library-Gratuity-List-__List___Op7V4', :text => param).click
  top_loading_bar
end

def click_trash_button_tax
  find('#mk-col-right > div > form > div.app-pages-Library-Tax-TaxDetail-__style___1FnBw > span.pull-left > button').click
  top_loading_bar
end

def click_pop_up_delete_button_tax
  click_button('Delete')
end

def check_tax_not_in_list(param)
  expect(page).to have_content('Taxes successfully deleted')
  expect(page).to have_no_content(param)
end

end

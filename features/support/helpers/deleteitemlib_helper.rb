module Deleteitemlib

def choose_item_name_and_click(param)
  find('.app-pages-Library-Item-List-__List___1nIwr', :text => param).click
end

def click_trash_button_item
  find('#mk-col-right > div > div > form > div.app-pages-Library-Item-ItemDetail-ItemForm-__ItemForm___1MYMN.footer-form-item > span.pull-left > button').click
  top_loading_bar
end

def click_pop_up_delete_button_item
  click_button('Delete')
end

def check_item_not_in_library(param)
    expect(page).to have_no_content(param)
    expect(page).to have_content('Item was successfully removed')
end

end

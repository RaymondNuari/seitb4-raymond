module Deletegratlib

  def choose_grat_name_and_click(param)
    find('.app-pages-Library-Gratuity-List-__List___Op7V4', :text => param).click
    top_loading_bar
  end

  def click_trash_button_grat
    find('#mk-col-right > div > form > div.app-pages-Library-Gratuity-GratuityDetail-GratuityForm-__GratuityForm___1iZpb > span.pull-left > button').click
    top_loading_bar
  end

  def click_pop_up_delete_button_grat
    click_button('Delete')
  end

  def check_grat_not_in_list(param)
    expect(page).to have_no_content(param)
    expect(page).to have_content('Gratuity successfully deleted')

  end


end

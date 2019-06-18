Then(/^i create item with (\d+) & (\d+) & (\d+)$/) do |arg1, arg2, arg3|
  @param = {item_name: "auto #{arg1}", itemkategori: "kategori1", itemprice: "#{arg2}", itemsku: "#{arg3}"}
  create_new_item_single_outlet(@param)
  top_loading_bar
end


Then(/^i delete item with (\d+)$/) do |arg1|
  @param = {item_name: "auto #{arg1}"}
  delete_item_single_outlet(@param)
  top_loading_bar
end

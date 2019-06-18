Then(/^i create grat with (\d+) & (\d+) and check grat has created$/) do |arg1, arg2|
  @param = {gratname: "grat #{arg1}", gratamount:"#{arg2}"}
  create_grat_single_outlet(@param)
  top_loading_bar
end

Then(/^i delete grat with (\d+) and check grat has deleted$/) do |arg1|
  @param = {gratname: "grat #{arg1}"}
  delete_grat_single_outlet(@param)
  top_loading_bar
end

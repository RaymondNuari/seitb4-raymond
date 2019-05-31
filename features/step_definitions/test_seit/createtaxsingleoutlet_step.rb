Then(/^i create tax with (\d+) & (\d+) and check tax has created$/) do |arg1, arg2|
  @param = {taxname: "tax #{arg1}", taxamount:"#{arg2}"}
  createtaxsingleoutlet(@param)
end

Then(/^i delete tax with (\d+) and check tax has deleted$/) do |arg1|
  @param = {taxname: "tax #{arg1}"}
  deletetaxsingleoutlet(@param)
end

Then(/^i fill notes record invoice payment$/) do
  fill_in 'note', with: "note#{@randomize}"
  expect(find_field('note').value).to eq "note#{@randomize}"
end

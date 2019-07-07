Then(/^i Make sure Amount Received cannot be more than amount due$/) do
  fill_in "amount_received", with: "#{@totalprice}+1"
  expect(find_field('amount_received').value).to eq "#{@totalprice}"
end

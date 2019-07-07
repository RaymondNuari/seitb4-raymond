Then(/^i click cash payment and other payment$/) do
  a = 'cash'
  b = 'check'
  c = 'bank_transfer'
  @random1 = [*a,b,c].sample
  choose('payment_type', option: "#{@random1}")
  choose('payment_type', option: 'other')
end

Then(/^i make sure payment type checked at the last option$/) do
  choose('payment_type', option: 'other', checked: true)
  choose('payment_type', option: "#{@random1}", checked: false)
end

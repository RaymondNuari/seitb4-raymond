
Then(/^i should see heading$/) do
  expect(page).to have_content('Atur kasir lebih mudah dengan Moka POS')
end
Then(/^i should see paragraph$/) do
  expect(page).to have_content('Kami membantu bisnis Anda mempercepat proses penjualan dengan aplikasi kasir Moka')
end
Then(/^i should see backgroud image mokapos$/) do
  expect(page).to have_css('.Jumbotron__jumbotron__26wSR')
end

When(/^i click coba gratis sekarang button$/) do
  find('#mpIndexRegister1').click
end
Then(/^page navigate to register page$/) do
  expect(page).to have_content('Start your free 14-day trial now.')
end

When(/^i click tonton Video$/) do
  find('#__next > div > div.Jumbotron__jumbotron__26wSR > div > button').click
end
Then(/^i should see moka videos$/) do
  expect(page).to have_css('.VideoModal__iframe-container__2fdpb' )
end
Then(/^i hold video for a time$/) do
  find('#videoModal > div > div > div > div >iframe').click
  sleep(20)
end
Then(/^i close the videos$/) do
 find(:css, ".close").click
end

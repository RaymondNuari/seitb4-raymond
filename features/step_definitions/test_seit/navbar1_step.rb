Given(/^i navigate to mokapos homepage$/) do
  visit "https://mokapos.com"
end

When(/^i click hubungi kami$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__topbar__1n05C.nav__showTopbar__1ZkSn > div > div.nav__floatLeft__QggSF.nav__padding7__zElvW > a').click
end
Then(/^i see pop up notification$/) do
  pending
end
When(/^i click phone number$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__topbar__1n05C.nav__showTopbar__1ZkSn > div > div.nav__floatLeft__QggSF.nav__padding7__zElvW > a').click
end

When(/^i click Blog$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__topbar__1n05C.nav__showTopbar__1ZkSn > div > div.nav__floatRight__3pl-I.nav__padding7__zElvW > a:nth-child(1)').click
end
Then(/^i should redirect to moka blog$/) do
  expect(page).to have_content('Search Blog')
end

When(/^i click Bantuan$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__topbar__1n05C.nav__showTopbar__1ZkSn > div > div.nav__floatRight__3pl-I.nav__padding7__zElvW > a:nth-child(2)').click
end
Then(/^i should go to pusat bantuan page$/) do
  expect(page).to have_content('Selamat datang di Pusat Bantuan Moka POS')
end

When(/^i should see Moka Logo's$/) do
  expect(page).to have_css("img[src*='https://s3-ap-southeast-1.amazonaws.com/image.mokapos.com/growth/homepage/navbar/desktop/inactive.svg']")
end
When(/^i click the Moka Logo's$/) do
find('#__next > div > div:nth-child(1) > div > div.nav__navbar__QBr8L.nav__blue__5sG-W.nav__top32__3vmhV.nav__showNavbar__1RiFj.nav__transparent__1QMOL > div > div.nav__navLogo__2Oqw6 > div > img').click
end
Then(/^navigate to mokapos\.com$/) do
  expect(page).to have_current_path('/')
end

When(/^i click Dropdown Point of Sale$/) do
  click_button('Point of Sale')
end

When(/^i click Rangkuman fitur$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.pos__paddingLeftPOS__MdrFQ > div > a:nth-child(1)').click
end
Then(/^i navigate to Rangkuman fitur page$/) do
  expect(page).to have_current_path('/pos')
end

When(/^i click management meja$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.pos__paddingLeftPOS__MdrFQ > div > a:nth-child(2)').click
end

Then(/^i navigate to management meja page$/) do
  expect(page).to have_current_path('/table-management')
end

When(/^i click management inventori$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.pos__paddingLeftPOS__MdrFQ > div > a:nth-child(3)').click
end
Then(/^i navigate to management inventori page$/) do
  expect(page).to have_current_path('/ingredient')
end

When(/^i click management staff$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.pos__paddingLeftPOS__MdrFQ > div > a:nth-child(4)').click
end
Then(/^i navigate to management meja staff$/) do
  expect(page).to have_current_path('/pos')
end

When(/^i click management pelanggan$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.pos__paddingLeftPOS__MdrFQ > div > a:nth-child(5)').click
end
Then(/^i navigate to management meja pelanggan$/) do
  expect(page).to have_current_path('/customers')
end

When(/^i click menu payment$/) do
  click_link('Payment')
end
Then(/^i navigate to payment page$/) do
  expect(page).to have_current_path('/payments')
end

When(/^i click menu Capital$/) do
  click_link('Capital')
end
Then(/^i navigate to Capital page$/) do
  expect(page).to have_current_path('/capital')
end

When(/^i click menu Login$/) do
  click_link('Login')
end
Then(/^i navigate to Login page$/) do
  expect(page). to have_content('Sign In')
end

When(/^i click menu coba gratis$/) do
  find('#mpNavRegister').click
end
Then(/^i navigate to register page$/) do
  expect(page).to have_content('Start your free 14-day trial now.')
end

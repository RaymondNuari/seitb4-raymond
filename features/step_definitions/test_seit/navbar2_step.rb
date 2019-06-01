When(/^i click Dropdown Lainnya$/) do
  click_button('Lainnya')
end

When(/^i click menu Kedai Kopi$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(2)').click
end
Then(/^i navigate to Kedai Kopi page$/) do
  expect(page).to have_current_path('/business_type/coffee_shop')
end

When(/^i click menu Restoran$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(3)').click
end
Then(/^i navigate to Restoran page$/) do
  expect(page).to have_current_path('/business_type/full_service_restaurant')
end

When(/^i click menu Restoran Cepat Saji$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(4)').click
end
Then(/^i navigate to Restoran Cepat Saji page$/) do
  expect(page).to have_current_path('/business_type/quick_service_restaurant')
end

When(/^i click menu Toko Roti$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div:nth-child(2) > div > div > div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(5)').click
end
When(/^i navigate to new tab toko roti$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to Toko Roti page$/) do
  expect(page).to have_content('Search Blog')
end

When(/^i click menu Retail$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div:nth-child(2) > div > div > div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(6)').click
end
Then(/^i navigate to Retail page$/) do
  expect(page).to have_current_path('/business_type/retail')
end

When(/^i click menu Minimarket$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(1) > a:nth-child(7)').click
end
When(/^i navigate to new tab Minimarket$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to Minimarket page$/) do
  expect(page).to have_content('Topic: Retail')
end

When(/^i click menu Barbershop & Salon$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(2) > a:nth-child(2)').click
end
Then(/^i navigate to Barbershop & Salon page$/) do
  expect(page).to have_current_path('/business_type/barbershop')
end

When(/^i click menu Layanan Kecantikan$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(2) > a:nth-child(3)').click
end
When(/^i navigate to new tab Layanan Kecantikan$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to Layanan Kecantikan page$/) do
  expect(page).to have_content('Topic: Salon')
end

When(/^i click menu Layanan Profesional$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(2) > a:nth-child(4)').click
end
When(/^i navigate to new tab Layanan Profesional$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to Layanan Profesional page$/) do
  expect(page).to have_content('Topic: Service')
end

#BANTUAN

When(/^i click menu Harga$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(3) > a:nth-child(2)').click
end
Then(/^i navigate to Harga page$/) do
  expect(page).to have_current_path('/pricing')
end

When(/^i click menu Hubungi kami$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(3) > a:nth-child(3)').click
end
Then(/^i navigate to Hubungi Kami page$/) do
  expect(page).to have_current_path('/contact-us')
end

When(/^i click menu Support Center$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(3) > a:nth-child(4)').click
end
Then(/^i navigate to Support Center page$/) do
  expect(page).to have_current_path('/support')
end

When(/^i click menu Video Tutorials$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(3) > a:nth-child(5)').click
end
When(/^i navigate to new tab youtube Tutorials$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to Video Tutorials page$/) do
  expect(page).to have_content('Moka POS - Aplikasi Kasir Point of Sale')
end

When(/^i click menu Knowledge Center$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(3) > a:nth-child(6)').click
end
When(/^i navigate to new tab Knowledge Center$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to Knowledge Center page$/) do
  expect(page).to have_content('Selamat datang di Pusat Bantuan Moka POS')
end

When(/^i click menu Panduan Pengguna$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(3) > a:nth-child(7)').click
end
When(/^i navigate to new tab Panduan$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to Panduan Pengguna page$/) do
  expect(page).to have_content('Selamat datang di Pusat Bantuan Moka POS')
end

#OPEN PLATFORM

When(/^i click menu Developers$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(4) > a:nth-child(2)').click
end
Then(/^i navigate to Developers page$/) do
  expect(page).to have_current_path('/developers')
end

When(/^i click menu Getting Started$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(4) > a:nth-child(3)').click
end
Then(/^i navigate to Getting Started page$/) do
  expect(page).to have_current_path('/developers/getting_started')
end

When(/^i click menu API Reference$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(4) > a:nth-child(4)').click
end
When(/^i navigate to new tab API$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to API Reference page$/) do
  expect(page).to have_content('MokaPOS core API documentation')
end

When(/^i click menu Developer Terms$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(4) > a:nth-child(5)').click
end
Then(/^i navigate to Developer Terms page$/) do
  expect(page).to have_current_path('/developers/privacy')
end

When(/^i click menu Informasi Moka$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(5) > a:nth-child(2)').click
end
Then(/^i navigate to Informasi Moka page$/) do
  expect(page).to have_current_path('/about')
end

When(/^i click menu Berita$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div.nav__modalContainer__36bny.nav__blue__5sG-W.nav__top32__3vmhV.nav__show__28B2k > div > div > div.others__submenu__XKTG- > div:nth-child(5) > a:nth-child(3)').click
end
When(/^i navigate to new tab Berita$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to Berita page$/) do
  expect(page).to have_content('Recent Post')
end

When(/^i click menu BLog$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div:nth-child(2) > div > div > div.others__submenu__XKTG- > div:nth-child(5) > a:nth-child(4)').click
end
When(/^i navigate to new tab BLog$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to BLog page$/) do
  expect(page).to have_content('Recent Post')
end

When(/^i click menu Karir$/) do
  find('#__next > div > div:nth-child(1) > div > div.nav__wrapper__33Fym > div:nth-child(2) > div > div > div.others__submenu__XKTG- > div:nth-child(5) > a:nth-child(5)').click
end
When(/^i navigate to new tab Karir$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to Karir page$/) do
  expect(page).to have_content('Job Board')
end

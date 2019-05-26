Given(/^i navigate to staging mokapos homepage$/) do
  visit "https://staging.mokapos.com"
end
When(/^i click menu Point of Sale$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(1) > ul > li:nth-child(1) > a').click
end
Then(/^i navigate to Poin of Sale Page$/) do
  expect(page).to have_current_path('/pos')
end
Then(/^i should see cashier machine photo$/) do
  expect(page).to have_css("img[src*='https://s3-ap-southeast-1.amazonaws.com/image.mokapos.com/growth/homepage/pos/pos-jumbotron@2x.png']")
end

When(/^i click menu payment on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(1) > ul > li:nth-child(2) > a').click
end
Then(/^i navigate to Payment Page$/) do
  expect(page).to have_current_path('/payments')
end
Then(/^i should see content Moka payments$/) do
  expect(page).to have_content('Moka Payments')
end

When(/^i click menu capital on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(1) > ul > li:nth-child(3) > a').click
end
Then(/^i navigate to capital Page$/) do
  expect(page).to have_current_path('/capital')
end
Then(/^i should see content Moka Capital$/) do
  expect(page).to have_content('Moka Capital')
end

When(/^i click menu Manajemen meja on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(1) > ul > li:nth-child(4) > a').click
end
Then(/^i navigate to manajemen meja Page$/) do
  expect(page).to have_current_path('/table-management')
end
Then(/^i should see content table management$/) do
  expect(page).to have_content('Table Management')
end

When(/^i click menu Manajemen inventori on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(1) > ul > li:nth-child(5) > a').click
end
Then(/^i navigate to manajemen inventori Page$/) do
  expect(page).to have_current_path('/ingredient')
end
Then(/^i should see content Track Your Ingredient Inventory$/) do
  expect(page).to have_content('Track Your Ingredient Inventory')
end


When(/^i click menu Manajemen staff on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(1) > ul > li:nth-child(6) > a').click
end

When(/^i click menu Manajemen pelanggan on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(1) > ul > li:nth-child(7) > a').click
end
Then(/^i navigate to manajemen pelanggan Page$/) do
  expect(page).to have_current_path('/customers')
end
Then(/^i should see content Know Your Customers$/) do
  expect(page).to have_content('Know Your Customers')
end


#solusi Bisnis
When(/^i see Solusi Bisnis on footer$/) do
  expect(page).to have_content('Solusi Bisnis')
end

When(/^i click menu Kedai Kopi on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(2) > ul > li:nth-child(1) > a').click
end

When(/^i click menu Restoran on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(2) > ul > li:nth-child(2) > a').click
end

When(/^i click menu Restoran Cepat Saji on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(2) > ul > li:nth-child(3) > a').click
end

When(/^i click menu Toko Roti on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(2) > ul > li:nth-child(4) > a').click
end

When(/^i click menu Retail on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(2) > ul > li:nth-child(5) > a').click
end

When(/^i click menu Minimarket on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(2) > ul > li:nth-child(6) > a').click
end

When(/^i click menu Barbershop & Salon on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(2) > ul > li:nth-child(7) > a').click
end

When(/^i click menu Layanan Kecantikan on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(2) > ul > li:nth-child(8) > a').click
end

When(/^i click menu Layanan Profesional on footer$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(2) > ul > li:nth-child(9) > a').click
end


#otherelementexceptmenu
When(/^i see current language Bahasa$/) do
  expect(page).to have_content('Bahasa Indonesia')
end

Then(/^i click Dropdown change language$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__middle-footer__2g4-H > div > div > span').click
end

Then(/^i choose English$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__middle-footer__2g4-H > div > ul > li:nth-child(2)').click
end

Then(/^hompepage should change to mokapos version English$/) do
  expect(page).to have_current_path('/en')
end

Then(/^i choose Bahasa Indonesia$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__middle-footer__2g4-H > div > ul > li:nth-child(1)').click
end

Then(/^homepage should change to mokapos version Indonesia$/) do
  expect(page).to have_current_path('/')
end

#appandplaystore
Then(/^i see appstore logo$/) do
  expect(page).to have_css("img[src*='https://s3-ap-southeast-1.amazonaws.com/image.mokapos.com/growth/homepage/footer/app-store.svg']")
end
When(/^i click appstore button$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(5) > ul.FooterColumn__app-market__1Ysmt > li:nth-child(1) > a > img').click
end
Then(/^i navigate to new tab appstore$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i should navigate to app moka at appstore$/) do
  expect(page).to have_css("img[src*='https://is4-ssl.mzstatic.com/image/thumb/Purple123/v4/c4/7e/ed/c47eed3a-4f0c-cda9-e95f-b2bd4c2df7fd/AppIcon-0-1x_U007emarketing-0-85-220-0-7.png/246x0w.jpg']")
end

Then(/^i see playstore logo$/) do
  expect(page).to have_css("img[src*='https://s3-ap-southeast-1.amazonaws.com/image.mokapos.com/growth/homepage/footer/play-store.svg']")
end
When(/^i click playstore button$/) do
  find('#__next > div > div.Footer__footer__sMOOQ > div > footer > section.Footer__main-footer__NaqRw > div:nth-child(5) > ul.FooterColumn__app-market__1Ysmt > li:nth-child(2) > a > img').click
end
Then(/^i navigate to new tab playstore$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i should navigate to app moka at playstore$/) do
  expect(page).to have_css("img[src*='https://lh3.googleusercontent.com/O2MuxaLgYLI87vRSaSM1bs5IVvYz9lDyrTwD6uPbqK2GnQnL5sFm4ZcAdFfDdeUG3Tw=s180-rw']")
end

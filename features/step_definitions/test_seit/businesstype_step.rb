Then(/^i see title business type$/) do
  expect(page).to have_content('Cocok untuk berbagai macam tipe bisnis')
end

When(/^i click Kedai Kopi Box$/) do
  find('#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(1) > a').click
end
Then(/^i navigate to Kedai Kopi Page$/) do
  expect(page).to have_current_path('/business_type/coffee_shop')
end

When(/^i click Restoran Box$/) do
  find('#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(2) > a').click
end
Then(/^i navigate to Restoran Page$/) do
  expect(page).to have_current_path('/business_type/full_service_restaurant')
end

When(/^i click Restoran Cepat Saji Box$/) do
  find('#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(3) > a').click
end
Then(/^i navigate Restoran Cepat Saji Page$/) do
    expect(page).to have_current_path('/business_type/quick_service_restaurant')
end

When(/^i click Toko Roti Box$/) do
  find('#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(4) > a').click
end
Then(/^i navigate to Toko Roti Page$/) do
  expect(page).to have_content('Search Blog')
end

When(/^i click Retail Box$/) do
  find('#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(5) > a').click
end
Then(/^i navigate to Retail Page$/) do
  expect(page).to have_current_path('/business_type/retail')
end

When(/^i click Minimarket Box$/) do
  find('#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(6) > a').click
end
Then(/^i navigate to Minimarket Page$/) do
  expect(page).to have_content('Topic: Retail')
end

When(/^i click Barbershop & Salon Box$/) do
  find('#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(7) > a').click
end
Then(/^i navigate to Barbershop & Salon Page$/) do
  expect(page).to have_current_path('/business_type/barbershop')
end

When(/^i click Layanan Kecantikan Box$/) do
  find('#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(8) > a').click
end
Then(/^i navigate to Layanan Kecantikan Page$/) do
  expect(page).to have_content('Topic: Salon')
end

When(/^i click Layanan Profesional Box$/) do
  find('#__next > div > section.Section4__section__2c8O0 > div > ul > li:nth-child(9) > a').click
end
Then(/^i navigate to Layanan Profesional Page$/) do
  expect(page).to have_content('Topic: Service')
end

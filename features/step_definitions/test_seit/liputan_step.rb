When(/^i click the business times$/) do
  find('#__next > div > section.index__press__38KMH > ul > li:nth-child(1) > a').click
end
Then(/^i navigate to new tab BT$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to bussiness times page$/) do
  expect(page).to have_content('EDBI joins US$24m Series B funding round for Indonesian POS startup Moka')
end

When(/^i click the KOMPAS$/) do
  find('#__next > div > section.index__press__38KMH > ul > li:nth-child(2) > a').click
end
Then(/^i navigate to new tab KOMPAS$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to KOMPAS page$/) do
  expect(page).to have_content('Startup Moka Dapat Suntikan Dana Baru 24 Juta Dollar AS ')
end

When(/^i click the TECH CRUNCH$/) do
  find('#__next > div > section.index__press__38KMH > ul > li:nth-child(3) > a').click
end
Then(/^i navigate to new tab TC$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to TECH CRUCNH page$/) do
  expect(page).to have_content('Indonesian fintech startup Moka raises $24M led by Sequoia India')
end

When(/^i click TECH Inasia$/) do
  find('#__next > div > section.index__press__38KMH > ul > li:nth-child(4) > a').click
end
Then(/^i navigate to new tab TIA$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to techinasia page$/) do
  expect(page).to have_content('Indonesian POS startup Moka nets $24m from Sequoia, Softbank, and others')
end

When(/^i click the jakarta post$/) do
  find('#__next > div > section.index__press__38KMH > ul > li:nth-child(5) > a').click
end
Then(/^i navigate to new tab TJP$/) do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end
Then(/^i navigate to the jakarta post page$/) do
  expect(page).to have_content('Moka, as one of the rising Indonesian SaaS players')
end

When(/^i click first point carousel$/) do
  find('#carouselTestimonial > ol > li:nth-child(1)').click
end
Then(/^i see content users MokaPOS$/) do
  expect(page).to have_content('Dipercaya lebih dari 12,000 pebisnis di seluruh Indonesia')
end
Then(/^i see company Logo$/) do
  expect(page).to have_css("img[src*='https://s3-ap-southeast-1.amazonaws.com/image.mokapos.com/growth/homepage/testimonial/cyclo.png']")
end
Then(/^i see quote from owner$/) do
  expect(page).to have_content('Dengan Moka, saya dapat menjalankan bisnis pakaian dan kedai kopi dalam satu sistem. Moka mempercepat pengambilan keputusan berdasarkan laporan penjualan yang tersedia.')
end
Then(/^i see name & shop name$/) do
  expect(page).to have_content('Ardi, Pemilik Cyclo Coffee and Apparel')
end
Then(/^i see bussiness Type$/) do
  expect(page).to have_content('Kedai Kopi')
end
When(/^i click photo Box$/) do
  find('#carouselTestimonial > div.carousel-inner.Testimonial__slide-container__38m2B > div.carousel-item.Slide__slide__sclon.active > a').click
end
Then(/^i navigate to youtube$/) do
  expect(page).to have_css('.VideoModal__iframe-container__2fdpb')
end
Then(/^i hold for a while$/) do
  find('#videoModal > div > div > div > div > iframe').click
end
Then(/^i close youtube$/) do
  sleep(5)
  page.execute_script("$('.close.VideoModal__close__3axkA').trigger('click')")
end
Then(/^i click next slide$/) do
  find('#carouselTestimonial > div.Arrows__arrow-container__2_5gN > a.carousel-control-next.Arrows__arrow__1l2VZ').click
end
Then(/^i see New slide$/) do
  page.should have_no_content('Ardi, Pemilik Cyclo Coffee and Apparel')
end

#nextstep

Then(/^i see company Logo next2$/) do
  expect(page).to have_css("img[src*='https://s3-ap-southeast-1.amazonaws.com/image.mokapos.com/growth/homepage/testimonial/eatlah.png']")
end
Then(/^i see quote from owner next2$/) do
  expect(page).to have_content('Moka sangat mudah dioperasikan, entah itu untuk pegawai baru atau untuk outlet baru. Saya bisa memantau 12 toko sekaligus tanpa harus berada di sana.')
end
Then(/^i see name & shop name next2$/) do
  expect(page).to have_content('Michael, Pemilik Eatlah')
end
Then(/^i see bussiness Type next2$/) do
  expect(page).to have_content('Restoran Cepat Saji')
end
When(/^i click photo Box next2$/) do
  find('#carouselTestimonial > div.carousel-inner.Testimonial__slide-container__38m2B > div.carousel-item.Slide__slide__sclon.active > a').click
end
Then(/^i navigate to youtube next2$/) do
  expect(page).to have_css('.VideoModal__iframe-container__2fdpb')
end
Then(/^i hold for a while next2$/) do
  find('#videoModal > div > div > div > div > iframe').click
end
Then(/^i close youtube next2$/) do
  sleep(5)
  page.execute_script("$('.close.VideoModal__close__3axkA').trigger('click')")
end
Then(/^i click next slide next2$/) do
  find('#carouselTestimonial > div.Arrows__arrow-container__2_5gN > a.carousel-control-next.Arrows__arrow__1l2VZ').click
end
Then(/^i see New slide next2$/) do
  page.should have_no_content('Michael, Pemilik Eatlah')
end

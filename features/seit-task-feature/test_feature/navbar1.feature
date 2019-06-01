@javascript
Feature: Check Navbar Mokapos Homepage

  Background:
    Given i navigate to mokapos homepage

  Scenario: click hubungi kami
  When i click hubungi kami
  Then i see pop up notification

  Scenario: click phone number
  When i click phone number
  Then i see pop up notification

  Scenario: click BLog
  When i click Blog
  Then i should redirect to moka blog

  Scenario: click Bantuan
  When i click Bantuan
  Then i should go to pusat bantuan page

  Scenario: make sure have Moka Logo's
  When i should see Moka Logo's
  And i click the Moka Logo's
  Then navigate to mokapos.com

  Scenario: click Dropdown Point of Sale rangkuman fitur
  When i click Dropdown Point of Sale
  And i click Rangkuman fitur
  Then i navigate to Rangkuman fitur page

  Scenario: click Dropdown Point of Sale management meja
  When i click Dropdown Point of Sale
  And i click management meja
  Then i navigate to management meja page

  Scenario: click Dropdown Point of Sale management inventori
  When i click Dropdown Point of Sale
  And i click management inventori
  Then i navigate to management inventori page

  Scenario: click Dropdown Point of Sale management staff
  When i click Dropdown Point of Sale
  And i click management staff
  Then i navigate to management meja staff

  Scenario: click Dropdown Point of Sale management pelanggan
  When i click Dropdown Point of Sale
  And i click management pelanggan
  Then i navigate to management meja pelanggan

  Scenario: click menu Payment
  When i click menu payment
  Then i navigate to payment page

  Scenario: click menu Capital
  When i click menu Capital
  Then i navigate to Capital page

  Scenario: click menu Login
  When i click menu Login
  Then i navigate to Login page

  Scenario: click menu coba gratis
  When i click menu coba gratis
  Then i navigate to register page

@javascript
Feature: check all footer

  Background:
    Given i navigate to staging mokapos homepage

    #product software
    Scenario: check menu Point of Sale
    When i click menu Point of Sale
    Then i navigate to Poin of Sale Page
    And i should see cashier machine photo

    Scenario: check menu Payment
    When i click menu payment on footer
    Then i navigate to Payment Page
    And i should see content Moka payments

    Scenario: check menu capital
    When i click menu capital on footer
    Then i navigate to capital Page
    And i should see content Moka Capital

    Scenario: check menu Manajemen meja
    When i click menu Manajemen meja on footer
    Then i navigate to manajemen meja Page
    And i should see content table management

    Scenario: check menu Manajemen inventori
    When i click menu Manajemen inventori on footer
    Then i navigate to manajemen inventori Page
    And i should see content Track Your Ingredient Inventory

    Scenario: check menu Manajemen staff
    When i click menu Manajemen staff on footer
    Then i navigate to Poin of Sale Page
    And i should see cashier machine photo

    Scenario: check menu Manajemen pelanggan
    When i click menu Manajemen pelanggan on footer
    Then i navigate to manajemen pelanggan Page
    And i should see content Know Your Customers

    #solusi bisnis
    Scenario: click Kedai Kopi
    When i see Solusi Bisnis on footer
    And i click menu Kedai Kopi on footer
    Then i navigate to Kedai Kopi page

    Scenario: click Restoran
    When i see Solusi Bisnis on footer
    And i click menu Restoran on footer
    Then i navigate to Restoran page

    Scenario: click Restoran Cepat Saji
    When i see Solusi Bisnis on footer
    And i click menu Restoran Cepat Saji on footer
    Then i navigate to Restoran Cepat Saji page

    Scenario: click  Toko Roti
    When i see Solusi Bisnis on footer
    And i click menu Toko Roti on footer
    And i navigate to new tab toko roti
    Then i navigate to Toko Roti page

    Scenario: click Retail
    When i see Solusi Bisnis on footer
    And i click menu Retail on footer
    Then i navigate to Retail page

    Scenario: click Minimarket
    When i see Solusi Bisnis on footer
    And i click menu Minimarket on footer
    And i navigate to new tab Minimarket
    Then i navigate to Minimarket page

    Scenario: click Barbershop & Salon
    When i see Solusi Bisnis on footer
    And i click menu Barbershop & Salon on footer
    Then i navigate to Barbershop & Salon page

    Scenario: click Layanan Kecantikan
    When i see Solusi Bisnis on footer
    And i click menu Layanan Kecantikan on footer
    And i navigate to new tab Layanan Kecantikan
    Then i navigate to Layanan Kecantikan page

    Scenario: click Layanan Profesional
    When i see Solusi Bisnis on footer
    And i click menu Layanan Profesional on footer
    And i navigate to new tab Layanan Profesional
    Then i navigate to Layanan Profesional page


    #otherelementexceptmenu
    Scenario: check change language
    When i see current language Bahasa
    Then i click Dropdown change language
    And i choose English
    Then hompepage should change to mokapos version English
    Then i click Dropdown change language
    And i choose Bahasa Indonesia
    Then homepage should change to mokapos version Indonesia

    Scenario: click apple store button
    Then i see appstore logo
    When i click appstore button
    Then i navigate to new tab appstore
    Then i should navigate to app moka at appstore

    Scenario: click playstore button
    Then i see playstore logo
    When i click playstore button
    Then i navigate to new tab playstore
    Then i should navigate to app moka at playstore

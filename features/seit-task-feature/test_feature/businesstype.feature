@javascript
Feature: check business_type

  Background:
    Given i navigate to mokapos homepage

    Scenario: Click Kedai Kopi Type
    Then i see title business type
    When i click Kedai Kopi Box
    Then i navigate to Kedai Kopi Page

    Scenario: Click Restoran Type
    When i click Restoran Box
    Then i navigate to Restoran Page

    Scenario: Click Restoran Cepat Saji Type
    When i click Restoran Cepat Saji Box
    Then i navigate Restoran Cepat Saji Page

    Scenario: Click Toko Roti Type
    When i click Toko Roti Box
    Then i navigate to Toko Roti Page

    Scenario: Click Retail Type
    When i click Retail Box
    Then i navigate to Retail Page

    Scenario: Click Minimarket Type
    When i click Minimarket Box
    Then i navigate to Minimarket Page

    Scenario: Click Barbershop & Salon Type
    When i click Barbershop & Salon Box
    Then i navigate to Barbershop & Salon Page

    Scenario: Click Layanan Kecantikan Type
    When i click Layanan Kecantikan Box
    Then i navigate to Layanan Kecantikan Page

    Scenario: Click Layanan Profesional Type
    When i click Layanan Profesional Box
    Then i navigate to Layanan Profesional Page

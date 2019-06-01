@javascript
Feature: Check Navbar2 Mokapos Homepage

  Background:
    Given i navigate to mokapos homepage

    Scenario: click Dropdown Lainnya Kedai Kopi
    When i click Dropdown Lainnya
    And i click menu Kedai Kopi
    Then i navigate to Kedai Kopi page

    Scenario: click Dropdown Lainnya Restoran
    When i click Dropdown Lainnya
    And i click menu Restoran
    Then i navigate to Restoran page

    Scenario: click Dropdown Lainnya Restoran Cepat Saji
    When i click Dropdown Lainnya
    And i click menu Restoran Cepat Saji
    Then i navigate to Restoran Cepat Saji page

    Scenario: click Dropdown Lainnya Toko Roti
    When i click Dropdown Lainnya
    And i click menu Toko Roti
    And i navigate to new tab toko roti
    Then i navigate to Toko Roti page

    Scenario: click Dropdown Lainnya Retail
    When i click Dropdown Lainnya
    And i click menu Retail
    Then i navigate to Retail page

    Scenario: click Dropdown Lainnya Minimarket
    When i click Dropdown Lainnya
    And i click menu Minimarket
    And i navigate to new tab Minimarket
    Then i navigate to Minimarket page

    Scenario: click Dropdown Lainnya Barbershop & Salon
    When i click Dropdown Lainnya
    And i click menu Barbershop & Salon
    Then i navigate to Barbershop & Salon page

    Scenario: click Dropdown Lainnya Layanan Kecantikan
    When i click Dropdown Lainnya
    And i click menu Layanan Kecantikan
    And i navigate to new tab Layanan Kecantikan
    Then i navigate to Layanan Kecantikan page

    Scenario: click Dropdown Lainnya Layanan Profesional
    When i click Dropdown Lainnya
    And i click menu Layanan Profesional
    And i navigate to new tab Layanan Profesional
    Then i navigate to Layanan Profesional page

    Scenario: click Dropdown Lainnya Harga
    When i click Dropdown Lainnya
    And i click menu Harga
    Then i navigate to Harga page

    Scenario: click Dropdown Lainnya Hubungi kami
    When i click Dropdown Lainnya
    And i click menu Hubungi kami
    Then i navigate to Hubungi Kami page

    Scenario: click Dropdown Lainnya Support Center
    When i click Dropdown Lainnya
    And i click menu Support Center
    Then i navigate to Support Center page

    Scenario: click Dropdown Lainnya Video Tutorials
    When i click Dropdown Lainnya
    And i click menu Video Tutorials
    And i navigate to new tab youtube Tutorials
    Then i navigate to Video Tutorials page

    Scenario: click Dropdown Lainnya Knowledge Center
    When i click Dropdown Lainnya
    And i click menu Knowledge Center
    And i navigate to new tab Knowledge Center
    Then i navigate to Knowledge Center page

    Scenario: click Dropdown Lainnya Panduan Pengguna
    When i click Dropdown Lainnya
    And i click menu Panduan Pengguna
    And i navigate to new tab Panduan
    Then i navigate to Panduan Pengguna page

    Scenario: click Dropdown Lainnya Developers
    When i click Dropdown Lainnya
    And i click menu Developers
    Then i navigate to Developers page

    Scenario: click Dropdown Lainnya Getting Started
    When i click Dropdown Lainnya
    And i click menu Getting Started
    Then i navigate to Getting Started page

    Scenario: click Dropdown Lainnya API Reference
    When i click Dropdown Lainnya
    And i click menu API Reference
    And i navigate to new tab API
    Then i navigate to API Reference page

    Scenario: click Dropdown Lainnya Developer Terms
    When i click Dropdown Lainnya
    And i click menu Developer Terms
    Then i navigate to Developer Terms page

    Scenario: click Dropdown Lainnya Informasi Moka
    When i click Dropdown Lainnya
    And i click menu Informasi Moka
    Then i navigate to Informasi Moka page

    Scenario: click Dropdown Lainnya Berita
    When i click Dropdown Lainnya
    And i click menu Berita
    And i navigate to new tab Berita
    Then i navigate to Berita page

    Scenario: click Dropdown Lainnya BLog
    When i click Dropdown Lainnya
    And i click menu BLog
    And i navigate to new tab BLog
    Then i navigate to BLog page

    Scenario: click Dropdown Lainnya Karir
    When i click Dropdown Lainnya
    And i click menu Karir
    And i navigate to new tab Karir
    Then i navigate to Karir page

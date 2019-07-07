@javascript
Feature: As a seit candidate, i run TCDP 118 No 6

    Scenario: Make sure unable select more than one payment type
      Given i navigate to BO dev mokapos
      Then i create item for checkout
      Then i hit api checkout invoice
      When i go to Report invoice to check transaction
      Then i click record payment invoice button
      Then i click cash payment and other payment
      And i make sure payment type checked at the last option

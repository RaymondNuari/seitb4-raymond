@javascript
Feature: As a seit candidate, i run TCDP 118 No 5

    Scenario: Make sure Payment date canot be less than invoice created date.
      Given i navigate to BO dev mokapos
      Then i create item for checkout
      Then i hit api checkout invoice
      When i go to Report invoice to check transaction
      Then i click record payment invoice button
      Then i make sure date less than invoice date cannot be clicked

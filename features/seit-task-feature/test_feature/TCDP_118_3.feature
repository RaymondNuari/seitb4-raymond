@javascript
Feature: As a seit candidate, i run TCDP 118 No 3

    Scenario: Make sure Amount Received cannot be more than amount due
      Given i navigate to BO dev mokapos
      Then i create item for checkout
      Then i hit api checkout invoice
      When i go to Report invoice to check transaction
      Then i click record payment invoice button
      Then i Make sure Amount Received cannot be more than amount due

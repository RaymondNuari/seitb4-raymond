@javascript
Feature: As a seit candidate, i run TCDP 118 No 14

    Scenario: Make sure there is no option "Cancel Invoice"
      Given i navigate to BO dev mokapos
      Then i create item for checkout
      Then i hit api checkout invoice
      When i go to Report invoice and choose cancelled invoice
      Then i make sure there is no button cancel invoice

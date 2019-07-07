@javascript
Feature: As a seit candidate, i run TCDP 118 No 10 and 11

    Scenario: Make sure able to click "More" button & Make sure shows dropdown option for Print and Cancel Invoice
      Given i navigate to BO dev mokapos
      Then i create item for checkout
      Then i hit api checkout invoice
      When i go to Report invoice to check transaction
      Then i click more button
      Then i make sure shows dropdown option for print and cancel invoice

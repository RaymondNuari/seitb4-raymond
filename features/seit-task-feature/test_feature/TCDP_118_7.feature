@javascript
Feature: As a seit candidate, i run TCDP 118 No 7

    Scenario: Make sure able to input notes
      Given i navigate to BO dev mokapos
      Then i create item for checkout
      Then i hit api checkout invoice
      When i go to Report invoice to check transaction
      Then i click record payment invoice button
      Then i fill notes record invoice payment

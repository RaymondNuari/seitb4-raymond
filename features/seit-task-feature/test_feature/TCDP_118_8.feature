@javascript
Feature: As a seit candidate, i run TCDP 118 No 8

    Scenario: Make sure Record Payment button turn to disable after invoice is fully paid
      Given i navigate to BO dev mokapos
      Then i create item for checkout
      Then i hit api checkout invoice
      When i go to Report invoice to check transaction
      Then i make full payment
      Then i check record payment invoice button disabled

@javascript
Feature: As a seit candidate, i record full payment invoice and cancel invoice

    Scenario: Make sure invoice detail shows properly
      Given i navigate to BO dev mokapos
      Then i create item for checkout
      Then i hit api checkout invoice
      When i go to Report invoice to check transaction
      Then i make sure all checkout data show correctly
      And i Record full payment invoice with cash and cancel invoice

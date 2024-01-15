*** Settings ***
Library           Calculator

*** Test Cases ***
Scenario: Addition
    Given a calculator
    When I add 3 and 5
    Then the result should be 8

Scenario: Subtraction
    Given a calculator
    When I subtract 7 from 10
    Then the result should be 3

Scenario: Multiplication
    Given a calculator
    When I multiply 4 by 6
    Then the result should be 24

Scenario: Division
    Given a calculator
    When I divide 8 by 2
    Then the result should be 4.0
4.0
*** Settings ***
Library    Selenium2Library

*** Variables ***
${BROWSER}    chrome
${URL}        http://www.calculator.net/

*** Test Cases ***
Perform Calculation
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://*[@id="sciOutPut"]
    ${zero}    Get Text    xpath://*[@id="sciOutPut"]
    Should Be Equal As Strings    ${zero}    0
    Click Element    xpath://html/body/div[3]/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/div/div[3]/span[3]    
    ${trois}    Get Text    xpath://html/body/div[3]/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/div/div[3]/span[3]    
    Should Be Equal As Strings    ${trois}   3
    Click Element    xpath:/html/body/div[3]/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/div/div[1]/span[4]
    Click Element    xpath:/html/body/div[3]/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/div/div[2]/span[2]
    ${cinq}    Get Text    xpath:/html/body/div[3]/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/div/div[2]/span[2]
    Should Be Equal As Strings    ${cinq}    5
    Click Element    xpath:/html/body/div[3]/div/table/tbody/tr/td[1]/table/tbody/tr[2]/td[2]/div/div[5]/span[4]
    ${huit}    Get Text    xpath://*[@id="sciOutPut"] 
    Should Be Equal As Integers    ${huit}   8
    Close Browser

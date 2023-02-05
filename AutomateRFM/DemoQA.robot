*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url_demoQA}     https://demoqa.com/
${first_name}     id:firstName
${last_name}      id:lastName
${email_txt}      id:userEmail

*** Keywords ***
Open Homepage
    open browser    ${url_demoQA}   chrome
Open Browser To Drag And Drop Page
    Open Homepage
    Maximize Browser Window
    wait until page contains element    xpath=//*[@id="app"]/div/div/div[1]/a/img
Drag And Drop Element To New Window
    Click Element    xpath=//*[@id="app"]/div/div/div[1]/a/img
    switch window    title=Tools QA - Selenium Training
    title should be    Tools QA - Selenium Training
    sleep    3s
    switch window    title=DEMOQA
    click element    xpath=//*[@id="app"]/div/div/div[2]/div/div[4]
    page should contain element    xpath=//*[@id="app"]/header/a
    Drag And Drop By Offset    xpath=//*[@id="app"]/header/a    50    50
Verify Element Is In New Window
    Page Should Contain Element    xpath=//*[@id="app"]/header/a

*** Test Cases ***
Test Drag and Drop Element To New Window
    Open Browser To Drag And Drop Page
    Drag And Drop Element To New Window
    Verify Element Is In New Window
    Close Browser


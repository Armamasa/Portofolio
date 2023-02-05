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

*** Test Cases ***
DemoQA homepage
    Open Browser  https://demoqa.com/  chrome
    Click Element  link=Interactions
    Click Element  link=Sortable
    Wait Until Element Is Visible  id=sortableBox1
    Drag And Drop  id=sortableBox1  id=sortableBox3
    Wait Until Element Is Visible  xpath=//li[text()='Item 1']
    Element Text Should Be  xpath=//li[text()='Item 1']  Item 1

    Click Element  link=Interactions
    Click Element  link=Droppable
    Wait Until Element Is Visible  id=draggable
    Drag And Drop  id=draggable  id=droppable
    Wait Until Element Is Visible  xpath=//p[text()='Dropped!']
    Element Text Should Be  xpath=//p[text()='Dropped!']  Dropped!

    Click Element  link=Widgets
    Click Element  link=Accordion
    Wait Until Element Is Visible  id=section1Heading
    Click Element  id=section1Heading
    Wait Until Element Is Visible  xpath=//h3[text()='Section 1']/following-sibling::div[@class='ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom']
    Element Should Be Visible  xpath=//h3[text()='Section 1']/following-sibling::div[@class='ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom']

    Close Browser

*** Settings ***
Library    SeleniumLibrary
#This setting is used to import a Python module or Robot Framework library that contains
#keywords that can be used in the test cases.

Documentation   This is documentation
#This setting is used to provide documentation for the test suite or test case.
#The value can be a string or a multi-line string

Resource    common.robot
#This setting is used to import an external resource file that contains reusable keywords or other test data.

Test Setup
Test Teardown


*** Variables ***
${url_homepage}     https://demoqa.com/
${url_training}     https://www.toolsqa.com/selenium-training/

*** Test Cases ***
DemoQA Homepage Check
    Enter the DemoQA homepage
    Check Available Elements
    SLEEP    5s
    Go to Training web
    SLEEP    3s
    CLOSE BROWSER

*** Keywords ***
Enter the DemoQA homepage
    OPEN BROWSER    ${url_homepage}     chrome

Check Available Elements
    [Documentation]    This is homepage available elements check based on UI
    title should be    DEMOQA
    page should contain link        xpath=//*[@id="app"]/header/a
    page should contain image       /images/Toolsqa.jpg
    page should contain link        ${url_training}
    page should contain image       xpath=//*[@id="app"]/div/div/div[1]/a/img
    page should contain element     //div[@id="app"]/div/div/div[2]/div
    page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[1]
        page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[1]/div/div[2]
        page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[1]/div/div[3]
        page should contain    Elements
    page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[2]
    page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[3]
    page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[4]
    page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[5]
    page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[6]

Go to Training web
    [Documentation]    This is to check the banner link
    ELEMENT SHOULD BE VISIBLE    xpath=//*[@id="app"]/div/div/div[1]/a
    CLICK LINK    ${url_training}
    #or click element xpath=//*[@id="app"]/div/div/div[1]/a

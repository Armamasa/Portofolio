*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url_login}     https://dafalulu.ruangguru.com/auth?redirect_url=https%3A%2F%2Fdafalulu.ruangguru.com%2F

*** Keywords ***
Open login page
    Open Browser   ${url_daflu}    chrome 

*** Test Cases ***
Open login 
    Open login page

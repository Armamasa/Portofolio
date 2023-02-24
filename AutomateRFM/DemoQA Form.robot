*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url_softwareseni}      https://www.softwareseni.co.id/

*** Test Cases ***
SoftwareSeni automate test
    Access the “Softwareseni” site
    Search for “Angkasa Pura - SSO” content on the page
    Access the Angkasa Pura - SSO page
    sleep    2s
    Scroll down until the footer is visible and go back to the main page by clicking the “Softwareseni” logo
    sleep    2s
    Open the search menu in the header and search for “Tim Kami”
    Access the page displayed on the search result page
    sleep    5s
    close browser

*** Keywords ***
Access the “Softwareseni” site
    open browser    ${url_softwareseni}     chrome
    maximize browser window
Search for “Angkasa Pura - SSO” content on the page
    page should contain element    xpath=/html/body/section[2]
    page should contain    Angkasa Pura - SSO
    page should contain image    xpath=//*[@id="w-slider-mask-0"]/div[1]/div/div/div/div/div[1]/div[2]/a/div/img
    click image    xpath=//*[@id="w-slider-mask-0"]/div[1]/div/div/div/div/div[1]/div[2]/a/div/img
Access the Angkasa Pura - SSO page
    title should be    Angkasa Pura - SSO - SoftwareSeni Portfolio
    page should contain     Angkasa Pura - SSO
Scroll down until the footer is visible and go back to the main page by clicking the “Softwareseni” logo
    execute javascript      window.scrollBy(0, 700)
    #I believe that we can use loop to slowly scroll the page, but I am not sure how to use it now.
        scroll element into view    xpath=/html/body/section[3]
        page should contain element    xpath=/html/body/section[3]
        page should contain image    xpath=/html/body/section[3]/div/div[1]/a/img
        sleep    10s
    click image    xpath=/html/body/section[3]/div/div[1]/a/img
Open the search menu in the header and search for “Tim Kami”
    page should contain element    xpath=/html/body/main
    page should contain element    xpath=/html/body/main/div[2]/div/div[1]/h1
    page should contain     Tingkatkan Omzet &
    page should contain     Efektivitas Bisnis
    page should contain image    xpath=/html/body/nav/div[2]/div[2]/div[4]/img
    click image    xpath=/html/body/nav/div[2]/div[2]/div[4]/img
    sleep    3s
    page should contain element    xpath=/html/body/nav/div[2]/div[4]
    page should contain element    xpath=/html/body/nav/div[2]/div[4]/form
    page should contain element    xpath=//*[@id="search"]
    input text    id=search     Tim Kami
    sleep    2s
    click element    xpath=/html/body/nav/div[2]/div[4]/form/input[2]
    sleep    5s
Access the page displayed on the search result page
    title should be    Search Results
    page should contain    Hasil Pencarian
    page should contain element    xpath=/html/body/div/form
    page should contain link    /thank-you
    page should contain element    xpath=/html/body/div/div/div/div[1]/p




#It just an example of automation using Robotframework that I can make for my current skill
#And I'd like to learn if there is more easier way to do the automation test
#The test case may not be able to run because I already proceed the package I choose to payment page

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url_rakamin}        https://web-staging.rakamin.com/virtual-internship-experience/explore
${email}        armatester9@gmail.com
${password}     ArmaTester9


*** Test Cases ***
Authenticated user checkout
    Open explore VIX page
    sleep    5s
    User login using valid email
    sleep    3s
    User back to VIX explore and choose VIX package
    sleep    2s
    User completing the form
#Here I need to close the browser because I already proceed to the payment page, so I can't re-run the testcase
#The package I choose became "Dalam proses seleksi"
    close browser


*** Keywords ***
Open explore VIX page
    Open Browser   ${url_rakamin}    chrome

User login using valid email
    click element    xpath=//*[@id="root"]/div[1]/div[1]/div/img
    page should contain element    xpath=//*[@id="root"]/div[1]/div[2]/div[2]/button[1]
    click element    xpath=//*[@id="root"]/div[1]/div[2]/div[2]/button[1]
    sleep    3s
    input text    name=email    ${email}
    input password    xpath=//*[@id="root"]/div[1]/div/div[2]/form/div[2]/div[2]/div/input   ${password}
    sleep    2s
    click button    xpath=//*[@id="root"]/div[1]/div/div[2]/form/div[4]/button

User back to VIX explore and choose VIX package
    page should contain    Pendaftaran Magang Batch February Sudah Dibuka!
    page should contain link    /virtual-internship-experience/it-infrastructure-tony-industries
    maximize browser window
    sleep    3s
    Execute JavaScript    window.scrollBy(0, 700)
    sleep    5s
    scroll element into view    xpath=//*[@id="118"]/a
    mouse over          xpath=//*[@id="118"]
    mouse over          xpath=//*[@id="118"]/a
    sleep    5s
    page should contain element    xpath=//*[@id="118"]/a/div/button
    sleep    5s
    double click element        xpath=//*[@id="118"]/a/div/button

User completing the form
    page should contain    Selamat Datang di Tony Industries - IT Infrastructure - Virtual Internship Program , Tester !
    page should contain element    xpath=//*[@id="root"]/div[1]/div[3]/div[2]/div[1]/div/div/div[2]/button
    click element    xpath=//*[@id="root"]/div[1]/div[3]/div[2]/div[1]/div/div/div[2]/button
    sleep    5s
    page should contain element    xpath=/html/body/div[2]/div/div[2]/div/div[2]
    page should contain    Selamat Datang di Virtual Internship Rakamin Academy!
    input text    name:name     Random child
    sleep    1s
    input text    name:phone_number     0888888888
    sleep    2s
    click image    /assets/checkbox-off.350f9fca.svg
    click image    xpath=/html/body/div[2]/div/div[2]/div/div[2]/div/div/div[5]/div[2]/div/img
    click image    xpath=/html/body/div[2]/div/div[2]/div/div[2]/div/div/div[6]/div/div/img
    sleep    2s
    wait until element is enabled    xpath=/html/body/div[2]/div/div[2]/div/div[2]/div/div/button
    click button    xpath=/html/body/div[2]/div/div[2]/div/div[2]/div/div/button
    sleep    2s
    wait until page contains element    xpath=/html/body/div[3]/div/div[2]/div/div[2]
    click button    xpath=/html/body/div[3]/div/div[2]/div/div[2]/div/div[2]/button[2]
    sleep    5s
    click element    xpath=//*[@id="root"]/div[1]/div[2]/div/div[1]/div[2]/div[2]
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url_daflu}     https://dafalulu.ruangguru.com/
${url_demoqa}     https://demoqa.com/text-box

*** Keywords ***
Open dafalulu
    Open Browser   ${url_daflu}    chrome 

*** Test Cases ***
Open dafalulu
    Open dafalulu
    Page Should Contain        Halo, selamat datang
    Page Should Contain        Yuk, pilih kelas untuk mulai petualangan belajarmu!
    Page Should Contain Image  https://cdn-web.ruangguru.com/dafa-lulu-ui/public/assets/images/kelas_i.png?w=360&convert=png   
    Close Browser   
   
DemoQA input text
    Open Browser    ${url_demoqa}     chrome
    Input Text     id=userName    lopes


    
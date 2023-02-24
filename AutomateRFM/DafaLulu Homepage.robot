*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url_daflu}        https://dafalulu.ruangguru.com/
${url_demoqa}       https://demoqa.com/text-box
${email_txt}        id=email
${password_txt}     id=password


*** Keywords ***
Open dafalulu
    Open Browser   ${url_daflu}    chrome 

*** Test Cases ***
Dafalulu Homepage Check UI
    Open dafalulu
    maximize browser window
    Page Should Contain          Halo, selamat datang
    Page Should Contain          Yuk, pilih kelas untuk mulai petualangan belajarmu!
    Page Should Contain Image    https://cdn-web.ruangguru.com/dafa-lulu-ui/public/assets/images/dafalulu_logo.png?w=300&convert=png
    Page Should Contain Image    https://cdn-web.ruangguru.com/dafa-lulu-ui/public/assets/images/logo_rg_blue.png?w=200&convert=png
    Page Should Contain Image    https://cdn-web.ruangguru.com/dafa-lulu-ui/public/assets/images/kelas_i.png?w=360&convert=png
    Page Should Contain image    https://cdn-web.ruangguru.com/dafa-lulu-ui/public/assets/images/kelas_ii.png?w=360&convert=png
    Page Should Contain image    https://cdn-web.ruangguru.com/dafa-lulu-ui/public/assets/images/kelas_iii.png?w=360&convert=png
    Page Should Contain image    https://cdn-web.ruangguru.com/dafa-lulu-ui/public/assets/images/kelas_iv.png?w=360&convert=png
    Page Should Contain image    https://cdn-web.ruangguru.com/dafa-lulu-ui/public/assets/images/kelas_v.png?w=360&convert=png
    Page Should Contain image    https://cdn-web.ruangguru.com/dafa-lulu-ui/public/assets/images/kelas_vi.png?w=360&convert=png
    Page Should Contain          "Produk Ruangguru"
    Page Should Contain          "Produk Lainnya"
    Page Should Contain          "roboguru"
    Page Should Contain          "ruangbaca"
    Page Should Contain          ruangbelajar
    Page Should Contain          ruanguji
    Page Should Contain          ruanglesonline
    page should contain link     https://www.ruangguru.com
    sleep    5s
    close browser

Dafalulu Masuk/Daftar
    Open dafalulu
    maximize browser window
    sleep    5s
    Click Element                id:menu-button-2
    #bisa menggunakan xpath=//*[@id="menu-button-2"]
    page should contain          Halo, selamat datang!
    page should contain          Ajak anak Anda belajar sambil bertualang bersama Dafa dan Lulu, yuk!
    page should contain          Ingin tahu lebih lengkap tentang belajar dengan Dafa dan Lulu?
    page should contain button   Masuk
    page should contain button   Daftar
    sleep    5s
    close browser

DemoQA input text
    Open Browser    ${url_demoqa}     chrome
    maximize browser window
    Input Text     id=userName    lopes


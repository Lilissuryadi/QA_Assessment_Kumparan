*** Settings ***
Documentation    Cashbac.com Stagging
Library          Selenium2Library
Resource         /Users/dmg/PycharmProjects/robot-web-cashbac-com/Keywords/cashbac_key.robot
Library          Collections
Library          RequestsLibrary



*** Variables ***
${Login}                   https://kumparan.com/login
${Signup}                  https://kumparan.com/register
${News}                    https://kumparan.com/channel/news
${Browser}                 headlesschrome
${Homepage}                https://kumparan.com/
${Username}                lilissulastrisuryadi@gmail.com
${Password}                testing123
${Comment}                 cobatesting




*** Test Cases ***
TC 01: Open Homepage Kumparan.com
    [tags]  Homepage
    Open Browser
    Welcome Page Should Be Open
    Validasi Menu Utama

TC 02: Register
    Register
    Input Email Register
    Sumbit Register

TC 03: Login
    Login
    Input Email Password Login
    Submit Login

TC 04: News
    Click News
    Scroll to Middle Page
    Scroll to Bottom Page
    Scroll to Top Page

TC 05: Put Comments
    Put Comment
    Input Comment

Close Browser

*** Settings ***
Documentation    kumparan.com Keyword
Library          Selenium2Library
Test Teardown     Close All Browsers
Suite Teardown     Close All Browsers



*** Keywords ***
#Testcase 1
#---OPEN KUMPARAN.COM---#
Open Browser
        Open Browser                     ${Browser}
        Set Window Size                  1920    1080
#        Maximize Browser Window


Welcome Page Should Be Open
        Location Should Be      ${Homepage}  ${Browser}
        Sleep                   1s

Validasi Menu Utama
        Page Should Contain     News
        Sleep                   1s

Register
        Click Element        xpath://*[@id="Register"]div[3]/div[1]/div[1]/div[2]/div[1]/div[3]/button[1]/div[1]
        Sleep                2s
        Page Should Contain Element  xpath://*[@id="Register"]div[3]/div[1]/div[1]/div[2]/div[1]/div[1]/span[1]
        Sleep                1s

Input Email Register
        [Arguments]   ${Username}
        Input Text    id:Register    ${Username}
        Sleep         2s

Sumbit Register
        Click Element        xpath://*[@id="Login"]div[3]/div[1]/div[1]/div[2]/div[1]/div[5]/a[1]/span[1]
        Sleep                5s

Tutup
        Click Element        xpath://*[@id="Login"]div[3]/div[1]/div[1]/div[2]/div[1]/div[6]/div[2]/div[1]/div[1]/div[3]/div[1]/button[1]/div[1]/div[1]/span[1]
        Sleep                5s

Login
        Click Element        xpath://*[@id="Register"]div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/nav[1]/div[1]/div[1]/div[3]/button[1]/div[1]/div[1]/span[1]
        Sleep                2s
        Page Should Contain Element  xpath://*[@id="Login"]div[3]/div[1]/div[1]/div[2]/div[1]/div[1]/span[1]
        Sleep                1s

Input Email Password Login
        [Arguments]   ${Username} ${Password}
        Input Text    id:Login    ${Username} ${Password}
        Sleep         2s

Submit Login
        Click Element                       //*[@id="submitregist"]div[3]/div[1]/div[1]/div[2]/div[1]/div[2]/div[4]/button[1]/div[1]
        Sleep                               5s

Click News
        Click Element                       //*[@id="News"]div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/a[1]/div[1]/span[1]
        Sleep                               5s

Scroll to Bottom Page
        Execute JavaScript      window.scrollTo(0, document.body.scrollHeight)
        Sleep                   5s

Scroll to Middle Page
        Execute JavaScript      window.scrollBy(0,200)
        Sleep                   5s

Scroll to Top Page
        Execute JavaScript      window.scrollTo(0,200)
        Sleep                   5s

Put Comment
        Execute JavaScript      Execute JavaScript      window.scrollBy(0,200)
        Sleep                   5s
        Title Should Be         Warna Warni Hari Waisak: Ada Pawai di Borobudur; Napi Dapat Remisi
        Sleep                  10s
        Click Element         //*[@id="Comment"]/div[2]/div[2]/div[2]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[1]/button[1]/div[1]/div[1]/img[1]

Input Comment
        Click Element         //*[@id="CommentBox"]div[1]/div[1]/div[2]/div[2]/div[2]/div[3]/div[1]/div[5]/div[12]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/p[1]
        [Arguments]   ${Comment}
        Input Text    id:Comment    ${Comment}
        Sleep         5s
        Clik Element    //*[@id="CommentSubmit"]/div[1]/div[1]/div[2]/div[2]/div[2]/div[3]/div[1]/div[5]/div[12]/div[1]/div[2]/div[1]/button[1]/img[1]

Close Browser
       [Teardown]    Close All Browsers



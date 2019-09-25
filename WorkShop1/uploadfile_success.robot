*** Setting ***
Library  SeleniumLibrary
Library  String

*** Variables ***

*** Test Cases ***
อัพโหลด 3 ไฟล์
    ไปหน้าอัพโหลด
    เลือกไฟล์ m1.png
    เลือกไฟล์ m2.png
    เลือกไฟล์ m3.png
    ตรวจสอบ
    อัพโหลด m1.png สำเร็จ
    อัพโหลด m2.png สำเร็จ
    อัพโหลด m3.png สำเร็จ
    Close Browser

*** Keywords ***
ไปหน้าอัพโหลด
    Open Browser  http://nervgh.github.io/pages/angular-file-upload/examples/simple/  browser=gc 

เลือกไฟล์ m1.png
    Choose File  xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]  ${CURDIR}/mock/m1.png

เลือกไฟล์ m2.png
    Choose File  xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]  ${CURDIR}/mock/m2.png

เลือกไฟล์ m3.png
    Choose File  xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]  ${CURDIR}/mock/m3.png

ตรวจสอบ
    Element Text Should Be  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/p  Queue length: 3

    Element Text Should Be  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[1]/td[1]/strong  m1.png
    Element Text Should Be  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[1]/td[2]  0.15 MB
    Element Should Be Enabled  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[1]/td[5]/button[1]
    Element Should Be Disabled  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[1]/td[5]/button[2]
    Element Should Be Enabled  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[1]/td[5]/button[3]

    Element Text Should Be  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[2]/td[1]/strong  m2.png
    Element Text Should Be  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[2]/td[2]  0.22 MB
    Element Should Be Enabled  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[2]/td[5]/button[1]
    Element Should Be Disabled  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[2]/td[5]/button[2]
    Element Should Be Enabled  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[2]/td[5]/button[3]

    Element Text Should Be  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[3]/td[1]/strong  m3.png
    Element Text Should Be  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[3]/td[2]  0.22 MB
    Element Should Be Enabled  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[3]/td[5]/button[1]
    Element Should Be Disabled  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[3]/td[5]/button[2]
    Element Should Be Enabled  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[3]/td[5]/button[3]

อัพโหลด m1.png สำเร็จ
    Click Button  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[1]/td[5]/button[1]
    Wait Until Page Contains Element  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/div/div/div/div[@style="width: 33%;"]

อัพโหลด m2.png สำเร็จ
    Click Button  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[2]/td[5]/button[1]
    Wait Until Page Contains Element  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/div/div/div/div[@style="width: 67%;"]

อัพโหลด m3.png สำเร็จ
    Click Button  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[3]/td[5]/button[1]
    Wait Until Page Contains Element  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/div/div/div/div[@style="width: 100%;"]


    
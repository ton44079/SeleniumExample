*** Setting ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${URL} https://rdserver.rd.go.th/

*** Test Cases ***
ยื่นภาษี
    เข้าระบบ
    กดเมนูยื่นภาษี
    กด ตลิกบน ป๊อปอัพ
    กดกลับ

*** Keywords ***
เข้าระบบ
    Open Browser  ${URL}  browser=gc 

กดเมนูยื่นภาษี
    Click Element  xpath://*[@id="menuList"]/li[3]/a

กด ตลิกบน ป๊อปอัพ
    Select Frame  xpath://*[@id="lightboxdialog"]/p/iframe
    Click Element  xpath:/html/body/p/table[3]/tbody/tr/td/a

กดกลับ
    Select Window
    Click Element  xpath://*[@id="lightboxdialog"]/button
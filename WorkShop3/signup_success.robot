*** Setting ***
Library  SeleniumLibrary
Library  String

*** Setting ***
Suite Setup  เข้าwebsite
Suite Teardown  Close Browser

*** Variables ***
${URL}  https://www.kimschiller.com/page-object-pattern-tutorial/

*** Test Cases ***
สมัครสมาชิกกับระบบ
    กรอกชื่อ "danai" นามสกุล "Thitipornchai"
    กรอกข้อทูลที่อยู่ "Bangkok, Thailand" "10250"
    ส่งข้อมูลเพื่อการสมัคร
    ผลการสมัครสำเร็จ ต้องแสดงคำว่า "Thank you!"

*** Keywords ***
เข้าwebsite
    Open Browser  ${URL}  browser=gc

กรอกชื่อ "${name}" นามสกุล "${lastname}"
    Input Text  id:firstname  ${name}
    Input Text  id:lastname  ${lastname}

กรอกข้อทูลที่อยู่ "${address}" "${zipcode}"
    Input Text  id:address  ${address}
    Input Text  id:zipcode  ${zipcode}

ส่งข้อมูลเพื่อการสมัคร
    Click Element  id:signup

ผลการสมัครสำเร็จ ต้องแสดงคำว่า "${expect}"
    Element Should Contain  tag:h1  ${expect} 

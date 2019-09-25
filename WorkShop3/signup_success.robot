*** Setting ***
Library  SeleniumLibrary
Library  String
Resource  pages/signup_page.robot

*** Setting ***
Suite Setup  เข้าwebsite
Suite Teardown  Close Browser

*** Variables ***

*** Test Cases ***
สมัครสมาชิกกับระบบ
    กรอกชื่อ "danai" นามสกุล "Thitipornchai"
    กรอกข้อทูลที่อยู่ "Bangkok, Thailand" "10250"
    ส่งข้อมูลเพื่อการสมัคร
    ผลการสมัครสำเร็จ ต้องแสดงคำว่า "Thank you!"

*** Keywords ***
เข้าwebsite
    signup_page.Open

กรอกชื่อ "${name}" นามสกุล "${lastname}"
    signup_page.Fill in firstname  ${name}
    signup_page.Fill in lastname  ${lastname}
    
กรอกข้อทูลที่อยู่ "${address}" "${zipcode}"
    signup_page.Fill in address  ${address}
    signup_page.Fill in zipcode  ${zipcode}

ส่งข้อมูลเพื่อการสมัคร
    signup_page.Submit data

ผลการสมัครสำเร็จ ต้องแสดงคำว่า "${expect}"
    signup_page.Check register success show text "${expect}" 

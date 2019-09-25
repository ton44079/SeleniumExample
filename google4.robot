*** Setting ***
Library  SeleniumLibrary
Library  String
Resource  resources/google_resource.robot
Suite Setup  เข้าไปยังหน้าค้นหาของ google
Suite Teardown  Close Browser
Test Teardown  กลับไปยังหน้าค้นหา
Test Template  Flow search in google
Default Tags  v4

*** Variables ***
${URL}  http://google.com

*** Test Cases ***
ค้นหาคำว่าเหล็กไหล  เหล็กไหล  ดูเหล็กไหล
ค้นหาคำว่าไออุ่น  ไออุ่น  ไออุ่น
ค้นหาคำว่าไออุ่น2  ไออุ่น  ไออุ่น
ค้นหาคำว่าไออุ่น3  ไออุ่น  ไออุ่น

*** Keywords ***
Flow search in google
    [Arguments]  ${keyword}  ${expect}
    ค้นหาคำว่า    ${keyword}
    จะต้องเจอ    ${expect}
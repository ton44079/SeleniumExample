*** Setting ***
Library  SeleniumLibrary
Library  String
Resource  resources/google_resource.robot
Suite Setup  เข้าไปยังหน้าค้นหาของ google
Suite Teardown  Close Browser
Default Tags  v5

*** Variables ***
${URL}  http://google.com

*** Test Cases ***
XXXXX
    [Template]  Flow search in google
    เหล็กไหล  ดูเหล็กไหล
    ไออุ่น  ไออุ่น
    ไออุ่น  ไออุ่น
    ไออุ่น  ไออุ่น

*** Keywords ***
Flow search in google
    [Arguments]  ${keyword}  ${expect}
    ค้นหาคำว่า    ${keyword}
    จะต้องเจอ    ${expect}
    กลับไปยังหน้าค้นหา
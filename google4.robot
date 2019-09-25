*** Setting ***
Library  SeleniumLibrary
Library  String
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


กลับไปยังหน้าค้นหา
    Go To  ${URL}    

ค้นหาคำว่า  
    [Arguments]  ${keyword}
    Input Text  css:input.gLFyf.gsfi  ${keyword}
    Press Keys  css:input.gLFyf.gsfi  RETURN

จะต้องเจอ
    [Arguments]  ${expect}
    Wait Until Page Contains Element  id:resultStats
    ${result}=  Get Text  id:resultStats 
    @{resultSplite}=  Split String  ${result}  separator=${SPACE}  max_split=3
    Should Be Equal  ผลการค้นหาประมาณ  ${resultSplite}[0]
    Should Be Equal  รายการ  ${resultSplite}[2]
    ${cleanData}=  Remove String  ${resultSplite}[3]  ${SPACE}
    Should Start With  ${cleanData}  (
    Should End With  ${cleanData}  )

เข้าไปยังหน้าค้นหาของ google
    Open Browser  ${URL}  browser=gc 
    # Maximize Browser Window

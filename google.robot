*** Setting ***
Library  SeleniumLibrary
Library  String

*** Variables ***

*** Test Cases ***
ค้นหาคำว่าเหล็กไหล
    [Tags]  done
    เข้าไปยังหน้าค้นหาของ google
    ค้นหาคำว่าเหล็กไหล
    จะต้องเจอดูเหล็กไหล
    Close Browser

ค้นหาคำว่าไออุ่น
    [Tags]  Testing  feature01
    เข้าไปยังหน้าค้นหาของ google
    ค้นหาคำว่าไออุ่น
    จะต้องเจอเรื่องเด่น
    Close Browser

*** Keywords ***

เข้าไปยังหน้าค้นหาของ google
    Open Browser  http://google.com  browser=gc 
    # Maximize Browser Window

ค้นหาคำว่าเหล็กไหล
    Input Text  css:input.gLFyf.gsfi  เหล็กไหล
    Press Keys  css:input.gLFyf.gsfi  RETURN

จะต้องเจอ ดูเหล็กไหล
    # Wait Until Element Contains  xpath://*[@id="tvcap"]/div/div/div/div[1]/h3/span  ดูเหล็กไหล
    ${result}=  Get Text  id:resultStats 
    @{resultSplite}=  Split String  ${result}  separator=${SPACE}  max_split=3
    # Log To Console  0=>${resultSplite}[0]
    Should Be Equal  ผลการค้นหาประมาณ  ${resultSplite}[0]
    Should Be Equal  รายการ  ${resultSplite}[2]
    ${cleanData}=  Remove String  ${resultSplite}[3]  ${SPACE}
    Should Start With  ${cleanData}  (
    Should End With  ${cleanData}  )

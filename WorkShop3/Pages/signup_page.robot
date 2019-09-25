*** Keywords ***
Open
      Open Browser  https://www.kimschiller.com/page-object-pattern-tutorial/  browser=gc

Fill in firstname 
    [Arguments]  ${value}
    Input Text  id:firstname  ${value}

Fill in lastname
    [Arguments]  ${value}
    Input Text  id:lastname  ${value}

Fill in address
    [Arguments]  ${value}
    Input Text  id:address  ${value}

Fill in zipcode
    [Arguments]  ${value}
    Input Text  id:zipcode  ${value}

Submit data
    Click Element  id:signup

Check register success show text "${expect}" 
    Element Should Contain  tag:h1  ${expect}
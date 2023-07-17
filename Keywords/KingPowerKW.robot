*** Settings ***
Library    Selenium2Library
*** Keywords ***

Open Chrome Browser With URL
    [Arguments]     ${URL}
    open browser              ${URL}     chrome  options=add_experimental_option("detach",True)
    Log to Console    INFO : Execute on : ${Browser} Browser
    Maximize Browser Window
    Set Selenium Speed        ${DELAY}


Login King Power Web    
    input text      ${KingPowerLocatorUser}      ${KingPowerUser}
    input text      ${KingPowerLocatorPass}      ${KingPowerPass}
    Press keys      ${KingPowerLocatorPass}      ENTER

Login King Power Web User Password Incorrect  
    input text      ${KingPowerLocatorUser}      ${KingPowerUserIncorrect}
    input text      ${KingPowerLocatorPass}      ${KingPowerPassIncorrect}
    Press keys      ${KingPowerLocatorPass}      ENTER

Login King Power Web User Not Found 
    input text      ${KingPowerLocatorUser}      ${KingPowerUserNotFound}
    input text      ${KingPowerLocatorPass}      ${KingPowerPassNotfound}
    Press keys      ${KingPowerLocatorPass}      ENTER

Logout King Power Web
    Click Element    ${KingPowerLocatorLogout}
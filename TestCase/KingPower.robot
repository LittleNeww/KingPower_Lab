*** Settings ***
Resource     ${CURDIR}/../Resources/InitialRobot.robot
Resource     ${CURDIR}/../Resources/VariablesRobot.robot
Resource     ${CURDIR}/../Keywords/KingPowerKW.robot

*** Test Cases ***
Login Success
    #[Tags]  google  smoke   integration
    #[Documentation]  Search some keywords on Google search
    Open Chrome Browser With URL    ${KingPowerURL}
    Login King Power Web 
    Logout King Power Web
    Capture Page Screenshot

Login failed - Password incorrect
    Open Chrome Browser With URL    ${KingPowerURL}
    Login King Power Web User Password Incorrect
    Wait Until Element Contains   //div[@id='flash']  Your password is invalid!
    Capture Page Screenshot


Login failed - Username not found
    Open Chrome Browser With URL    ${KingPowerURL}
    Login King Power Web User Not Found 
    Wait Until Element Contains   //div[@id='flash']   Your password is invalid!
    Capture Page Screenshot
*** Settings ***
Suite Setup       Set Library Search Order    AppiumLibrary    Selenium2Library
Suite Teardown    Run Keyword And Ignore Error    shutdown all test
Library           AppiumLibrary
Library           Selenium2Library
Resource          Resource/env.resource

*** Test Cases ***
Search
    Log To Console    >>> Open Application
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP_LOCATION}    appPackage=${PACKAGE_NAME}
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.view.View[@content-desc='ShrineA fashionable retail app']
    AppiumLibrary.Click Element    xpath=//android.view.View[@content-desc='ShrineA fashionable retail app']
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="NEXT"]
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@content-desc="NEXT"]
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Open menu"]
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@content-desc="Open menu"]
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="CLOTHING"]
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@content-desc="CLOTHING"]
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Walter henley (white) $38, Add to cart"]
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@content-desc="Walter henley (white) $38, Add to cart"]
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@content-desc="Open menu"]
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="ACCESSORIES"]
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@content-desc="ACCESSORIES"]
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Shrug bag $198, Add to cart"]
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@content-desc="Shrug bag $198, Add to cart"]
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@content-desc="Shopping cart"]
    AppiumLibrary.Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="CLEAR CART"]
    AppiumLibrary.Click Element    xpath=//android.widget.Button[@content-desc="CLEAR CART"]
    Close Application

*** Settings ***
Documentation    Example test for Selenium
Library     Selenium2Library
Library    OperatingSystem
Suite Setup    set environment variable    webdriver.chrome.driver   ${SUITE_SOURCE}\chromdriver.exe
Suite Teardown    close all browsers

*** Variables ***
${URL}    http://www.immoscout24.ch/en

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Given open browser    ${URL}    browser=gc
    And maximize browser window
    And wait until page contains    Rent and buy real estate
    Then click element    lnkLoginRegister
    Then page should contain    Log in / Register

*** Keywords ***
Provided precondition

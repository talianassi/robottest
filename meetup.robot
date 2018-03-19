*** Settings ***

Documentation  This is the Meetup + WeWork homepage
Library  Selenium2Library
Documentation  This is the Meetup + WeWork homepage
Library  Selenium2Library

*** Variables ***



*** Test Cases ***
Validate all page elements
    [Documentation]  This test is to ensure all the elements on the page are present
    [Tags]  Meetup  WeWork
    Open Browser  https://www.meetup.com/about/allforwe  chrome
    Page Should Contain Element  xpath=//*[@id="mupMain"]/section[1]/div[1]/img
    Page Should Contain Element  xpath=//*[@id="globalNav"]/nav/div/div[1]/a/div/img
    Page Should Contain Element  xpath=//*[@id="globalNav"]/nav/div/div[3]/a/div/span
    Page Should Contain Element  xpath=//*[@id="globalNav"]/nav/div/div[4]/button/span
    Page Should Contain Image  xpath=//*[@id="mupMain"]/section[1]/div[1]/img
    Page Should Contain Image  xpath=//*[@id="mupMain"]/section[1]/div[2]/div/a/img
    Page Should Contain Link  xpath=//*[@id="mupMain"]/div[1]/section/div/div/div[2]/a
    Page Should Contain Link  xpath=//*[@id="mupMain"]/section[2]/div/div/a
    Page Should Contain Image  xpath=//*[@id="mupMain"]/section[3]/div/div[2]/img
    Page Should Contain Link  xpath=//*[@id="mupMain"]/div[2]/section/div/a
    Close Browser

Validate read more link
    [Documentation]  This test is to ensure the Read More link works
    [Tags]  Meetup  WeWork  ReadMore
    Open Browser  https://www.meetup.com/about/allforwe  chrome
    Close Browser
*** Keywords ***

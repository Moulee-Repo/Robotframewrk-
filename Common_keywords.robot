*** Comments ***
Commom function for Demo 

*** Settings ***
Library  SeleniumLibrary
Resource  Global_variables.robot
Resource  Page_Variables/LoginPageObjects.robot


*** Keywords ***
Website Navigation
   Open Browser  ${URL}    ${Browser}
   Maximize Browser Window


Close Pages
   Close Browser


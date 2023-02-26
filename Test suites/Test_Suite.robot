*** Comments ***
Test cases for the Demo website

*** Settings ***
Resource    ../Page_Keywords/loginpagekeywords.robot
Resource    ../Common_keywords.robot

Force Tags  Signup&login

*** Test Cases ***
Signup and Login
    [Documentation]  Testcase is for demo website signup and Login
    GIVEN Website Navigation
    WHEN Website SignUp
    THEN website Login
    AND Close Pages
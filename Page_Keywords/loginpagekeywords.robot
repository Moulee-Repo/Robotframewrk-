*** Comments ***
Page Reusable keywords for login

*** Settings ***
Library  SeleniumLibrary
Library    String
Library    XML
Resource  ../Page_Variables/LoginPageObjects.robot
Resource  ../Common_keywords.robot   

*** Keywords ***
Website SignUp
   [Documentation]  Signup the webiste for login
   Click Element    ${Login_Page_element}
   Execute Javascript    window.open('https://courses.ultimateqa.com/users/sign_up')  
   Get Window Titles
   Switch Window  Create a new account - Ultimate QA
   ${fristname}=  Generate Random String
   Input Text    ${firstname_txtbox}    ${fristname}     
   ${lastname}=  Generate Random String
   Input Text   ${lastname_txtbox}   ${lastname}  
   ${Ran_ID}=  Generate Random String
   ${tempgmail}=    Set Variable    ${Ran_ID}@gmail.com 
   Input Text  ${Email_textbox}  ${tempgmail}
   Input Text  ${Passwrd_textbox}  ${Passwrd}  
   Click Element    ${terms_chkbox}
   Wait Until Element Is Enabled    ${btn_singin}
   Double Click Element    ${btn_singin}

website Login
   [Documentation]  Signing in the webiste
   Switch Window  Sign In - Ultimate QA
   Input Text  ${Email_textbox}  ${Email_ID}
   Input Password  ${Passwrd_textbox}  ${Passwrd}  
   Click Button    ${btn_singin}

Website Logout
   [Documentation]  loging out the account
   Click Element    ${Profile_Dropdown}
   Click Element    ${signout}
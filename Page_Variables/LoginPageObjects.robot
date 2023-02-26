*** Comments ***
variables for login page

*** Variables ***
${Login_Page_element}        Xpath://a[@href='http://courses.ultimateqa.com/users/sign_in']
${Email_textbox}             id:user[email]
${Passwrd_textbox}           id:user[password]
${btn_singin}                Xpath://Button[@type='submit']
# ${SignUp}                    Xpath://a[@href='/users/sign_up']
${firstname_txtbox}          id:user[first_name]
${lastname_txtbox}           id:user[last_name]
${terms_chkbox}              id:user[terms]
${Profile_Dropdown}          id:header-dropdown-menu
${signout}                   Xpath://a[@href='/users/sign_out']

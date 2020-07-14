***Settings***
Library  SeleniumLibrary

*** Test Cases ***
Login Test
    [Documentation]    ceci un test de LogIn/Logout 
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Input Text    id=txtUsername    &{DataLogin}[key1]    
    Input Text    id=txtPassword    &{DataLogin}[key2]
    Click Button    id=btnLogin  
    Click Element    id=welcome    
    Set Browser Implicit Wait    5
    Click Element    link=Logout 
    Log    Ceci est un test par %{Username} dans %{os}     
    Log    Fin de test    
    Close Browser  
    # pour les commantaires
    

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/index.php/auth/login 
${Browser}    gc    
@{Logins}    Admin    admin123 
&{DataLogin}    key1=Admin    key2=admin123   
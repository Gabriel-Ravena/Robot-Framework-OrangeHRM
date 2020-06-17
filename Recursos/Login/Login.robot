*** Settings ***
Documentation       URL, navegador, usuario y contraseña para ingresar al sitio

*** Variables ***
#Ingreso al sitio
${URL}              https://opensource-demo.orangehrmlive.com/
${Navegador}        Chrome
#Datos de ingreso
${UserName}         id=txtUsername
${Password}         id=txtPassword
${Boton_Login}      id=btnLogin

*** Keywords ***
Ingresando al sitio
    [Documentation]         Ingresa al sitio
    open browser        ${URL}      ${Navegador}
    maximize browser window

Logueo
    [Documentation]
    input text          ${username}     Admin
    input text          ${password}     admin123
    click element       ${boton_login}

Cerrar navegador
    [Documentation]         Cierra el navegador una vez que el caso se termina de ejecutar
    close browser

#Keyword general de ingreso al sitio y logueo
Ingreso al sitio
    [Documentation]
    Ingresando al sitio
    Logueo


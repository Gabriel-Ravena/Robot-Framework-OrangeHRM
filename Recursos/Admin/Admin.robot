*** Settings ***

*** Keywords ***
#########  System Rules  #########
Rellena formulario System rules
    [Documentation]
    input text                      ${UserN}                robert.craig
    select from list by label       ${UserRole}             ESS
    input text                      ${Employee_Name}        Robert Craig
    select from list by label       ${Status}               Enabled

click en el boton Search
    [Documentation]
    click element                   ${Boton_Search}

click en el boton Reset
    [Documentation]
    click element                   ${Boton_Reset}

#Llenar el formulario y realizar la busqueda
Busqueda de usuario(System Rules)
    [Documentation]     Llena el formulario y realiza la búsqueda
    rellena formulario system rules
    click en el boton Search

Reseteo de busqueda de usuario(System Rules)
    [Documentation]     Llena el formumlario y resetea la busqueda
    Rellena formulario System rules
    click en el boton Reset

######### Agregar usuario a System Rules ################
click en el boton ADD
    [Documentation]         Hace click en el botón "ADD" para agregar un nuevo usuario
    wait until element is visible           ${Boton_Add}
    click element           ${Boton_Add}

click en el boton Delete
    [Documentation]         Hace click en el botón "Delete" para eliminar un usuario
    wait until element is visible           ${Boton_Delete}
    click element           ${Boton_Delete}

#Agregar usuario
Agregar un usuario a System Rules
    [Documentation]         Llena los campos del formulario para agregar un nuevo usuario
    page should contain             Add User
    select from list by label       ${Add_User_Role}        ESS
    input text                      ${Select_Employee_Name}     Fiona Grace
    wait until element is visible       xpath=//strong[text()="Fiona Grace"]
    click element                       //strong[text()="Fiona Grace"]
    Usuario para formulario Add User
    select from list by label       ${Select_Status}        Enabled
    input text                      ${Elegir_Password}      contrasenia
    input text                      ${Confirmar_Password}   contrasenia

Click en el boton Save
    [Documentation]         Click en el botón "Save" para agregar al usuario ingresado
    click element                   ${Boton_Save}

Click en el boton Cancel
    [Documentation]         Click para cancelar la acción de agregar usuario
    click element                   ${Boton_Cancel}

#Agregando al usuario
Agregar usuario ADD User
    [Documentation]
    click en el boton ADD
    Agregar un usuario a System Rules
    click en el boton save

#Llenar formulario y cancelar
Agregar usuario ADD User(Cancelar)
    [Documentation]
    click en el boton ADD
    agregar un usuario a system rules
    click en el boton cancel

#Keyword para generar usuarios aleatorios
Usuario para formulario Add User
    [Documentation]
    ${ADD_Usuario} =  Generate Random String  8  [LETTERS]
    input text      ${ADD_Username}        ${ADD_Usuario}
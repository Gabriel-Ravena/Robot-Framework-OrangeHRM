*** Settings ***
Documentation           Casos de prueba corridos en suite
Library                 Selenium2Library
Library                 String
Resource                ../Recursos/Login/Login.robot
Resource                ../Recursos/Index/Variables_index.robot
Resource                ../Recursos/Index/Index.robot
Resource                ../Recursos/Admin/Admin.robot
Resource                ../Recursos/Admin/Variables_Admin.robot
Suite Setup             Ingreso al sitio
#Suite Teardown          Cerrar navegador

*** Test Cases ***
Verifica que aparezcan los elementos en el index
    [Documentation]
    Index.Completitud de pantalla

Busqueda de usuario en System Rules
    [Documentation]         Ingresa a la opción "Admin" del menú y rellena el formulario "System Rules"
    Index.click en la opcion admin
    Admin.Busqueda de usuario(System Rules)

Resetear busqueda de usuario en System Rules
    [Documentation]         Ingresa a la opción "Admin" del menú, rellena el formulario "System Rules" y hace
    ...                     click en el boton "Reset"
    Index.click en la opcion admin
    Admin.Reseteo de busqueda de usuario(System Rules)

Agregar usuario(ADD Rules)
    [Documentation]
    Admin.Agregar usuario ADD User

Cancelar envio de formulario(ADD Rules)
    [Documentation]
    Admin.Agregar usuario ADD User(Cancelar)



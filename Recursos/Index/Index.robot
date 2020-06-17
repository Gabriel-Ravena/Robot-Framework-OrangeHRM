*** Settings ***
Documentation

*** Keywords ***
Completitud de pantalla
    [Documentation]
    page should contain element         ${Logo}
    page should contain element         ${Link_MarketPlace}
    page should contain element         ${Icono_Campanita}
    page should contain element         ${Text_Welcome}

#Menu principal
click en la opcion admin
    [Documentation]         Hace click en la opcion "Admin"
    click element           ${Admin}

*** Settings ***
Documentation

*** Variables ***
#Formulario System Users
${UserN}            id=searchSystemUser_userName
${UserRole}         id=searchSystemUser_userType
${Employee_Name}    id=searchSystemUser_employeeName_empName
${Status}           id=searchSystemUser_status
${Boton_Search}     id=searchBtn
${Boton_Reset}      id=resetBtn
${Boton_Add}        id=btnAdd
${Boton_Delete}     id=btnDelete

#Formulario ADD User
${Add_User_Role}            id=systemUser_userType
${Select_Employee_Name}     id=systemUser_employeeName_empName
${ADD_Username}             id=systemUser_userName
${Select_Status}            id=systemUser_status
${Elegir_Password}          id=systemUser_password
${Confirmar_password}       id=systemUser_confirmPassword
#Botones Save y Cancel
${Boton_Save}               id=btnSave
${Boton_Cancel}             id=btnCancel

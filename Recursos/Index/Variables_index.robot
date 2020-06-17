*** Settings ***
Documentation

*** Variables ***
#Cabecera
${Logo}                 xpath=//div[@id="branding"]//img[@alt="OrangeHRM"]
${Link_MarketPlace}     id=MP_link
${Icono_Campanita}      xpath=//span[@id="notification"]
${Text_Welcome}         xpath=//a[@id="welcome"]
#######  Menu Principal  ##########
${Menu_Principal}       id=mainMenuFirstLevelUnorderedList
#Opciones del Menú principal
${Admin}                id=menu_admin_viewAdminModule
${Pim}                  id=menu_pim_viewPimModule
${Leave}                id=menu_leave_viewLeaveModule
${Time}                 id=menu_time_viewTimeModule
${Recluitment}          id=menu_recruitment_viewRecruitmentModule
${Performance}          id=menu__Performance
${Dashboard}            id=menu_dashboard_index
${Directory}            id=menu_directory_viewDirectory
${Maintenance}          id=menu_maintenance_purgeEmployee
${Buzz}                 id=menu_buzz_viewBuzz



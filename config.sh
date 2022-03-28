#!/bin/sh

AUTOMOUNT=true
LATESTARTSERVICE=false
POSTFSDATA=false
PROPFILE=false
REPLACE="
/system/etc/gps.conf
/system/vendor/etc/gps.conf
"

print_modname() {
    ui_print "******************************"
    ui_print "*                            *"
    ui_print "*      BETTER GPS CONFIG     *"
    ui_print "*         FOR ANDROID        *"
    ui_print "*                            *"
    ui_print "*      by:                   *"
    ui_print "*       - ianhughes74        *"
    ui_print "*       - JonasCardoso       *"
    ui_print "*       - MilesBHuff         *"
    ui_print "*                            *"
    ui_print "******************************"
}

set_permissions() {
    set_perm_recursive $MODPATH 0 0 0755 0644
}

#!/bin/sh

AUTOMOUNT=true
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false

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

REPLACE="
/system/etc/gps.conf
/system/vendor/etc/gps.conf
"

set_permissions() {
    set_perm_recursive $MODPATH 0 0 0755 0644
}

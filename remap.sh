#!/bin/bash

echo "Show key list: xmod -pke"
echo "Show graphic options: xev"

xmodmap -e "keycode  49 = grave asciitilde bar degree grave notsign"
echo "Tecla \` configurada (AltGr + \`)"

xmodmap -e "keycode 59 = comma semicolon comma semicolon less"
echo "Tecla < configurada (AltGr + <)"

xmodmap -e "keycode 60 = period colon period colon greater"
echo "Tecla > configurada (AltGr + >)"

xmodmap -e "keycode 61 = minus underscore minus underscore slash"
echo "Tecla / configurada (AltGr + ?)"

xmodmap -e "keycode 105 = Menu NoSymbol Menu"
echo "Tecla [=] configurada (AltGr)"

exit
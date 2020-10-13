# comment
ctrl + shift + 7
[ctrl+k, ctrl+b] # show and hide bar menu
# install plugin : insertar hora al editor
# time in text | install python
easy_install --upgrade pytz

# plugin sublime
Emmet => escribir html y css rapido
SublimeLinter => show error (php,js,more)
Trimmer => autoclean spaces end file # usale [ctrl+shif+p] trimmer (reapplyAction) [CTRL+ALT+S]
docBlockr => commnet fot php and other
markdow Preview => [,build : ctrl+b]

# install Sublime (crear link)
sudo ln -s /opt/Sublime Text 2/sublime_text /usr/bin/sublime
# Crear icono de sublime
sudo cp /home/anb/Escritorio/netbeans.desktop /usr/share/applications/sublime.desktop
# dar permisos para que cualquier usuario pueda llamarlo desde
sudo chmod 777 /usr/share/applications/sublime.desktop
##
# ojo en esta carpeta se configuran los iconos temporales del # sistema  mas infor en :
# http://netgator.blogspot.com/2012/07/home-documents-desktop-icon-on-lubuntu.html
#  http://wiki.lxde.org/en/Main_Menu
/home/anb/.local/share/applications

# Configurar sublime default en todos
# preferences>setting-user
{
	"font_size": 11,
	"translate_tabs_to_spaces": false,
	"detect_indentation": false,
	"tab_size": 4,
	"draw_white_space": "all",
	"update_check": false,
	"default_line_ending": "unix",
}

# configuracion compatible adaptativo a space y tab
{
	"detect_indentation": true,
	"draw_white_space": "all"
}

## install plugins
- emmet
- sublime linter
- BracketHighlighter
- git gutter

# Author: Pablo J. Santos -- @_jaysaints
# Topic 103.1 - Working on the command line
#
#!/bin/bash

echo -e "\n\t--- Bem-Vindo $LOGNAME ---\n"

echo -e "
#########################################
#\t Informações do Sistema \t#
#########################################
"
echo -e "> Sistema Operacional:\t $(uname -o) $(uname -m)"
echo -e "> Release:\t\t $(uname -r)"
echo -e "> Versão do Sistema:\t $(uname -v)"
echo -e "> Idioma:\t\t $LANG" 
echo -e "> SHELL:\t\t $SHELL"
echo -e "> Tipo do Terminal:\t $TERM "
echo -e ""

echo -e "
#########################################
#\t Informações do Usuário  \t#
#########################################
"
echo -e "> Nome do Usuário:\t $USERNAME" 
echo -e "> Diretório /home:\t $HOME"
echo -e "> "

echo -e "
#########################################
#\t Variáveis de Ambiente -  \t#
#########################################
"
echo -e "> Variável PATH:\t $PATH"




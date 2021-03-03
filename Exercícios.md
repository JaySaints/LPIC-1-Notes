## 103.1 Trabalhando na Linha de Comando

**1. Encontre as seguintes informações sobre a sua instalação Linux:**

O caminho completo do arquivo .bash_history para o seu usuário;

O release do kernel instalado

Os diretórios incluídos em seu PATH

O hostname da máquina

O PID da sua sessão shell atual

A localização do comando tar
   

**2. Crie e exporte uma variável chamada "NOME" que contenha o seu nome completo.**

**3. Crie um comando que escreva na tela a seguinte frase: "O Conteúdo da Variável $NOME é: <Valor da Variável NOME>"**

## 103.2 Aplicando Filtros a Textos e Arquivos

**4. O arquivo /etc/passwd contém a lista de usuários do Linux, os campos são separados pelo caractere :, o primeiro campo indica o nome do  usuário e o terceiro o ID do usuário.**

Escreva um comando que mostre os últimos 15 registros do arquivo, exibindo apenas o nome do usuário e seu ID, e que esteja ordenado pelo  ID numérico. Por exemplo:

usuario1:10

usuario2:12

usuario:3:1000

> $ tail -n 15 /etc/passwd | cut -d ":" -f 1,3 | sort -t":" -k2 -g

- $ tail -n 15 --> Opção _-n_ mostra as 15 ultimas linhas do arquivo.
- $ cut -d ":" -f 1,3 --> Opção _-d_ define o delimitador de campos e o _-f_ seleciona os campos a ser extraido do texto.
- $ sort -t":" -k2 -g --> Opção _-t_ define o delimitador de campos, _-k_ seta qual campo sera usado de referencia para ordenar e o _-g_ define o tipo de ordenação nesse caso ordena com base em valores numéricos.


**5. Gere um comando, ou sequência deles, que mostre o número de linhas do arquivo /etc/passwd excluindo-se as linhas que contenham a palavra  "daemon". O resultado do comando deve ser o número de linhas.**

> $ sed '/daemon/d' /etc/passwd | wc -l

- $ sed '/daemon/d' --> Exclui as linhas que contenham a palavra _daemon_.
- $ wc -l --> _-l_ irá mostrar a quantidade de linhas no arquivo.


## 103.3 Gerenciamento Básico de Arquivos

**6. No home de seu usuário, crie um diretório chamado LPI1, dentro dele crie Aulas, Exercicios e Exemplos.**
> $ mkdir -p LPI1/Aulas
>  
> $ mkdir Exercicios
> 
> $ mkdir Exemplos

**7. Copie (não mova) todos os arquivos e diretórios existentes em /etc/network/ para <HOME>/LPI1/Exercicios/Network/. Mantenha as  mesmas permissões.**
> $ cp -pr /etc/network ~/user/LPI1/Exercicios/Network

**8. Copie (não mova) todos os arquivos do diretório /etc, cujo nome  termine com ".conf" para <HOME>/LPI1/Exercicios/Config/**
> $ mkdir ~/user/LPI1/Exercicios/Config
> 
> $ cp -pr /etc/*.conf ~/user/LPI1/Exercicios/Config

**9. Em \<HOME>/LPI1/Exercicios, crie um arquivo chamado  arquivos-cron.tgz, compactado com o gzip, contendo todos os arquivos e  diretórios do /etc que contenham a palavra "cron" no nome.**
> $ tar -zcvpf arquivos-cron.tgz /etc/*cron*

**10. Descompacte conteúdo do arquivo arquivos-cron.tgz dentro do diretório \<HOME>/LPI1/Exercicios/Descompactar/** 


**11. Encontre todos os arquivos do diretório /var, cujo nome termine com ".gz" e que foram modificados nas últimas 48 horas.**
> $ find ./ -mtime -2 -name "*.gz" -ls 2>/dev/null
> 

## 103.4 Fluxos, Pipes e Redirecionamentos

**12. Gere um comando que crie um arquivo chamado diretorios-config.out, contendo a saída do comando "ls" (usando as devidas opções) para todos os diretórios  do /var cujo nome contenha a palavra "config". A saída deve ser algo  como o visto abaixo:**

drwxr-xr-x 2 root    root    4096 Mar 28 11:49 /var/cache/fontconfig 

drwx------ 2 root    root    4096 Abr  7 11:37 /var/cache/ldconfig 

drwxr-xr-x 2 lightdm lightdm 4096 Mar 27 16:41 /var/lib/lightdm/.cache/fontconfig 

drwx------ 4 lightdm lightdm 4096 Mar 27 16:41 /var/lib/lightdm/.config

**13. Explique as diferenças entre os seguintes redirecionadores de entradas e saídas**

- \> arquivo

- < arquivo 

- \>\> arquivo

- 2\> arquivo

- \>arquivo 2\>&1

**14. Escreva um único comando comando que gere a lista de arquivos e diretórios contidos em ~/LPI1/Exercicios/Network, exibindo-os na tela e  em um novo arquivo chamado lista-network.out**



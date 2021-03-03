
**4.** O arquivo /etc/passwd contém a lista de usuários do Linux, os campos são separados pelo caractere :, o primeiro campo indica o nome do  usuário e o terceiro o ID do usuário.

Escreva um comando que mostre os últimos 15 registros do arquivo, exibindo apenas o nome do usuário e seu ID, e que esteja ordenado pelo  ID numérico. Por exemplo:

usuario1:10

usuario2:12

usuario:3:1000

> $ tail -n 15 /etc/passwd | cut -d ":" -f 1,3 | sort -t":" -k2 -g

- $ tail -n 15 --> Opção _-n_ mostra as 15 ultimas linhas do arquivo.
- $ cut -d ":" -f 1,3 --> Opção _-d_ define o delimitador de campos e o _-f_ seleciona os campos a ser extraido do texto.
- $ sort -t":" -k2 -g --> Opção _-t_ define o delimitador de campos, _-k_ seta qual campo sera usado de referencia para ordenar e o _-g_ define o tipo de ordenação nesse caso ordena com base em valores numéricos.


**5.** Gere um comando, ou sequência deles, que mostre o número de linhas do arquivo /etc/passwd excluindo-se as linhas que contenham a palavra  "daemon". O resultado do comando deve ser o número de linhas.

> $ sed '/daemon/d' /etc/passwd | wc -l

- $ sed '/daemon/d' --> Exclui as linhas que contenham a palavra _daemon_.
- $ wc -l --> _-l_ irá mostrar a quantidade de linhas no arquivo.


6. 
> $ mkdir -p LPI1/Aulas
>  
> $ mkdir Exercicios
> 
> $ mkdir Exemplos

7. 
> $ cp -pr /etc/network ~/user/LPI1/Exercicios/Network

8.
> $ mkdir ~/user/LPI1/Exercicios/Config
> 
> $ cp -pr /etc/*.conf ~/user/LPI1/Exercicios/Config

9.
> $ tar -zcvpf arquivos-cron.tgz /etc/*cron*

10.
> $ find ./ -mtime -2 -name "*.gz" -ls 2>/dev/null

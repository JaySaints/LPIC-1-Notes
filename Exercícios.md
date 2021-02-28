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

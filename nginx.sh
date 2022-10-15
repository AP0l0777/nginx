#!/bin/bash
clear
sudo apt update
sudo apt install nginx -y
clear
echo ""
echo "apolo777"
echo "                                                                            "
echo " #    #  ####  # #    # #    #     ####  ###### #####  #    # ###### #####  "
echo " ##   # #    # # ##   #  #  #     #      #      #    # #    # #      #    # "
echo " # #  # #      # # #  #   ##       ####  #####  #    # #    # #####  #    # "
echo " #  # # #  ### # #  # #   ##           # #      #####  #    # #      #####  "
echo " #   ## #    # # #   ##  #  #     #    # #      #   #   #  #  #      #   #  "
echo " #    #  ####  # #    # #    #     ####  ###### #    #   ##   ###### #    # "
echo "                                                  desenvolvido-por:apolo777 "
echo ""
echo ""
sleep 2s
clear
echo "########################################################"
echo "# 1. iniciar o servidor nginx                          #"
echo "# 2. parar o servidor nginx                            #"
echo "# 3. restart no servidor nginx                         #"
echo "# 4. abrir o arquivo do website                        #"
echo "# 5. configurar o ip e nome do projeto                 #"
echo "# 6. SAIR                                              #"
echo "########################################################"
echo ""
sleep 1s
echo -n "oque você deseja?: "
read desejo;
if [ $desejo = "1" ]; then
        clear
        echo "servidor iniciado"; sudo systemctl start nginx
else
        echo ""
fi

if [ $desejo = "2" ]; then
        clear
        echo "Servidor nginx Parado"; sudo systemctl stop nginx
else
        echo ""
fi

if [ $desejo = "3" ]; then
        clear
        sudo systemctl restart nginx
else
        echo ""
fi
echo ""
if [ $desejo = "4" ]; then
        clear
        sleep 3s
        cd /var/www/html
        nano index.html

else
        echo""
fi

if [ $desejo = "5" ]; then
        clear
        echo "                                            !!!!!    abrindo arquivo hosts    !!!!!                                                   "
        echo " !!!!! Em seguida adicione uma linha com o número de ip e o nome do seu projeto exemplo(127.0.0.1 meusite.com.br www.meusite.com.br) !!!"
        sleep 8s
        sudo nano /etc/hosts
else
        echo ""
fi

if [ $desejo = "6" ]; then
        exit
else
        echo ""
fi

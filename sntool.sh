#!/bin/bash
#Автор snhacker
echo "Эта тулза разработана snhacker-ом для удобного запуска и завершения metasploit."
echo "Нажмите <1>, чтобы запусть msf."
echo "Нажмите <2>, чтобы выйти."
printf ">> "; read character

case $character in
    1 ) echo "Запуск: "
	echo "Для корректной работы, пожалуйста выходите из metasploit командой exit!" 
	service postgresql start
	msfconsole
	echo "Остановка postgresql..."
	service postgresql stop
	echo "Скрипт завершился успешно."
	exit 0
        ;;
    2 ) echo "Выход..."; exit 0
        ;;
    * ) echo "Вы выбрали не 1 или 2."
        echo "Выход..."
	exit 1
esac

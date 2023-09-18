# Отчет по лабораторной работе N 2 по курсу
# "Фундаментальная информатика"

Студент группы: M8О-115Б, Самарский Ярослав Вадимович\
Контакты: yaroslav.samarskij@mail.ru \
Работа выполнена: 17.09.2023\
Преподаватель: Чеснов Илья Игоревич

## 1. Тема

Операционная среда ОС UNIX

## 2. Цель работы

Изучение и освоение программного обеспечения ОС UNIX и приобретение навыков, необходимых для выполнения курсовых и лабораторных работ в среде UNIX.

## 3. Задание

Приобретение основных навыков работы в ОС UNIX

## 4. Оборудование

Процессор: Intel Core i5-8265U @ 8x 3.9GH\
ОП: 7851 Мб\
НМД: 1024 Гб\
Монитор: 1920x1080

## 5. Программное обеспечение

Операционная система семейства: **linux (ubuntu)**, версия **18.10 cosmic**\
Интерпретатор команд: **bash**, версия **4.4.19**.\
Система программирования: **--**, версия **--**\
Редактор текстов: **emacs**, версия **25.2.2**\
Утилиты операционной системы: **--**\
Прикладные системы и программы: **--**\
Местонахождение и имена файлов программ и данных на домашнем компьютере: **/mnt/d/mai1509**

## 6. Идея, метод, алгоритм решения задачи

1. Запросить у пользователя пароль и подтвердите его.
2. Предложить пользователю выбрать программу.
3. В зависимости от выбранной программы вызвать соответствующую функцию.
4. Выполнить определенные функциональные возможности в рамках каждой функции, такие как копирование или перемещение текстовых файлов, создание папок, завершение процессов или очистка каталогов.

theCopir
1. Спросить у пользователя - скопировать или переместить файлы
2. Перебрать все txt файлы в корне и скопировать/переместить в папку the_backup и добавить расширение .bak

processKiller
1. Вывести все прцоессы
2. Спросить какой процесс убить и убить

folderMachine
1. Спросить кол-во папок для генерации и текст для сохранения
2. Убедиться что их больше 4-х
3. Создать папку lorem_НОМЕР_ПАПКИ
4. Поместить в неё файл text.txt с заданным текстом
5. Вернуться к пункту 3 нужное кол-во раз

cleanup
1. Удалить все папки начинающиеся с lorem
2. Удалить папку the_backup

## 7. Сценарий выполнения работы

1. Запросить у пользователя пароль и убедиться в его правильности. В противном случае отправить платить BTC
2. Предложить пользователю выбрать программу.
3. В зависимости от выбранной программы вызвать соответствующую функцию.
4. Выполнить одну из следующих подпрограмм

theCopir
1. Спросить у пользователя - скопировать или переместить файлы
2. Перебрать все txt файлы в корне
3. Скопировать/переместить в папку the_backup
4. Добавить расширение .bak

processKiller
1. Вывести все прцоессы (ps)
2. Спросить какой процесс убить
3. Убить выбранный процесс (kill)

folderMachine
1. Вывести описание
2. Спросить кол-во папок для генерации и текст для сохранения
3. Убедиться что их больше 4-х, иначе остановить выполнение
4. Создать папку lorem_НОМЕР_ПАПКИ
5. Войти в папку из п.4
5. Создать файл text.txt с заданным текстом
6. Вернуться в предыдущую папку
7. Вернуться к пункту 4 нужное кол-во раз

cleanup
1. Удалить все папки начинающиеся с lorem
2. Удалить папку the_backup

## 8. Распечатка протокола

folderMachine
```
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ head WELCOME
Welcome, to Bogdan script
It was leaked from NASA, so you must prove that you have to access this script








stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ read -p "Enter password: " PASSWORD
Enter password: 1
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ if [[ "$PASSWORD" != "1" ]]; then
>     echo "Wrong password. Transfer 2BTC to my wallet and receive it"
>     exit 1
> fi
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ read -p "Select program (folderMachine/theCopir/processKiller/cleanup): " PROGRAM
Select program (folderMachine/theCopir/processKiller/cleanup): folderMachine
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ echo "It will create several folders with text file with your input"
It will create several folders with text file with your input
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ echo "Write text and then press Ctrl+C"
Write text and then press Ctrl+C
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ read -p "Enter text to write everywhere: " TEXT_DATA
Enter text to write everywhere: 123abc
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ read -p "Enter folders count (>=4): " COUNT
Enter folders count (>=4): 5
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ if (($COUNT <= 4)); then
>         echo "Too few folders. Try again with more than 4 folders"
>         exit 1
>     fi
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ 
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ echo "Creating..."
Creating...
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ for i in $(seq 1 $COUNT); do
>         mkdir "lorem$i"
>         pushd "lorem$i" >>/dev/null
> 
>         touch "text.txt"
>         echo "${TEXT_DATA}" >"text.txt"
> 
>         popd >>/dev/null
>     done
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ echo "Done"
Done
```

theCopir
```
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ head WELCOME
Welcome, to Bogdan script
It was leaked from NASA, so you must prove that you have to access this script








stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ read -p "Enter password: " PASSWORD
Enter password: 1
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ if [[ "$PASSWORD" != "1" ]]; then
>     echo "Wrong password. Transfer 2BTC to my wallet and receive it"
>     exit 1
> fi
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ read -p "Select program (folderMachine/theCopir/processKiller/cleanup): " PROGRAM
Select program (folderMachine/theCopir/processKiller/cleanup): theCopir
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ echo "Welcome to THE TXT COPIR. It was made to copy txt files between universes"
Welcome to THE TXT COPIR. It was made to copy txt files between universes
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ read -p "Do you want to move or copy files (mv/cp): " DECISION
Do you want to move or copy files (mv/cp): cp
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ mkdir the_backup
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ for file_path in $(find . -maxdepth 1 -name "*.txt"); do
>         if [[ "$DECISION" == "mv" ]]; then
>             mv "$file_path" "the_backup/$file_path.bak"
>         elif [[ "$DECISION" == "cp" ]]; then
>             cp "$file_path" "the_backup/$file_path.bak"
>         else
>             echo "Wrong decision"
>         fi
>     done
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ echo "Done"
Done
```

processKiller
```
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ head WELCOME
Welcome, to Bogdan script
It was leaked from NASA, so you must prove that you have to access this script








stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ read -p "Enter password: " PASSWORD
Enter password: 1
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ if [[ "$PASSWORD" != "1" ]]; then
>     echo "Wrong password. Transfer 2BTC to my wallet and receive it"
>     exit 1
> fi
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ read -p "Select program (folderMachine/theCopir/processKiller/cleanup): " PROGRAM
Select program (folderMachine/theCopir/processKiller/cleanup): processKiller
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ echo "This is a process killer. You can kill enemies like in CS: GO"                This is a process killer. You can kill enemies like in CS: GO
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ ps -A
    PID TTY          TIME CMD
      1 ?        00:00:01 systemd
      2 ?        00:00:00 kthreadd
      3 ?        00:00:00 rcu_gp
      4 ?        00:00:00 rcu_par_gp

... ОЧЕНЬ МНОГО СТРОК

   5102 ?        00:00:00 kworker/4:0-events
   5152 ?        00:00:00 kworker/0:1-events
   5153 ?        00:00:00 kworker/1:0-events
   5956 ?        00:00:01 gnome-terminal-
   5964 pts/1    00:00:00 bash
   6003 ?        00:00:07 chrome
   6027 ?        00:00:00 chrome
   6050 ?        00:00:00 chrome
   6323 ?        00:00:00 kworker/2:0-events
   6546 pts/0    00:00:00 ps
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ read -p "Enter PID you wanna kill: " PID
Enter PID you wanna kill: 5986
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ kill -9 $PID
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ echo "+\$1500: For killing your enemy with knife"
+$1500: For killing your enemy with knife
```

cleanup
```
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ head WELCOME
Welcome, to Bogdan script
It was leaked from NASA, so you must prove that you have to access this script








stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ read -p "Enter password: " PASSWORD
Enter password: 1
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ if [[ "$PASSWORD" != "1" ]]; then
>     echo "Wrong password. Transfer 2BTC to my wallet and receive it"
>     exit 1
> fi
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ read -p "Select program (folderMachine/theCopir/processKiller/cleanup): " PROGRAM
Select program (folderMachine/theCopir/processKiller/cleanup): cleanup
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ for FOLDER_TO_REMOVE in $(ls | grep "^lorem"); do
>         rm -rf $FOLDER_TO_REMOVE
>     done
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ 
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ rm -rf the_backup
stud@HUEPAR-11:~/samarskiy/mai_lab_1509$ echo "Done"
Done
```

## 9. Дневник отладки

| № | Лаб. или дом. | Дата       | Время     | Событие                                          | Действие по исправлению       | Примечание  |
|---|---------------|------------|-----------|--------------------------------------------------|-------------------------------|-------------|
|1  | Дом           | 17.09.2023 | 17:50     | Ошибка из-за отсутствия backslash перед $        | Поставил \\                   |             |
|2  | Дом           | 17.09.2023 | 18:20     | Не вызывались функции с подпрограммами           | Объявил функции перед вызовом |             |
|2  | Дом           | 17.09.2023 | 18:20     | ps выводит не все процессы                       | Добавил флаг -A               |             |

## 10. Замечания автора по существу работы

Скрипт работает\
Я бы ещё добавил в программу folderMachine выбор названия папки, но тогда cleanup тоже потребует эту информацию, чтобы удалить эти папки. Такое решение не подходит\

## 11. Выводы

Я повторил базовые команды Bash, было весьма полезно. Узнал что команде ps нужен флаг -А чтобы вывести все процессы


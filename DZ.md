Задание 1.

    1. Взят и немного изменен модуль из демонстрации
 
![Alt text](src/png/2.png)


    2. Используетсья переменная для ssh в "cloud-init.yml"
   
![Alt text](src/png/3.png)

    сама переменная помещена в 

![Alt text](src/png/7.png)

![Alt text](src/png/4.png)

    1. Установленн "nginx" с помощью "cloud-init"

![Alt text](src/png/5.png)

    4. Вывод команды ``sudo nginx -t```
   
![Alt text](src/png/1.png)

Сылка на комит задание 1.

https://github.com/NeTrogajSvetchu/ter-homeworks-04/commit/910a9ce6821e0ef1cc295040d9de9dc26362029f


Задание 2.

    1. Создан локальный модуль "vpc_dev"

![Alt text](src/png/8.png)

    2. Написанны переменные 

![Alt text](src/png/9.png)

    3. Вывод команды module.vpc_dev в консоли terraform

![Alt text](src/png/10.png)

    4. Заменил значения в модуле 

![Alt text](src/png/11.png)

    5. Вывод команды terraform apply

![Alt text](src/png/12.png)

    6. Установлен  terraform-docs. Создан документ путем вывода комманды "terraform-docs markdown . > doc.md" файл в корне репозитория src/doc.md
    
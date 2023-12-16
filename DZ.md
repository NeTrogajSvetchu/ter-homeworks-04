Задание 1.

    1. Взят и немного изменен модуль из демонстрации
 
![Alt text](src/png/2.png)


    2. Используется переменная для ssh в "cloud-init.yml" -->
   
![Alt text](src/png/3.png)

    сама переменная помещена в 

![Alt text](src/png/7.png)

![Alt text](src/png/4.png)

    3. Установлен "nginx" с помощью "cloud-init"

![Alt text](src/png/5.png)

    4. Вывод команды ``sudo nginx -t```
   
![Alt text](src/png/1.png)

Ссылка на коммит задание 1.

https://github.com/NeTrogajSvetchu/ter-homeworks-04/commit/910a9ce6821e0ef1cc295040d9de9dc26362029f


Задание 2.

    1. Создан локальный модуль "vpc_dev"

![Alt text](src/png/8.png)

    2. Написаны переменные 

![Alt text](src/png/9.png)

    3. Вывод команды module.vpc_dev в консоли terraform

![Alt text](src/png/10.png)

    4. Заменил значения в модуле 

![Alt text](src/png/11.png)

    5. Вывод команды terraform apply

![Alt text](src/png/12.png)

    6. Установлен  terraform-docs. Создан документ путем вывода команды "terraform-docs markdown . > doc.md" файл в корне репозитория src/doc.md
    
Ссылка на коммит задание 2.

https://github.com/NeTrogajSvetchu/ter-homeworks-04/commit/6a6ceb4287f2fcbf9e31eefd4a3b25ede6abeed3

Задание 3.

    1. Для вывода ресурсов необходимо ввести данную команду 
   
   "terraform state list"

![Alt text](src/png/13.png)

    2. Удалил полностью два модуля командой 

    "terraform state rm module.vpc_dev module.test-vm"

![Alt text](src/png/14.png)

    3.  Команды восстановления стейта
   
   terraform state list

   terraform import 'module.test-vm.data.yandex_compute_image my_image' f2edjaaou81nlio0t33s

   terraform import 'module.vpc_dev.yandex_vpc_network.develop' enptun2matcvj5m343nt

   terraform import 'module.vpc_dev.yandex_vpc_subnet.develop' e9b0ord6euhkn8mhnanf

   terraform plan
   
  ![Alt text](src/png/15.png) 

   Если скопировать "terraform.tfstate.*.backup" в terraform.tfstate то ошибки не произойдет

    Ссылка на коммит задание 3.

https://github.com/NeTrogajSvetchu/ter-homeworks-04/commit/cfd61b2752dae7664aa54af1743392c669f51981


    Задание 4.
(Не разобрался как сделать создание трех подсетей с разными зонами и сидрами в одном ресурсе. )

    1. Были созданы переменные для ресурсов подсетей. 

![Alt text](src/png/16.png)

    2. Добавлены ресурсы в мейн модуля.

![Alt text](src/png/17.png) неразобрался как сделать 

    3. Отредактирован output в модуле.

![Alt text](src/png/18.png)

    4. Отредактирован мейн проекта.

![Alt text](src/png/19.png)

    5. Вывод команды terraform apply

![Alt text](src/png/20.png)

    6. Вывод команд yc vpc subnet list и yc vpc network list

![Alt text](src/png/21.png)

    Ссылка на коммит задание 4.

https://github.com/NeTrogajSvetchu/ter-homeworks-04/commit/4d28779b9b6fa8b742f5228355f27106ea282550

    Задание 5.

    1. Написал модуль кластеру БД (к сожалению так и не разобрался как создать хоста при помощи переменной)

![Alt text](src/png/22.png)

![Alt text](src/png/23.png)

    2. Написал модуль к кластеру БД database и user

![Alt text](src/png/24.png)

![Alt text](src/png/25.png)

    3.Так как не получилось полностью сделать первый пункт задания 
    сделал два хоста для кластера в разных подсетях.Вывод команды terraform apply

![Alt text](src/png/26.png)

    Ссылка на коммит задание 5.

https://github.com/NeTrogajSvetchu/ter-homeworks-04/commit/6f29a26f2f36ac2da01ffb3ae908e5f334127133

    Задание 6.

    1. Был развернут сервер vault 

![Alt text](src/png/27.png)
   
    2. Пытался сохранить секрет созданный в веб, добиться этого не смог.

![Alt text](src/png/28.png)

    3. Вывод

![Alt text](src/png/29.png)

    Ссылка на коммит задание 6.

https://github.com/NeTrogajSvetchu/ter-homeworks-04/commit/609b80142c10b740ad99ed2dcba6ba08966d046d

    Задание 7.

    1.Создал внешний стейт VPC

![Alt text](src/png/30.png)



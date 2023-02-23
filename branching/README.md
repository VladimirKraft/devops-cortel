# Ветвление в Git - Результаты

- Создание директории branching и файлов merge.sh и rebase.sh 
    <br/>
    ![touch](./img/1.jpg)
    <br/>
- Создание ветки git-merge и переключение на нее
    <br/>
    ![checkout](./img/2.jpg)
    <br/>
    Далее в ветке git-merge было сделано два коммита:  merge: @ instead * и merge: use shift
    <br/>
- После этого в ветке main был сделан коммит change rebasse.sh
- Для того, чтобы создать ветку git-rebase на коммите prepare for merge and rebase, необходимо было найти хэш этого коммита при помощи команды git log
    <br/>
    ![gitlog](./img/3.jpg)
    <br/>
- Переход на коммит prepare for merge and rebase по хэшу
    <br/>
    ![checkout](./img/4.jpg)
    <br/>
- Создание ветки git-rebase и переключение на нее
    <br/>
    ![checkout](./img/5.jpg)
    <br/>
- Далее в ветке git-rebase было сделано два коммита: git-rebase 1 и git-rebase 2. В этих коммитах изменялся файл rebase.sh
- Промежуточный итог
    <br/>
    ![promez](./img/6.jpg)
    <br/>
- Переключение на ветку main и мерж ветки git-merge в ветку main
    <br/>
    ![merge](./img/7.jpg)
    <br/>
- Результат мержа ветки git-merge
    <br/>
    ![rez](./img/8.jpg)
    <br/>
- Далее выполнялось перебазирование ветки git-rebase и в появившемся окне редактора нужно было указать на слияние двух коммитов в один при помощи ключевого слова fixup
    <br/>
    ![fixup](./img/9.jpg)
    <br/>
- Но создалась конфликтная ситуация
    <br/>
    ![conf](./img/10.jpg)
    <br/>
- Для того, чтобы разрешить конфликт необходимо посмотреть в содержимое файла rebase.sh и убрать метки установленные гитом вместе со строкой echo "Parameter: $param"
    <br/>
    ![rebase](./img/11.jpg)
    <br/>
- Попытка продолжить rebase
    <br/>
    ![rebase1](./img/12.jpg)
    <br/>
- Снова получаем конфликт. Для того чтобы разрешить его нужно снова посмотреть содержимое файла rebase.sh и убрать метки установленные гитом.
    <br/>
    ![rebase2](./img/13.jpg)
    <br/>
- Продолжаем rebase и получаем сообщение
    <br/>
    ![success](./img/14.jpg)
    <br/>
- Далее нужно сделать push, но git выдаст ошибку т.к. мы пытаемся перезаписать историю, чтобы git позволил это сделать необходимо доабвить флаг -f
    <br/>
    ![error](./img/15.jpg)
    <br/>
- git push -u origin git-rebase -f
    <br/>
    ![force](./img/16.jpg)
    <br/>
- Далее мержим ветку git-rebase в main без конфликтов
    <br/>
    ![merge](./img/17.jpg)

# AKYLBEK UULU ZHUSUP AIN-2-21
labs 10-11-12-13


Tables.sql

    Просто создание таблиц


10 -- Trigger.sql

    1й триггер срабатывает после(after) ввода(insert) новых данных в таблицу ноутбук и вычесляет значение налога, тоесть 10%

    2й триггер срабатывает до(before) ввода(insert) или обновления(upgrade) и просто выводит еще не измененный вид строки таблицы

    3й создается представление view для дальнейшего триггера и создается total pay который вычесляет премию;
        триггер использует WorkerView и при обновлении к зарплате насчитывается премия



11 -- Transaction.sql

    выполнено все то, что задано:
    1) declare @a int = 10, @b int = 15, @c  int =0Если @c >= 0 то вычислить сумму чисел, иначе откат транзакции   
    2) Вставить данные в таблицу клиентов, если не заполнена фамилия клиента – откат транзакции
    3) Вставить данные в таблицу заказов, если есть задолженность по предыдущим заказам, откатить транзакцию 


12 -- Join.sql 

    Объединяет строки таблицы Customers со строками таблицы Orders, где значение поля Customers.Id 
    совпадает с значением поля Orders.CustomerId. В результате будут возвращены все поля из обеих таблиц.


13 -- ImportFiles  

    А в папке импортируемые файлы 13-я лабораторная

#language: ru

Функционал: Тест на проверку возможности заполнения поля Количество при добавлении
Услуги в документ Заказ

Как Администратор я хочу
проверить возможность заполнения поля Количесвто
при добавлении Улуги в документ Заказ 
чтобы выполнить практическое задание

Контекст:
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Тест на проверку возможности заполнения поля Количество при добавлении
Услуги в документ Заказ
* Создание документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
* Заполнение таб части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я разворачиваю строку:
		| 'Код'       | 'Наименование' |
		| '000000036' | 'Услуги'       |
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000037' | 'Доставка'     |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Доставка'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10'


# postgres
## Дано
## chto to

Таблицы Авторов, Книг и Изданий книг. В таблицах приведено
их описание и пример данных.

## Задача

Из совокупности таблиц отобрать:
1. Авторов, переживших некоторое событие. Считаем, что некоторое событие произошло 23-го октября 2077 года.
2. Книги, издававшиеся после смерти автора.

![](https://i.ibb.co/c1hcm9B/image.png)

## Решение

Первая задача
```sh
select full_name from Author where date_death > '2077-10-23';
```
Вторая задача

```sh
SELECT full_name, date_birth, date_death, homeland
FROM Author 
INNER JOIN Book ON Author.id = Book.author_id
INNER JOIN Edition ON Edition.book_id = Book.id
where Edition.date_published > Author.date_death;
```

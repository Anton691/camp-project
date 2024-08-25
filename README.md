# README

## Вторая часть тестового задания (Составить SQL-запрос)
### Решение второй части
#### Мой SQL-запрос:
```sqlite
SELECT countries.title AS title, count() AS "count camps"
FROM camps
         INNER JOIN cities ON camps.city_id = cities.id
         INNER JOIN regions ON cities.region_id = regions.id
         INNER JOIN countries ON regions.country_id = countries.id
GROUP BY countries.title
UNION ALL
SELECT regions.title AS title, count() AS "count camps"
FROM camps
         INNER JOIN cities ON camps.city_id = cities.id
         INNER JOIN regions ON cities.region_id = regions.id
         INNER JOIN countries ON regions.country_id = countries.id
GROUP BY regions.title
UNION ALL
SELECT cities.title AS title, count() AS "count camps"
FROM camps
         INNER JOIN cities ON camps.city_id = cities.id
         INNER JOIN regions ON cities.region_id = regions.id
         INNER JOIN countries ON regions.country_id = countries.id
GROUP BY cities.title
```
#### Пример результата запроса
| title | count camps |
| :--- | :--- |
| Россия | 2 |
| Волгоградская область | 1 |
| Саратовская область | 1 |
| Волгоград | 1 |
| Саратов | 1 |

### Текст задания второй части
>Цель: Составить SQL запрос (без использования его в проекте) для получения
количества турбаз в каждой географической сущности (страна, регион, город).
>
>Пример результата запроса:
```
-------------------------------
Россия 6                      |
Астраханская область 2        |
Волгогрдаска область 4        |
Астрахань 2                   |
Волгоград 3                   |
Волжский 1                    |
-------------------------------
```
>SQL запрос должно быть возможно применить на сгенерированной базе из первой части.

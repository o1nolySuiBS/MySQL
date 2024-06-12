show databases;

use o1noly;

# найти все машины старше 2000 г
select * from cars where year >2000;
# найти все машины младше 2015 г
select * from cars where year <2015;
# найти все машины 2008, 2009, 2010 годов
select * from cars where year between 2008 and 2010;
# найти все машины не с этих годов 2008, 2009, 2010 годов
select * from cars where year not between 2008 and 2010;
# найти все машины год которых совпадает с ценой
select * from cars where year = price;
# найти все машины bmw старше 2014 года
select * from cars where year > 2014 and model like 'bmw';
# найти все машины audi младше 2014 года
select * from cars where year < 2014 and model like 'audi';
# найти первые 5 машин
select * from cars limit 5;
# SELECT * FROM cars ORDER BY year DESC LIMIT 5;
# найти последние 5 машин
select * from cars order by id desc limit 5;
# найти среднее арифметическое цен машин модели KIA
select avg(price) as KiaAvgPrice, model from cars where model in ('kia');
# найти среднее арифметическое цен каждой машиныє
select avg(price) as CarsAvgPrice from cars;
# посчитать количество каждой марки машин
select count(*) as count, model from cars group by model;
# найти марку машины количество которых больше всего
select model, count(*) as count from cars group by model order by count desc limit 1;
# найти все машины в модели которых вторая и предпоследняя буква "а"
select * from cars where model like '_a%' and model like '%a_';
# найти все машины модели которых больше 8 символов
select * from cars where length(model) >8;

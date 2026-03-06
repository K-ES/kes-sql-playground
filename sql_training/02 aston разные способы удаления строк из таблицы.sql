-- 1. СОЗДАНИЕ ТАБЛИЦЫ

CREATE TABLE training.names
(
    id   INT,
    name VARCHAR(100)
);

-- 2. ТЕСТОВЫЕ ДАННЫЕ (С ДУБЛЯМИ)
delete from names;
INSERT INTO training.names VALUES (1,'Name1');
INSERT INTO training.names VALUES (2,'Name3');
INSERT INTO training.names VALUES (3,'Name3');
INSERT INTO training.names VALUES (4,'Name4');
INSERT INTO training.names VALUES (5,'Name4');
INSERT INTO training.names VALUES (6,'Name4');
INSERT INTO training.names VALUES (7,'Name5');


-- 3. ПРОВЕРКА ДАННЫХ
SELECT *
FROM names
ORDER BY id;


-- первый способ удаления, в лоб
DELETE FROM training.names
WHERE id NOT IN
(
    SELECT MAX(id)
    FROM training.names
    GROUP BY name
);


-- через row_number()
DELETE FROM training.names
WHERE id IN
(
    SELECT id
    FROM
    (
        SELECT
            id,
            ROW_NUMBER() OVER(PARTITION BY name ORDER BY id DESC) AS rn
        FROM training.names
    ) t
    WHERE rn > 1
);




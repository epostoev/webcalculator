import pymysql
from config import host, user, password, db_name

def add_class(cursor):
    class_name = input("Введите название класса: ")
    parametr_1 = input("Введите название параметр_1: ")
    parametr_2 = input("Введите название параметр_2: ")
    parametr_3 = input("Введите название параметр_3: ")

    insert_query = """
    INSERT INTO classes (class, parametr_1, parametr_2, parametr_3)
    VALUES (%s, %s, %s, %s)
    """
    cursor.execute(insert_query, (class_name, parametr_1, parametr_2, parametr_3))
    print("Запись добавлена.")

try:
    # Подключаемся к серверу MySQL
    connection = pymysql.connect(
        host=host,
        port=3306,
        user=user,
        password=password,
        db=db_name,
        cursorclass=pymysql.cursors.DictCursor
    )
    print("Успешное подключение...")

    with connection.cursor() as cursor:
        # Создаем базу данных db_class, если она не существует
        cursor.execute("CREATE DATABASE IF NOT EXISTS db_class")
        cursor.execute("USE db_class")

        # Создаем таблицу с указанными полями, если она не существует
        create_table_query = """
        CREATE TABLE IF NOT EXISTS classes (
            class_id INT AUTO_INCREMENT PRIMARY KEY,
            class VARCHAR(255) NOT NULL,
            parametr_1 VARCHAR(255),
            parametr_2 VARCHAR(255),
            parametr_3 VARCHAR(255)
        )
        """
        cursor.execute(create_table_query)

        # Добавляем записи интерактивно
        while True:
            add_class(cursor)
            connection.commit()  # Подтверждаем изменения

            another = input("Хотите добавить еще одну запись? (да/нет): ").strip().lower()
            if another != 'да':
                break

except Exception as ex:
    print("Произошла ошибка...")
    print(ex)
finally:
    if connection:
        connection.close()  # Закрываем соединение

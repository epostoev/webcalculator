import pymysql
from config import host, user, password, db_name

def add_staf_avz(cursor):
    docs_name = input("Введите название документа: ")
    engineer = input("Введите значение  engineer: ")
    senior_engineer = input("Введите значение senior engineer: ")
    lead_engineer = input("Введите значение lead engineer: ")

    insert_query = """
    INSERT INTO staf_avz (docs_name, engineer, senior_engineer, lead_engineer)
    VALUES (%s, %s, %s, %s)
    """
    cursor.execute(insert_query, (docs_name, engineer, senior_engineer, lead_engineer))
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
        CREATE TABLE IF NOT EXISTS staf_avz (
            staf_id INT AUTO_INCREMENT PRIMARY KEY,
            docs_name VARCHAR(255) NOT NULL,
            engineer INT,
            senior_engineer INT,
            lead_engineer INT
        )
        """
        cursor.execute(create_table_query)

        # Добавляем записи интерактивно
        while True:
            add_staf_avz(cursor)
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

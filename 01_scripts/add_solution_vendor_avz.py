import pymysql
from config import host, user, password, db_name

def add_solution_of_venders_avz(cursor):
    vendor_name = input("Введите название solution: ")

    insert_query = """
    INSERT INTO solution_of_venders_avz (solution_of_venders)
    VALUES (%s)
    """
    cursor.execute(insert_query, (vendor_name))
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
        CREATE TABLE IF NOT EXISTS solution_of_venders_avz (
            avz_id INT AUTO_INCREMENT PRIMARY KEY,
            solution_of_venders VARCHAR(255) NOT NULL
        )
        """
        cursor.execute(create_table_query)

        # Добавляем записи интерактивно
        while True:
            add_solution_of_venders_avz(cursor)
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

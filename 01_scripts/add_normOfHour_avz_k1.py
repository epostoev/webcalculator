import pymysql
from config import host, user, password, db_name

def add_docs(cursor):
    docs_name = input("Введите название типа рар-ой док-и: ")
    trp = input("trp (0/1) = ")
    ep = input("ep (0/1) = ")
    presale = input("presale (0/1) = : ")
    tp = input("tp (0/1) = : ")

    insert_query = """
    INSERT INTO docs (docs_name, trp, ep, presale, tp)
    VALUES (%s, %s, %s, %s, %s)
    """
    cursor.execute(insert_query, (docs_name, trp, ep, presale, tp))
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
        CREATE TABLE IF NOT EXISTS docs (
            docs_id INT AUTO_INCREMENT PRIMARY KEY,
            docs_name VARCHAR(255) NOT NULL,
            trp VARCHAR(255) NOT NULL,
            ep VARCHAR(255),
            presale VARCHAR(255),
            tp VARCHAR(255)
        )
        """
        cursor.execute(create_table_query)

        # Добавляем записи интерактивно
        while True:
            add_docs(cursor)
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

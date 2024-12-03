# Подключение к базе данных MySQL
connection = pymysql.connect(
    host="localhost",
    user="root",
    password="159357QWzx",
    database="db_class"
)

try:
    with connection.cursor() as cursor:
        # Создание таблицы postoev_test
        cursor.execute("""
        CREATE TABLE IF NOT EXISTS postoev_test (
            id INT PRIMARY KEY,
            complexity TEXT,
            docs_name TEXT,
            parametr_1 TEXT,
            parametr_2 TEXT,
            parametr_3 TEXT
        )
        """)

        # Запись данных из словаря в таблицу
        for key, value in data_dict.items():
            cursor.execute("""
            INSERT INTO postoev_test (id, complexity, docs_name, parametr_1, parametr_2, parametr_3)
            VALUES (%s, %s, %s, %s, %s, %s)
            """, (key, value['сomplexity'], value['docs_name'], value['parametr_1'], value['parametr_2'], value['parametr_3']))

        # Фиксация изменений
        connection.commit()

        # Проверка записей
        cursor.execute("SELECT * FROM postoev_test")
        rows = cursor.fetchall()

finally:
    # Закрытие соединения
    connection.close()
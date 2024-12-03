import pymysql

def write_to_database(data_dict, db_config):
    """
    Записывает данные из data_dict в таблицы MySQL, создавая новую таблицу для каждой группы.
    """
    connection = pymysql.connect(
        host=db_config['host'],
        user=db_config['user'],
        password=db_config['password'],
        database=db_config['database']
    )

    try:
        with connection.cursor() as cursor:
            # Создаём таблицы для каждой группы
            groups = set(value['group_index'] for value in data_dict.values())
            for group in groups:
                table_name = f'postoev_group_{group}'
                cursor.execute(f"""
                CREATE TABLE IF NOT EXISTS {table_name} (
                    id INT PRIMARY KEY,
                    complexity TEXT,
                    docs_name TEXT,
                    parametr_1 TEXT,
                    parametr_2 TEXT,
                    parametr_3 TEXT
                )
                """)

            # Вставка данных в соответствующие таблицы
            for key, value in data_dict.items():
                table_name = f'postoev_group_{value["group_index"]}'
                cursor.execute(f"""
                INSERT INTO {table_name} (id, complexity, docs_name, parametr_1, parametr_2, parametr_3)
                VALUES (%s, %s, %s, %s, %s, %s)
                """, (
                    key, value['сomplexity'], value['docs_name'],
                    value['parametr_1'], value['parametr_2'], value['parametr_3']
                ))

            connection.commit()
    finally:
        connection.close()

import openpyxl
import re
import pymysql

# Интерактивный ввод для выбора файла и листа
file_path = input("Введите путь к файлу Excel (например, '123.xlsm'): ").strip()
try:
    wb = openpyxl.load_workbook(file_path, data_only=False)  # Открываем файл Excel
    print(f"Файл {file_path} успешно открыт.")
    print("Доступные листы:", wb.sheetnames)
    sheet_name = input("Введите имя листа (например, 'АВЗ АСУТП'): ").strip()
    sheet = wb[sheet_name]  # Получаем указанный лист
    print(f"Лист {sheet_name} успешно открыт.")
except Exception as e:
    print(f"Ошибка при открытии файла или листа: {e}")
    exit()

# Создаем пустой словарь для хранения данных
data_dict = {}

# Читаем диапазоны ячеек A5:A67, B5:B67, C5:C67 для значений docs_name, Complexity и дополнительных значений из B
docs_name_values = [row[0].value for row in sheet['A4:A67']]
complexity_values = [row[0].value for row in sheet['C4:C67']]
additional_values = [row[0].value for row in sheet['B4:B67']]

# Обрабатываем объединенные ячейки в столбцах A, B и C
for i in range(1, len(docs_name_values)):
    if docs_name_values[i] is None:
        docs_name_values[i] = docs_name_values[i - 1]
    if complexity_values[i] is None:
        complexity_values[i] = complexity_values[i - 1]
    if additional_values[i] is None:
        additional_values[i] = additional_values[i - 1]

# Читаем диапазон ячеек D5:F105 и обрабатываем данные
for i, row in enumerate(sheet['D4:F67']):
    parametr_1 = str(row[0].value)
    parametr_2 = str(row[1].value)
    parametr_3 = str(row[2].value)

    docs_name = docs_name_values[i]
    complexity = complexity_values[i]
    additional_value = additional_values[i]

    if additional_value:
        complexity = f"{complexity} ({additional_value})"

    row_dict = {
        'сomplexity': str(complexity),
        'docs_name': str(docs_name),
        'parametr_1': str(parametr_1),
        'parametr_2': str(parametr_2),
        'parametr_3': str(parametr_3),
    }

    data_dict[len(data_dict) + 1] = row_dict

# Функция для замены значений и добавления специальных символов
def update_params_with_format(data_dict):
    for key, value in data_dict.items():
        # Обрабатываем замену D$3, E$3, F$3 для всех параметров
        for param in ['parametr_1', 'parametr_2', 'parametr_3']:
            if param in value:
                if 'D$3' in value[param]:
                    value[param] = value[param].replace('D$3', 'user_parametr_1')
                if 'E$3' in value[param]:
                    value[param] = value[param].replace('E$3', 'user_parametr_2')
                if 'F$3' in value[param]:
                    value[param] = value[param].replace('F$3', 'user_parametr_3')

        # Добавляем форматированные замены для D и E
        if 'parametr_3' in value:
            value['parametr_3'] = re.sub(
                r'\bD\d+', f'@{key}$parametr_1', value['parametr_3']
            )
            value['parametr_3'] = re.sub(
                r'\bE\d+', f'@{key}$parametr_2', value['parametr_3']
            )
        if 'parametr_1' in value:
            value['parametr_1'] = re.sub(
                r'\bD\d+', f'@{key}$parametr_1', value['parametr_1']
            )
            value['parametr_1'] = re.sub(
                r'\bE\d+', f'@{key}$parametr_2', value['parametr_1']
            )
        if 'parametr_2' in value:
            value['parametr_2'] = re.sub(
                r'\bD\d+', f'@{key}$parametr_1', value['parametr_2']
            )
            value['parametr_2'] = re.sub(
                r'\bE\d+', f'@{key}$parametr_2', value['parametr_2']
            )

        # Заменяем "=" на "==" внутри скобок
        for param in ['parametr_1', 'parametr_2', 'parametr_3']:
            if param in value:
                value[param] = re.sub(
                    r'\(([^)]*?)=([^)]*?)\)',
                    lambda m: f'({m.group(1)} == {m.group(2)})',
                    value[param]
                )
                # Добавление пробелов вокруг "+"
                value[param] = re.sub(
                    r'(?<!\s)\+(?!\s)',  # Находит "+" без пробелов перед и после
                    ' + ',               # Заменяет на " + "
                    value[param]
                )
                # Добавление пробелов вокруг ","
                value[param] = re.sub(
                    r'(?<!\s)\,(?!\s)',  # Находит "," без пробелов перед и после
                    ' , ',               # Заменяет на " , "
                    value[param]
                )
                value[param] = re.sub(
                    r'IF',  # Находит "," без пробелов перед и после
                    ' IF ',               # Заменяет на " , "
                    value[param]
                )


# Применяем функцию для обновления
update_params_with_format(data_dict)

# Вывод обновленного словаря
print(data_dict)

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
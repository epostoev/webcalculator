import openpyxl

# Открываем файл Excel
file_path = '123.xlsm'
wb = openpyxl.load_workbook(file_path, data_only=False)  # Важно установить data_only=False

# Получаем нужный лист
sheet = wb['АВЗ АСУТП']

# Создаем пустой список для хранения словарей
data_dict = []

# Читаем диапазоны ячеек A5:A105, B5:B105, C5:C105 для значений docs_name, Complexity и дополнительных значений из B
docs_name_values = [row[0].value for row in sheet['A5:A105']]  # Извлекаем значения из столбца A
complexity_values = [row[0].value for row in sheet['C5:C105']]  # Извлекаем значения из столбца C
additional_values = [row[0].value for row in sheet['B5:B105']]  # Извлекаем значения из столбца B

# Обрабатываем объединенные ячейки в столбцах A, B и C, чтобы распространить значение на все объединенные строки
for i in range(1, len(docs_name_values)):
    if docs_name_values[i] is None:
        docs_name_values[i] = docs_name_values[i - 1]  # Если текущая ячейка пустая (объединенная), копируем значение из предыдущей строки

for i in range(1, len(complexity_values)):
    if complexity_values[i] is None:
        complexity_values[i] = complexity_values[i - 1]  # Если текущая ячейка пустая (объединенная), копируем значение из предыдущей строки

for i in range(1, len(additional_values)):
    if additional_values[i] is None:
        additional_values[i] = additional_values[i - 1]  # Если текущая ячейка пустая (объединенная), копируем значение из предыдущей строки

# Читаем диапазон ячеек D5:F105
for i, row in enumerate(sheet['D5:F105']):
    # Получаем значения для каждого столбца
    parametr_1 = str(row[0].formula if hasattr(row[0], 'formula') and row[0].formula else row[0].value)
    parametr_2 = str(row[1].formula if hasattr(row[1], 'formula') and row[1].formula else row[1].value)
    parametr_3 = str(row[2].formula if hasattr(row[2], 'formula') and row[2].formula else row[2].value)

    # Заменяем D$3 на user_parametr_1 в формуле (если она есть)
    if parametr_1 and 'D$3' in parametr_1:
        parametr_1 = parametr_1.replace('D$3', 'user_parametr_1')

    # Заменяем E$3 на user_parametr_2 в формуле (если она есть)
    if parametr_2 and 'E$3' in parametr_2:
        parametr_2 = parametr_2.replace('E$3', 'user_parametr_2')

    # Заменяем F$3 на user_parametr_3 в формуле (если она есть)
    if parametr_3 and 'F$3' in parametr_3:
        parametr_3 = parametr_3.replace('F$3', 'user_parametr_3')

    # Получаем значение из A5:A105 для текущей строки
    docs_name = docs_name_values[i]  # Получаем соответствующее значение из столбца A

    # Получаем значение из C5:C105 для текущей строки
    complexity = complexity_values[i]  # Получаем соответствующее значение из столбца C

    # Получаем значение из B5:B105 для текущей строки и добавляем его в скобки в поле Complexity
    additional_value = additional_values[i]  # Получаем соответствующее значение из столбца B
    if additional_value:
        complexity = f"{complexity} ({additional_value})"  # Добавляем значение из столбца B в скобках

    # Формируем строку в нужном формате для словаря
    row_dict = {
        'Complexity': str(complexity),  # Добавляем значение из столбца C с дополнительным значением из B
        'docs_name': str(docs_name),  # Преобразуем значение в строку для consistency
        'parametr_1': str(parametr_1),  # Преобразуем значение в строку
        'parametr_2': str(parametr_2),  # Преобразуем значение в строку
        'parametr_3': str(parametr_3)  # Преобразуем значение в строку
    }

    # Добавляем словарь в общий список
    data_dict.append(row_dict)

# Проверяем результат (выводим на экран)
for item in data_dict:
    print(item)

# Записываем данные в файл, если нужно
with open('output.txt', 'w', encoding='utf-8') as file:
    for row in data_dict:
        row_str = ';'.join([row['Complexity'], row['docs_name'], row['parametr_1'], row['parametr_2'], row['parametr_3']])
        file.write(row_str + '\n')

print("Данные успешно записаны в файл output.txt")

import openpyxl

# Открываем файл Excel
file_path = '123.xlsm'
wb = openpyxl.load_workbook(file_path, data_only=True)

# Получаем нужный лист
sheet = wb['АВЗ АСУТП']

# Читаем диапазон ячеек D5:F105
data = []
for row in sheet['D5:F105']:
    data.append([cell.value for cell in row])

# Выводим данные через input (например, выводим их строкой)
# Преобразуем данные в строку для удобства
data_str = '\n'.join(['\t'.join(map(str, row)) for row in data])

# Выводим данные
print(data_str)

# Если нужно, можно использовать input() для получения ответа пользователя:
# input("Нажмите Enter для завершения вывода данных...")

import openpyxl

# Открываем файл Excel
file_path = '123.xlsm'
wb = openpyxl.load_workbook(file_path, data_only=False)  # Важно установить data_only=False

# Получаем нужный лист
sheet = wb['АВЗ АСУТП']

# Читаем диапазон ячеек D5:F105
data = []
for row in sheet['D5:F105']:
    data.append([cell.formula if cell.formula else cell.value for cell in row])  # Используем .formula для получения формул

# Преобразуем данные в строку для удобства
data_str = '\n'.join(['\t'.join(map(str, row)) for row in data])

# Выводим данные
print(data_str)

# Если нужно, можно использовать input() для получения ответа пользователя:
# input("Нажмите Enter для завершения вывода данных...")
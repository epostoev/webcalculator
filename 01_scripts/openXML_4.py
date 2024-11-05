import openpyxl

# Открываем файл Excel
file_path = '123.xlsm'
wb = openpyxl.load_workbook(file_path, data_only=False)  # Важно установить data_only=False

# Получаем нужный лист
sheet = wb['АВЗ АСУТП']

# Открываем текстовый файл для записи
with open('output.txt', 'w', encoding='utf-8') as file:
    # Читаем диапазон ячеек D5:F105
    for row in sheet['D5:F105']:
        # Составляем строку с данными, разделёнными точкой с запятой
        row_data = [str(cell.formula if hasattr(cell, 'formula') and cell.formula else cell.value) for cell in row]
        row_str = ';'.join(row_data)

        # Записываем строку в файл и добавляем новую строку
        file.write(row_str + '\n')

print("Данные успешно записаны в файл output.txt")

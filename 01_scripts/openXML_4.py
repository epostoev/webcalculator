import openpyxl

book = openpyxl.open("123.xlsm", read_only=True)
sheet = book['АВЗ АСУТП']
docs_name_values = []
complexity_name_value = []
additional_values = []
parametr_1 = []
parametr_2 = []
parametr_3 = []

print(sheet[1][0].value)

for row in range(5, 106):

    docs_name_values.append(sheet[row][0].value)
    complexity_name_value.append(sheet[row][1].value)
    additional_values.append(sheet[row][2].value)
    parametr_1.append(sheet[row][3].value)
    parametr_2.append(sheet[row][4].value)
    parametr_3.append(sheet[row][5].value)

for i in range(1, len(docs_name_values)):
    if docs_name_values[i] is None:
        docs_name_values[i] = docs_name_values[i - 1]

for i in range(1, len(additional_values)):
    if additional_values[i] is None:
        additional_values[i] = additional_values[i -1]

# Формируем строку в нужном формате для словаря


print(docs_name_values)
print(additional_values)
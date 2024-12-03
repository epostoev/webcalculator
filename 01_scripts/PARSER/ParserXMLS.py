import re

def parse_sheet(sheet):
    """
    Извлекает данные из листа Excel и возвращает словарь data_dict,
    динамически обрабатывая группы столбцов (D-F, H-J, M-O и т.д.) до пустой группы.
    """
    data_dict = {}

    docs_name_values = [row[0].value for row in sheet['A4:A67']]
    complexity_values = [row[0].value for row in sheet['C4:C67']]
    additional_values = [row[0].value for row in sheet['B4:B67']]

    # Обработка объединенных ячеек
    for i in range(1, len(docs_name_values)):
        if docs_name_values[i] is None:
            docs_name_values[i] = docs_name_values[i - 1]
        if complexity_values[i] is None:
            complexity_values[i] = complexity_values[i - 1]
        if additional_values[i] is None:
            additional_values[i] = additional_values[i - 1]

    # Базовые индексы для парсинга
    column_start = ord('D')  # Начальный столбец ('D')
    column_step = 4  # Шаг между группами (3 столбца + 1 пропуск)

    group_index = 1
    while True:
        # Определяем текущую группу столбцов
        start_col = chr(column_start)
        end_col = chr(column_start + 2)

        # Проверяем наличие данных в группе столбцов
        has_data = False
        for row in sheet[f'{start_col}4:{end_col}67']:
            if any(cell.value for cell in row):
                has_data = True
                break

        if not has_data:
            break  # Если текущая группа пуста, выходим из цикла

        # Парсим текущую группу столбцов
        for i, row in enumerate(sheet[f'{start_col}4:{end_col}67']):
            parametr_1 = str(row[0].value)
            parametr_2 = str(row[1].value)
            parametr_3 = str(row[2].value)

            # Проверяем, если все ячейки пустые, пропускаем строку
            if not any([parametr_1, parametr_2, parametr_3]):
                continue

            docs_name = docs_name_values[i]
            complexity = f"{complexity_values[i]} ({additional_values[i]})" if additional_values[i] else complexity_values[i]

            row_dict = {
                'сomplexity': str(complexity),
                'docs_name': str(docs_name),
                'parametr_1': str(parametr_1),
                'parametr_2': str(parametr_2),
                'parametr_3': str(parametr_3),
                'group_index': group_index  # Указываем группу для идентификации
            }

            data_dict[len(data_dict) + 1] = row_dict

        # Переходим к следующей группе столбцов
        column_start += column_step
        group_index += 1

    return data_dict



def update_params_with_format(data_dict):
    """
    Обновляет значения в словаре data_dict по заданным правилам для всех групп столбцов.
    """
    for key, value in data_dict.items():
        for param in ['parametr_1', 'parametr_2', 'parametr_3']:
            if param in value:
                if 'D$3' in value[param]:
                    value[param] = value[param].replace('D$3', 'user_parametr_1')
                if 'E$3' in value[param]:
                    value[param] = value[param].replace('E$3', 'user_parametr_2')
                if 'F$3' in value[param]:
                    value[param] = value[param].replace('F$3', 'user_parametr_3')

                # Форматированные замены для всех параметров
                value[param] = re.sub(r'\bD\d+', f'@{key}$parametr_1', value[param])
                value[param] = re.sub(r'\bE\d+', f'@{key}$parametr_2', value[param])
                value[param] = re.sub(r'\bF\d+', f'@{key}$parametr_3', value[param])
                value[param] = re.sub(r'\(([^)]*?)=([^)]*?)\)', lambda m: f'({m.group(1)} == {m.group(2)})', value[param])
                value[param] = re.sub(r'(?<!\s)\+(?!\s)', ' + ', value[param])
                value[param] = re.sub(r'(?<!\d),(?!\d)', ' , ', value[param])
                value[param] = re.sub(r'\bIF\b', ' IF ', value[param])

    return data_dict


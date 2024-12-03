from openEXCEL import read_excel
from ParserXMLS import parse_sheet, update_params_with_format
from WriteSUBD import write_to_database

# Конфигурация базы данных
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '159357QWzx',
    'database': 'db_class',
}

def main():
    # Ввод данных от пользователя
    file_path = input("Введите путь к файлу Excel: ").strip()
    sheet_name = input("Введите имя листа: ").strip()

    # Открытие Excel
    sheet = read_excel(file_path, sheet_name)

    # Парсинг данных
    data_dict = parse_sheet(sheet)

    # Обновление данных
    updated_data = update_params_with_format(data_dict)

    # Запись в базу данных
    write_to_database(updated_data, db_config)

    # Вывод обновленного словаря
    print(data_dict)

if __name__ == "__main__":
    main()

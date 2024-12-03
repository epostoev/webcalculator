import openpyxl

def read_excel(file_path, sheet_name):
    """
    Открывает файл Excel и возвращает указанный лист.
    """
    try:
        wb = openpyxl.load_workbook(file_path, data_only=False)
        sheet = wb[sheet_name]
        return sheet
    except Exception as e:
        raise Exception(f"Ошибка при открытии файла или листа: {e}")
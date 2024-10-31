from tkinter import filedialog, Tk
import pandas as pd
from tkinter.simpledialog import askstring

# Скрываем главное окно tkinter
root = Tk()
root.withdraw()

# Открываем диалоговое окно для выбора файла
file_path = filedialog.askopenfilename(
    title="Выберите файл Excel",
    filetypes=[("Excel files", "*.xlsm *.xlsx *.xls")]
)

if file_path:  # Проверяем, был ли выбран файл
    # Запрашиваем название листа у пользователя
    sheet_name = askstring("Введите название листа", "Введите название листа, который хотите распарсить:")

    try:
        # Загружаем указанный лист
        data = pd.read_excel(file_path, sheet_name=sheet_name)

        # Выводим первые несколько строк и информацию о DataFrame
        print(data.head())
        print(data.info())  # Покажет информацию о столбцах и их количестве
    except Exception as e:
        print(f"Произошла ошибка: {e}")
else:
    print("Файл не выбран.")
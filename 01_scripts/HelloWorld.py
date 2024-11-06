import flet as ft

def main(page: ft.Page):
    page.title = "Hello, World!"
    page.add(ft.Text("Welcome to World"))

ft.app(target=main)

print("HelloWorld")

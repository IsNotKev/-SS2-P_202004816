import os

def ejecutar(name):
    script_dir = os.path.dirname(os.path.abspath(__file__))
    sql_file = os.path.join(script_dir, "scripts", name + ".sql")
    os.system(f"sqlcmd -S LAPTOP-E940QTBH\\SQLEXPRESS -i {sql_file}")

def consultar(name):
    script_dir = os.path.dirname(os.path.abspath(__file__))
    sql_file = os.path.join(script_dir, "scripts", "consultas", name + ".sql")
    output_dir = os.path.join(script_dir, "outputs")
    output_file = os.path.join(output_dir, name + ".txt")

    # Verificar si la carpeta de salida existe, si no, crearla
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    # Ejecutar la consulta y guardar la salida en un archivo
    os.system(f"sqlcmd -S LAPTOP-E940QTBH\\SQLEXPRESS -i {sql_file} -o {output_file}")

    # Abrir automáticamente el archivo de salida
    os.system(f"start {output_file}")

def borrar_modelo():
    os.system("cls")
    print("--------- BORRAR MODELO ---------")
    ejecutar("borrar")
    print("Modelo borrado con éxito. Presione enter para continuar...")
    input()

def crear_modelo():
    os.system("cls")
    print("--------- CREAR MODELO ---------")
    ejecutar("crear")
    print("Modelo creado con éxito. Presione enter para continuar...")
    input()

def extraer_informacion():
    os.system("cls")
    print("--------- EXTRAER INFORMACIÓN ---------")
    ejecutar("extraer")
    print("Información extraída con éxito. Presione enter para continuar...")
    input()

def cargar_informacion():
    os.system("cls")
    print("--------- CARGAR INFORMACIÓN ---------")
    ejecutar("cargar")
    print("Información cargada con éxito. Presione enter para continuar...")
    input()

def realizar_consulta():
    opcion2 = ""
    while opcion2 != "11":
        os.system("cls")
        print("--------- CONSULTAS ----------")
        print("------------------------------")
        print("| 1. Consulta 1              |")
        print("| 2. Consulta 2              |")
        print("| 3. Consulta 3              |")
        print("| 4. Consulta 4              |")
        print("| 5. Consulta 5              |")
        print("| 6. Consulta 6              |")
        print("| 7. Consulta 7              |")
        print("| 8. Consulta 8              |")
        print("| 9. Consulta 9              |")
        print("| 10. Consulta 10            |")
        print("| 11. Volver                 |")
        print("------------------------------")
        print("\nSeleccione una opción: ")
        opcion2 = input()

        if opcion2.isdigit() and 1 <= int(opcion2) <= 10:
            os.system("cls")
            print("--------- CONSULTA", opcion2, "---------")
            consultar(opcion2)
            print("Consulta realizada con éxito. Presione enter para continuar...")
            input()
        elif opcion2 == "11":
            print("Regresando...")
        else:
            print("\nOpción no válida. Presione enter para continuar...")
            input()

def menu_principal():
    opcion = ""
    while opcion != "6":
        os.system("cls")
        print("--------- PRÁCTICA 1 ---------")
        print("------------------------------")
        print("| 1. Borrar modelo           |")
        print("| 2. Crear modelo            |")
        print("| 3. Extraer información     |")
        print("| 4. Cargar información      |")
        print("| 5. Realizar consultas      |")
        print("| 6. Salir                   |")
        print("------------------------------")
        print("\nSeleccione una opción: ")

        opcion = input()

        if opcion == "1":
            borrar_modelo()
        elif opcion == "2":
            crear_modelo()
        elif opcion == "3":
            extraer_informacion()
        elif opcion == "4":
            cargar_informacion()
        elif opcion == "5":
            realizar_consulta()
        elif opcion == "6":
            os.system("cls")
            print("\nSaliendo...\n")
        else:
            print("\nOpción no válida. Presione enter para continuar...")
            input()

if __name__ == "__main__":
    menu_principal()

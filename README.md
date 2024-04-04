# XML 

## Porqué estudiar XML
Es un lenguaje con n formato simple basado en texto para representar la información de manera estructurada.
XML es una herramienta independiente de software y hardware para almacenar y transportar datos.

## Introducción

XML (Extensible Markup Language) fue creado para almacenar y transportar datos de manera estructurada y es bastante autodescriptivo. Se emplea extensamente en la elaboración de documentos legibles tanto para personas como para máquinas.
- Tiene información del remitente.
- Tiene información del receptor.
- Tiene un encabezado
- Tiene un cuerpo de mensaje.

[Web](https://www.w3schools.com/xml/xml_whatis.asp)

## Sintaxis Básica

- **Elementos:** Los bloques de construcción fundamentales de un documento XML son los elementos. Los elementos están marcados por etiquetas de apertura y cierre, como `<elemento>` y `</elemento>`.
- **Atributos:** Dentro de las etiquetas de apertura, los elementos especifican información adicional a través de atributos como `<elemento atributo="valor">`.
- **Texto:** Los datos reales que se están representando son proporcionados por el texto dentro de los elementos XML.
- **Comentarios:** La sintaxis `<!-- comentario -->` se utiliza para agregar comentarios dentro del documento XML.

![Foto](https://patriciaemiguel.com/assets/2021-01-08-xml.png)

## Ejemplo de Documento XML

```xml
<?xml version="1.0" encoding="UTF-8"?>
<libreria>
    <libro categoria="Ficción">
        <titulo>El Señor de los Anillos</titulo>
        <autor>J.R.R. Tolkien</autor>
        <precio>20.00</precio>
    </libro>
    <libro categoria="Fantasía">
        <titulo>Harry Potter y la Piedra Filosofal</titulo>
        <autor>J.K. Rowling</autor>
        <precio>15.00</precio>
    </libro>
</libreria>
```

***
***



# Python
![Foto](https://www.tuexperto.com/wp-content/uploads/2023/03/claves-de-python.jpg)

## Porquè estudiar Python
Python es un lenguaje de programación de los más importantes en la actualidad, ya que esta en pleno crecimiento con el boom de las IA's, muchas empresas confia en este lenguaje para el desarrollo del back end. También trabaja con multiples aplicaciones y campos que crecen continuamente. Es un lenguaje fácil de aprender y sin necesidad de complilar.

## Introducción

Python es un lenguaje de programación de alto nivel, interpretado y de propósito general. Es conocido por su sintaxis clara y legible, así como por su amplia gama de bibliotecas y frameworks que lo hacen adecuado para una variedad de aplicaciones, desde desarrollo web hasta análisis de datos y aprendizaje automático.

Se trata de un lenguaje de programación multiparadigma, ya que soporta parcialmente la orientación a objetos, programación imperativa y, en menor medida, programación funcional. Es un lenguaje interpretado, dinámico y multiplataforma.

[w3Shool Python](https://www.w3schools.com/python/python_intro.asp)

## Sintaxis básica

- **Variables y Tipos de Datos:** 
```python
# Variables
variable = valor
# Tipos de datos
int = 42
float = 3.14
String = "Hola, mundo!"
bool = True
```
- **Operadores:** 
```python
# Operadores aritméticos
suma = 2 + 3
resta = 5 - 2
multiplicacion = 3 * 4
division = 10 / 2
modulo = 10 % 3
potencia = 2 ** 3

# Operadores de comparación
igual = (2 == 2)
distinto = (3 != 2)
mayor_que = (5 > 3)
menor_que = (4 < 6)
mayor_o_igual = (4 >= 3)
menor_o_igual = (3 <= 5)

# Operadores lógicos
and_logico = True and False
or_logico = True or False
not_logico = not True
```
- **Estructura de control:** 
```python
# Condicionales
if condicion:
    # código si la condición es verdadera
elif otra_condicion:
    # código si la otra condición es verdadera
else:
    # código si ninguna condición es verdadera

# Bucles
# Bucle while
while condicion:
    # código a ejecutar mientras la condición sea verdadera

# Bucle for
for elemento in iterable:
    # código a ejecutar para cada elemento en el iterable

# Interrupciones y saltos
continue  # Salta a la siguiente iteración del bucle

# Manejo de excepciones
try:
    # código que puede generar una excepción
except TipoDeExcepcion:
    # código a ejecutar si ocurre la excepción
finally:
    # código opcional que se ejecuta siempre, haya excepción o no

```

- **Listas y diccionarios:** 
```python
# Listas
lista = [1, 2, 3, 4, 5]

# Tuplas
tupla = (1, 2, 3, 4, 5)

# Conjuntos (sets)
conjunto = {1, 2, 3, 4, 5}

# Diccionarios
diccionario = {'clave1': valor1, 'clave2': valor2}

```
- **Manupulación cadena:** 
```python
# Concatenación de cadenas
cadena_concatenada = "Hola" + " " + "mundo"

# Interpolación de cadenas
nombre = "Juan"
mensaje = f"Hola, {nombre}!"

# Métodos de cadenas
longitud = len(cadena)
mayusculas = cadena.upper()
minusculas = cadena.lower()

```

## Ejemplo de Código Python

```python
try: 
    if not args.path:
        fichero = "UF3NF1A3-categories.csv"
    else:
        fichero=args.path
    ruta = os.path.dirname(__file__)
    rutaFichero = os.path.join(ruta, fichero)
    split = os.path.splitext(fichero)
    extension = split[1]
    formato = "%Y-%m-%d %H:%M:%S.%f"
    categorias = list()
    
    print(f"Vamos a trabajar con el fichero {fichero}")
    
    try:
        archivo = open(rutaFichero,"r")
        if extension == ".csv":
            print("Cargando CSV...")
            for cat in archivo:
                category = cat.split(",")
                categoria={
                    "id": int(category[0]),
                    "url": category[1],
                    "category": category[2],
                    "date": datetime.datetime.strptime(category[3], formato),
                }
                categorias.append(categoria)
        else:
            raise NameError("Error:formato incorrecto ")
    except NameError as error:
            print(error)
    except:
        raise NameError("Error en cargar datos.")
    finally:
        archivo.close()
except FileNotFoundError as error:
    print(error)
except Exception as error:
    print(f"Error general en abrir el fichero.{error}")
```

***
***
# XML DOM 

## Introducción 

La interfaz de programación para documentos XML y HTML es el DOM (Document Object Model). Explica la lógica de organización de documentos y cómo se accede y manipula dinámicamente su contenido. En XML, el DOM estructura los elementos del documento en forma de árbol de nodos, con cada nodo representando un elemento, atributo o texto en el documento. Se puede hacer con Python, java y otros.

![foto](https://image.slidesharecdn.com/understandingxmldom-120525121552-phpapp02/95/understanding-xml-dom-6-728.jpg?cb=1337948557)

### Pagina de referencia 

[Implementación mínima del DOM](https://docs.python.org/es/3/library/xml.dom.minidom.html)

[Api-Dom](https://docs.python.org/3/library/xml.dom.html)

## Utilizando XML DOM

1. Podemos utilizar el módulo `xml.dom.minidom` en Python para trabajar con XML DOM. Proporciona una implementación mínima de documentos DOM para trabajar con XML en Python este módulo.

```python
import xml.dom.minidom
```
2. Para comenzar a trabajar con un documento XML utilizando DOM, primero necesitamos crear un objeto DOM.Cargar un documento XML: Cargar un objeto DOM con un documento XML utilizando la función `parse()`.

```python
dom = xml.dom.minidom.parse("documento.xml")
```

3. Acceder a los nodos: Acceder a los nodos y atributos del documento utilizando métodos como `getElementsByTagName()` y `getAttribute()`.

```python
# Obtener todos los elementos con la etiqueta "elemento"
elementos = dom.getElementsByTagName("elemento")

# Obtener el primer hijo del elemento raíz
primer_hijo = dom.firstChild
```

4. Modificar el documento: Añadir o cambiar elementos en el documento utilizando los métodos`createElement()` y `appendChild()`.

```python
# Agregar un nuevo elemento al documento
nuevo_elemento = dom.createElement("nuevo_elemento")
dom.firstChild.appendChild(nuevo_elemento)

# Modificar el valor de un atributo
elemento.setAttribute("atributo", "nuevo_valor")

# Eliminar un nodo del documento
elemento_padre.removeChild(elemento_hijo)
```









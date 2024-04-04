# Apuntes sobre GitHub y Markdown

## GitHub

GitHub es una plataforma de desarrollo colaborativo que utiliza el sistema de control de versiones Git. Aquí se pueden alojar proyectos de software, seguir el trabajo de otros desarrolladores, y colaborar en proyectos de código abierto.

### Conceptos Básicos

- **Repositorio:** Es un espacio donde se almacena un proyecto junto con su historial de cambios.
- **Commit:** Es un registro de cambios en un repositorio. Cada commit tiene un mensaje descriptivo que resume los cambios realizados.
- **Branch:** Es una versión paralela del repositorio principal. Se utiliza para desarrollar nuevas funcionalidades sin afectar la rama principal.
- **Pull Request:** Es una solicitud para fusionar cambios de una rama a otra. Permite revisar y discutir los cambios antes de fusionarlos.

### Comandos Básicos de Git

- `git init`: Inicializa un nuevo repositorio Git.
- `git add <archivo>`: Agrega un archivo al área de preparación.
- `git commit -m "<mensaje>"`: Registra los cambios en el repositorio con un mensaje descriptivo.
- `git push`: Envía los cambios locales al repositorio remoto.
- `git pull`: Obtiene y fusiona los cambios del repositorio remoto en el repositorio local.
- `git clone <url>`: Clona un repositorio remoto en el repositorio local.

## Markdown

Markdown es un lenguaje de marcado ligero que se utiliza para formatear texto de manera sencilla y legible. Es ampliamente utilizado en la documentación de proyectos, foros, y sitios web.

### Sintaxis Básica

- **Encabezados:** Se utilizan `#` para crear encabezados. Cuantos más `#` se agreguen, más pequeño será el encabezado.
  ```markdown
  # Encabezado 1
  ## Encabezado 2
  ### Encabezado 3

  # Titulo1
texto

## Titulo secundario
texto
### titulo 3
#### titulo 4
* Lista
  - Listas2
    + Listas3
* Listas

1. lista
2. lista

Las **Negrita** y las *cursivas*

las __negritas__ y las _cursivas_

***cursivas y negritas***

___Cursivas y negritas___


***
---

>Esto es una cita
>
>>>Esto es otra cita 

Para insertar codigo

`print("hola mundo")`

```js
let age = prompt("enter your age");

if (Age >=18)
    document.write("You are an adult");
else
    document.write("You are NOT an adult");
```

~~~
let age = prompt("enter your age");

if (Age >=18)
    document.write("You are an adult");
else
    document.write("You are NOT an adult");
~~~


link
[Mi web] (https://moure.dev)


imagen

![Foto]()


\*texto escape

tabla con html puro

<table>
    <tr>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>edad</th>
    </tr>
    <tr>
        <th>tina<th>
        <th>tomas</th>
        <th>35</th>
    </tr>
</table>
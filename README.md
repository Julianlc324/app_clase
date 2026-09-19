# Mercado Campesino

## Integrantes y pantallas

| Integrante | Rama | Pantalla |
|---|---|---|
| Julián | feature/julian | Lista de productos |
| Andrés | feature/andres | Detalle del producto |

## Flujo de navegación

El flujo de la aplicación estará compuesto por dos pantallas.

Lista de productos - Julián
        |
        | El usuario selecciona un producto
        v
Detalle del producto - Andrés
        |
        | El usuario presiona regresar
        v
Lista de productos - Julián

## Tabla de navegación

| Desde | Hacia | Acción del usuario | Método de Navigator | Datos que viajan | Pila después del salto |
|---|---|---|---|---|---|
| Lista de productos | Detalle del producto | El usuario selecciona un producto de la lista | `Navigator.push` porque se abre una nueva pantalla conservando la anterior | Información del producto seleccionado | Lista de productos → Detalle del producto |
| Detalle del producto | Lista de productos | El usuario presiona regresar | `Navigator.pop` porque se cierra la pantalla actual | Ninguno | Lista de productos |

## Decisiones

- La pantalla desarrollada por Julián será la pantalla inicial y mostrará la lista de productos disponibles.
- La pantalla desarrollada por Andrés mostrará el detalle del producto seleccionado.
- Se utilizará `Navigator.push` cuando el usuario seleccione un producto para abrir la pantalla de detalle.
- La pantalla de lista permanecerá debajo de la pantalla de detalle en la pila de navegación.
- La información del producto seleccionado viajará desde la pantalla de Julián hacia la pantalla de Andrés.
- Se utilizará `Navigator.pop` para cerrar la pantalla de detalle y regresar a la lista de productos.

## Cambios respecto al diseño

Por el momento no se han realizado cambios respecto al diseño inicial.
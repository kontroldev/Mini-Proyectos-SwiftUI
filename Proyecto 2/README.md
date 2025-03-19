# 🎌 Guess The Flag - Mini Proyecto SwiftUI

Este proyecto es una implementación del juego **Guess The Flag**, desarrollado con **SwiftUI**. La aplicación consiste en mostrar al usuario tres banderas y pedirle que toque la correcta según el país indicado. Es un ejercicio ideal para seguir aprendiendo el uso de vistas, `@State`, lógica de interacción y diseño visual en SwiftUI.

---

##  Funcionalidades Implementadas

### Parte 1 - Construcción básica del juego
- Uso de `VStack` y `ForEach` para estructurar el contenido.
- Añadido de imágenes como botones (`Image + Button`).
- Lógica básica para detectar qué bandera se ha pulsado.
- Aplicación de estilos visuales: `.clipShape(.capsule)` y `.shadow()` para las imágenes.
- Uso de `@State` para gestionar el estado de las variables del juego (`countries`, `correctAnswer`, etc.).

### Parte 2 - Lógica de juego y gestión de estado
- Añadido sistema de puntuación con variable `@State score`.
- Implementación de `.alert()` para mostrar si la respuesta fue correcta o incorrecta.
- Mensaje personalizado en la alerta indicando el resultado.
- Función `askQuestion()` para recargar nuevas banderas después de cada respuesta.
- Diseño más estructurado con tipografías jerarquizadas (`.font(.subheadline)`, `.font(.largeTitle)`).

---

## ✨ Mejora Extra

En esta tercera parte hemos añadido mejoras visuales y estructurales para enriquecer aún más el proyecto:

- Aplicación de un **fondo con `RadialGradient`**, creando un diseño más atractivo.
- Separación visual del contenido dentro de un panel con `.background(.regularMaterial)` y `.clipShape(.rect(cornerRadius: 20))`.
- Jerarquización visual de textos mediante `.foregroundStyle(.secondary)` y diferentes niveles de fuente y peso tipográfico.
- Añadido marcador dinámico en pantalla: `"Score: \(score)"`.

### 📷 Capturas del resultado final:
<p align="center">
  <img src="GuessTheFlag_1.png" alt="Guess The Flag - Pantalla principal" width="300"/>
  <img src="GuessTheFlag_2.png" alt="Guess The Flag - Botones estilizados" width="300"/>
  <img src="GuessTheFlag_3.png" alt="Guess The Flag - Alerta de resultado" width="300"/>
</p>

*(Reemplaza las rutas de las imágenes con las tuyas una vez las subas al repositorio)*

---

## 📌 Tecnologías y conceptos utilizados

- SwiftUI (`@State`, `Button`, `Image`, `VStack`, `ForEach`)
- Tipografías y estilos visuales (`.font()`, `.foregroundStyle()`, `.shadow()`)
- Vistas reactivas y control de estado
- Funciones reutilizables (`flagTapped()` y `askQuestion()`)

---


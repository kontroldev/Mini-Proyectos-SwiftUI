# Conversor de Tiempo con SwiftUI

Esta aplicación es un conversor de unidades de tiempo construido con SwiftUI. Permite convertir entre segundos, minutos, horas y días. La idea es convertir el valor de entrada a una unidad base (segundos) y luego transformarlo a la unidad deseada, simplificando la lógica de conversión.

## Descripción

La aplicación consta de una interfaz sencilla basada en un `Form` que contiene:
- **Un TextField:** para que el usuario ingrese un valor numérico.
- **Dos Pickers:** uno para seleccionar la unidad de entrada y otro para la unidad de salida.
- **Una vista de texto:** que muestra el resultado de la conversión, formateado adecuadamente.

El proceso de conversión se realiza siguiendo estos pasos:
1. Convertir el valor de entrada (String) a `Double`.
2. Multiplicar por el factor de conversión correspondiente a la unidad de entrada para obtener el valor en segundos.
3. Dividir entre el factor de la unidad de salida para obtener el resultado final.

## Tecnologías y Herramientas

- **SwiftUI:** para la construcción de la interfaz de usuario.
- **Xcode:** para desarrollar y ejecutar la aplicación.

## Estructura del Código

El archivo principal `ContentView.swift` incluye:
- **Variables de Estado (`@State`):** para almacenar el valor ingresado y las unidades seleccionadas.
- **Arrays:**
  - `units`: contiene las cadenas con los nombres de las unidades ("Segundos", "Minutos", "Horas", "Días").
  - `conversionFactors`: almacena los factores de conversión a segundos para cada unidad (1, 60, 3600, 86400).
- **Propiedad Computada:** que realiza la conversión de unidades:
  ```swift
  var outputValue: Double {
      let input = Double(inputValue) ?? 0.0
      let valueInSeconds = input * conversionFactors[inputUnit]
      return valueInSeconds / conversionFactors[outputUnit]
  }
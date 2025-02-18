//
//  ContentView.swift
//  challenger1
//
//  Created by Raúl Gallego Alonso on 18/2/25.
//

import SwiftUI

struct ContentView: View {
    // Estados para almacenar el valor de entrada y las unidades seleccionadas
    @State private var inputValue = ""
    @State private var inputUnit = 0
    @State private var outputUnit = 0
    
    // Array de unidades de tiempo
    let units = ["Segundos", "Minutos", "Horas", "Días"]
    // Factores de conversión a segundos:
    // - 1 segundo = 1 segundo
    // - 1 minuto = 60 segundos
    // - 1 hora = 3600 segundos
    // - 1 día = 86400 segundos
    let conversionFactors: [Double] = [1.0, 60.0, 3600.0, 86400.0]
    
    // Computada que realiza la conversión:
    // - Convierte la entrada de String a Double (si falla, toma 0)
    // - Multiplica por el factor de la unidad de entrada para obtener el valor en segundos
    // - Divide entre el factor de la unidad de salida para obtener el resultado final
    var outputValue: Double {
        let input = Double(inputValue) ?? 0.0
        let valueInSeconds = input * conversionFactors[inputUnit]
        return valueInSeconds / conversionFactors[outputUnit]
    }
    
    var body: some View {
        NavigationView {
            Form {
                // Sección para introducir el valor numérico
                Section(header: Text("Valor de entrada")) {
                    TextField("Introduce un valor", text: $inputValue)
                        .keyboardType(.decimalPad)
                }
                
                // Sección para elegir la unidad de entrada
                Section(header: Text("Unidad de entrada")) {
                    Picker("Elige una unidad", selection: $inputUnit) {
                        ForEach(0..<units.count, id: \.self) { index in
                            Text(units[index])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                // Sección para elegir la unidad de salida
                Section(header: Text("Unidad de salida")) {
                    Picker("Elige una unidad", selection: $outputUnit) {
                        ForEach(0..<units.count, id: \.self) { index in
                            Text(units[index])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                // Sección para mostrar el resultado de la conversión
                Section(header: Text("Resultado")) {
                    Text(outputValue.formatted())
                }
            }
            .navigationTitle("Conversor de Tiempo")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}

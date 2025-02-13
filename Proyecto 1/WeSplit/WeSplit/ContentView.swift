//
//  ContentView.swift
//  WeSplit
//
//  Created by Raúl Gallego Alonso on 12/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0 // saldo de la cuenta por defecto.
    @State private var numberOfPeople = 2 // numero minimo de personas por defecto.
    @State private var tipPercentage = 20 // el porcentaje por defecto de la propina.
    
    let tipPercentages = [10, 15, 20, 25, 0] // porcentajes de propina.
    
    //calculando el total de personas.
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    
    var body: some View {
        NavigationStack { // Contenedor principal de navegación en SwiftUI
            Form {
                Section {
                    // Campo de texto para ingresar el monto de la cuenta, formateado como moneda.
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    // Se enlaza con `checkAmount` y usa la moneda del sistema por defecto.
                        .keyboardType(.decimalPad) // con esto forzamos a poner el teclado de numeros
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink) // Convierte el Picker en una nueva pantalla dentro del NavigationStack
                }
                
                Section("How much do you want to tip?") {
                    Picker("tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                // Muestra la contidad ingresada con el formato de moneda correspondiente.
                // Esto sirve para visualizar el valor introducido antes de realizar cálculos adicionales.
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    // Muestra el saldo ingresado con formato de moneda.
                }
            }
            .navigationTitle("WeSplit")
        }
    }
}


#Preview {
    ContentView() // Activa la vista previa en Xcode sin necesidad de ejecutar la app en un simulador
}

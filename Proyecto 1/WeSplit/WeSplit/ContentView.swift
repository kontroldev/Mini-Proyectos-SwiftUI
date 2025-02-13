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
    
    var body: some View {
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
                // Muestra la contidad ingresada con el formato de moneda correspondiente.
                // Esto sirve para visualizar el valor introducido antes de realizar cálculos adicionales.
                Section {
                    Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
        }
    }
}

#Preview {
    ContentView() // Activa la vista previa en Xcode sin necesidad de ejecutar la app en un simulador
}

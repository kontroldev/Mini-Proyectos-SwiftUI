//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Raúl Gallego Alonso on 19/2/25.
//

import SwiftUI


// MARK: - ¿Qué es @State?
// En SwiftUI, @State se usa para crear variables que pueden cambiar con el tiempo
// y que, cuando cambian, provocan que la vista se redibuje automáticamente.
//
// Es decir, @State le dice a SwiftUI: “vigila esta variable porque si cambia,
// quiero actualizar la interfaz de usuario”.

// MARK: - Ejemplo práctico en este proyecto:
// @State private var countries = [...]
// → Esta variable contiene un array de países que cambia cada vez que se mezclan las banderas.
// → Como cambia en tiempo de ejecución, debe marcarse con @State para que SwiftUI
//   redibuje la interfaz al actualizar el contenido.

// @State private var correctAnswer = Int.random(in: 0...2)
// → Representa la bandera correcta. Como se modifica en cada nueva pregunta,
//   también necesita ser observable por SwiftUI (por eso se usa @State).

// @State private var showingScore = false
// → Esta variable booleana controla si se muestra o no una alerta.
//   Cuando cambia a true, SwiftUI muestra la alerta definida en la vista.

// @State private var scoreTitle = ""
// → Se usa para guardar el texto que se mostrará en la alerta ("Correct!" o "Wrong!").
//   Al ser una variable que se modifica tras tocar una bandera, debe llevar @State.

struct ContentView: View {
    
    // Se añade el modificador 'private' para que estas variables solo se usen dentro de esta vista (ContentView),
    // mejorando el encapsulamiento y siguiendo buenas prácticas de desarrollo.
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled() // me desordena los paises
    @State private var correctAnswer = Int.random(in: 0...2)
    
    //Esto es una variable de estado (con @State), que te servirá para controlar si debes mostrar una alerta o algún tipo de respuesta visual cuando el usuario pulse una bandera.
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                
                VStack(spacing: 15 ) {
                    VStack {
                        Text("Tap the flog of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy)) // Aplica un texto pequeño con peso fuerte (heavy), ideal para subtítulos destacados.
                        
                        Text(countries[correctAnswer])
                            .foregroundStyle(.white)
                            .font(.largeTitle.weight(.semibold)) // Texto grande para encabezado, con peso medio-alto (semibold) para buena legibilidad.
                    }
                    ForEach(0..<3) { number in
                        Button {
                            // Llama a la función flagTapped pasando el índice de la bandera pulsada por el usuario
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .clipShape(.capsule)
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: ???")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        // .alert muestra una alerta emergente en pantalla cuando se activa showingScore = true.
        // scoreTitle será el título de la alerta (Correct! o Wrong!).
        // El botón "continue" cierra la alerta y llama a la función askQuestion() para pasar a la siguiente ronda.
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("continue", action: askQuestion)
        } message: {
            Text("Your score is ???")
        }
    }
    // Esta función recibe un parámetro llamado number, que representa el índice (posición) de la bandera que el usuario ha pulsado (puede ser 0, 1 o 2).
    func flagTapped(_ number: Int) {
        
        // Aquí estás comprobando si el índice (number) que ha pulsado el usuario coincide con el índice de la bandera correcta (correctAnswer).
        if number == correctAnswer {
            scoreTitle = "Correct!"
        } else {
            scoreTitle = "Wrong!"
        }
        // Esto actualiza dinámicamente el contenido del mensaje que se mostrará al usuario después.
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}

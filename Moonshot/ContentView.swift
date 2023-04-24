//
//  ContentView.swift
//  Moonshot
//
//  Created by Edmond Podlegaev on 20.04.2023.
//

import SwiftUI

struct ContentView: View {
    let austronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        Text("\(austronauts.count)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

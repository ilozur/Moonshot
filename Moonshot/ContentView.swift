//
//  ContentView.swift
//  Moonshot
//
//  Created by Edmond Podlegaev on 20.04.2023.
//

import SwiftUI

struct ContentView: View {
    let austronauts = Bundle.main.decode("astronauts.json")
    
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

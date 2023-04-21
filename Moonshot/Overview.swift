//
//  Overview.swift
//  Moonshot
//
//  Created by Edmond Podlegaev on 20.04.2023.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct Overview: View {
    var body: some View {
        
        let layout = [
//            GridItem(.fixed(80)),
//            GridItem(.fixed(80)),
//            GridItem(.fixed(80))
            GridItem(.adaptive(minimum: 80, maximum: 120))
        ]
        
        GeometryReader { geo in
            Image("Example")
                .resizable()
                .scaledToFit()
            //            .scaledToFill()
                .frame(width: geo.size.width * 0.8)
                .frame(width: geo.size.width, height: geo.size.height)
                .ignoresSafeArea()
            //            .clipped()
        }
        
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText("Item #\($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
        
        NavigationView {
            List(0..<100) { row in
                NavigationLink {
                    Text("Detail \(row)")
                } label: {
                    Text("Row \(row)")
                }
            }
            .navigationTitle("Swift")
        }
        Button("Decode JSON") {
            let input = """
            {
                "name": "Taylor Swift",
                "address": {
                    "street": "555, Taylor Swift Avenue",
                    "city": "Nashville"
                }
            }
            """
            let data = Data(input.utf8)
            
            if let user = try? JSONDecoder().decode(User.self, from: data) {
                print(user.address.street)
            }
        }
        
        ScrollView(.vertical) {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
    }
}

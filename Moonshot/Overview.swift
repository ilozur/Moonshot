//
//  Overview.swift
//  Moonshot
//
//  Created by Edmond Podlegaev on 20.04.2023.
//

import SwiftUI

struct Overview: View {
    var body: some View {
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
    }
}

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
    }
}

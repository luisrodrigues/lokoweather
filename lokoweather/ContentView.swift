//
//  ContentView.swift
//  lokoweather
//
//  Created by Rodrigues, Luis on 19/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
			LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

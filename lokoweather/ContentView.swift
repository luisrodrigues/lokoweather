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
			LinearGradient(
				gradient: Gradient(colors: [Color.blue, Color.white]),
				startPoint: .topTrailing,
				endPoint: .bottomTrailing
			)
			.edgesIgnoringSafeArea(.all)
			VStack {
				Text("Porto, PT")
					.font(.system(size: 32, weight: .medium, design: .default))
					.foregroundColor(.white)
					.padding(.bottom)
				Spacer()
			}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

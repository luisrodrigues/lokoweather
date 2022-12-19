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
				gradient: Gradient(colors: [.blue, Color("lightBlue")]),
				startPoint: .topTrailing,
				endPoint: .bottomTrailing
			)
			.edgesIgnoringSafeArea(.all)
			VStack {
				Text("Porto")
					.font(.system(size: 32, weight: .medium, design: .default))
					.foregroundColor(.white)
					.padding(.bottom)
				VStack(spacing: 10) {
					Image(systemName: "cloud.sun.fill")
						.renderingMode(.original)
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 180, height: 180)
					Text("16º")
						.font(.system(size: 70, weight: .medium))
						.foregroundColor(.white)
						.padding(.bottom)
				}
				.padding(.bottom, 40)
				
				HStack(spacing: 20) {
					WeatherDayView(dayOfWeek: "TUE", imageName: "wind", temperature: 16)
					WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 16)
					WeatherDayView(dayOfWeek: "THU", imageName: "cloud.fog.fill", temperature: 16)
					WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.rain.fill", temperature: 16)
					WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.fill", temperature: 16)
				}
				Spacer()
				Button {
					print("tapped")
				} label: {
					Text("Change Day Time")
						.frame(width: 280, height: 50)
						.background(Color.white)
						.font(.system(size: 20, weight: .bold, design: .default))
						.cornerRadius(10)
				}
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

struct WeatherDayView: View {
	var dayOfWeek: String
	var imageName: String
	var temperature: Int
	
	var body: some View {
		VStack {
			Text(dayOfWeek)
				.font(.system(size: 16, weight: .medium, design: .default))
				.foregroundColor(.white)
			Image(systemName: imageName)
				.renderingMode(.original)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 40, height: 40)
			Text("\(temperature)º")
				.font(.system(size: 20, weight: .medium))
				.foregroundColor(.white)
				.padding(.bottom)
		}
	}
}

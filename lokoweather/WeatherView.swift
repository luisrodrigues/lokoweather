//
//  WeatherView.swift
//  lokoweather
//
//  Created by Rodrigues, Luis on 19/12/2022.
//

import SwiftUI

struct WeatherView: View {
	@State var weatherDays: [WeatherDay]
	@State private var isNight = false
	
	var body: some View {
		ZStack {
			BackgroundView(isNight: isNight)
			VStack {
				CityTextView(cityName: "Porto")
				MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 16)
				HStack(spacing: 20) {
					WeatherDayView(weatherDays: weatherDays)
				}
				.padding(.bottom, 40)
				Button {
					isNight.toggle()
				} label: {
					WeatherButton(isNight: isNight, buttonText: "Change Day Time", backgroundColor: Color.white)
				}
			}
		}
	}
}

struct WeatherView_Previews: PreviewProvider {
	static var previews: some View {
		WeatherView(weatherDays: WeatherDay.sampleData)
	}
}

struct WeatherDayView: View {
	var weatherDays: [WeatherDay]
	
	var body: some View {
		ForEach(weatherDays) { day in
			VStack {
				Text(day.dayOfWeek)
					.font(.system(size: 16, weight: .medium, design: .default))
					.foregroundColor(.white)
				Image(systemName: day.imageName)
					.symbolRenderingMode(.multicolor)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 40, height: 40)
				Text("\(day.temperature)º")
					.font(.system(size: 20, weight: .medium))
					.foregroundColor(.white)
					.padding(.bottom)
				
			}
		}
	}
}

struct BackgroundView: View {
	var isNight: Bool
	
	var body: some View {
		ContainerRelativeShape()
			.fill(isNight ? Color.black.gradient : Color.blue.gradient)
			.ignoresSafeArea()
	}
}

struct CityTextView: View {
	var cityName: String
	
	var body: some View {
		Text(cityName)
			.font(.system(size: 32, weight: .medium, design: .default))
			.foregroundColor(.white)
			.padding(.bottom)
	}
}

struct MainWeatherStatusView: View {
	var imageName: String
	var temperature: Int
	
	var body: some View {
		VStack(spacing: 10) {
			Image(systemName: imageName)
				.renderingMode(.original)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 180, height: 180)
			Text("\(temperature)º")
				.font(.system(size: 70, weight: .medium))
				.foregroundColor(.white)
				.padding(.bottom)
		}
		.padding(.bottom, 40)
	}
}

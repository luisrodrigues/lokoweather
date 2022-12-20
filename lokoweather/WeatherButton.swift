//
//  WeatherButton.swift
//  lokoweather
//
//  Created by Rodrigues, Luis on 20/12/2022.
//

import SwiftUI

struct WeatherButton: View {
	var isNight: Bool
	var buttonText: String
	var backgroundColor: Color
	
	var body: some View {
		Text(buttonText)
			.frame(width: 280, height: 50)
			.foregroundColor(isNight ? .black : .blue)
			.background(backgroundColor.gradient)
			.font(.system(size: 20, weight: .bold, design: .default))
			.cornerRadius(10)
	}
}

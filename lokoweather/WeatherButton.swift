//
//  WeatherButton.swift
//  lokoweather
//
//  Created by Rodrigues, Luis on 20/12/2022.
//

import SwiftUI

struct WeatherButton: View {
	var buttonText: String
	var textColor: Color
	var backgroundColor: Color
	
	var body: some View {
		Text(buttonText)
			.frame(width: 280, height: 50)
			.foregroundColor(textColor)
			.background(backgroundColor)
			.font(.system(size: 20, weight: .bold, design: .default))
			.cornerRadius(10)
	}
}

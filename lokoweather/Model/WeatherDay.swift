//
//  WeatherDay.swift
//  lokoweather
//
//  Created by Rodrigues, Luis on 20/12/2022.
//

import Foundation

struct WeatherDay: Hashable {
	var dayOfWeek: String
	var imageName: String
	var temperature: Int
	
	init(dayOfWeek: String, imageName: String, temperature: Int) {
		self.dayOfWeek = dayOfWeek
		self.imageName = imageName
		self.temperature = temperature
	}
}

enum EnumDays : String
{
	case MONDAY = "MON"
	case TUESDAY = "TUE"
	case WEDNESDAY = "WED"
	case THURSDAY = "THU"
	case FRIDAY = "FRI"
	case SATURDAY = "SAT"
	case SUNDAY = "SUN"
}

extension WeatherDay {
	static let sampleData: [WeatherDay] =
	[
		WeatherDay(dayOfWeek: EnumDays.TUESDAY.rawValue, imageName: "wind", temperature: 16),
		WeatherDay(dayOfWeek: EnumDays.WEDNESDAY.rawValue, imageName: "sun.max.fill", temperature: 16),
		WeatherDay(dayOfWeek: EnumDays.THURSDAY.rawValue, imageName: "cloud.fog.fill", temperature: 16),
		WeatherDay(dayOfWeek: EnumDays.FRIDAY.rawValue, imageName: "cloud.rain.fill", temperature: 16),
		WeatherDay(dayOfWeek: EnumDays.SATURDAY.rawValue, imageName: "cloud.fill", temperature: 16)
	]
}

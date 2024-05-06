//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Thomas Bjeldbak on 06/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
                DayForecast(day: "Wed", isRainy: false, high: 75, low: 45)
            }
            HStack {
                DayForecast(day: "Thu", isRainy: true, high: 50, low: 30)
                DayForecast(day: "Fri", isRainy: false, high: 90, low: 60)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            "cloud.rain.fill"
        } else {
            "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy{
            Color.blue
        } else {
            Color.yellow
        }
    }
    
    var textColorHigh: Color {
        if high > 80 {
            Color.red
        } else {
            Color.black
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
                .foregroundStyle(textColorHigh)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}

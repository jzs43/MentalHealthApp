//
//  ContentView.swift
//  start
//
//  Created by 刘骐铭 on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForcast(day: "Mon", isRainy: false, high: 70, low: 40)
            
            DayForcast(day: "Tue", isRainy: true, high: 40, low: 30)
        }
    }}

#Preview {
    ContentView()
}

struct DayForcast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.largeTitle)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
    }
}

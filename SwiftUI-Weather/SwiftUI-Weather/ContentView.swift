//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Nicholas McGinnis on 9/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                HStack {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 70)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind", temperature: 66)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 60)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "moon.stars.fill", temperature: 55)
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
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(10)
    }
}

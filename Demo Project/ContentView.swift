//
//  ContentView.swift
//  Demo Project
//
//  Created by Shoriful Islam on 17/9/23.
//
import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray : Color("lightBlue"))
            
             VStack{
                CityTextView(cityName: "Cupartino, CA")
                MainWeatherStatusView(imageName: "cloud.sun.fill",temperature: 70)
                
                HStack(spacing: 16){
                    WeatherDayView(dayOfWeek: "TUE",imageName: "cloud.sun.fill",temperature: 65)
                    WeatherDayView(dayOfWeek: "WED",imageName: "sun.max.fill",temperature: 62)
                    WeatherDayView(dayOfWeek: "THU",imageName: "wind.snow",temperature: 60)
                    WeatherDayView(dayOfWeek: "FRI",imageName: "sunset.fill",temperature: 70)
                    WeatherDayView(dayOfWeek: "SAT",imageName: "snow",temperature: 65)
                
                }
                Spacer()
                 Button{
                     isNight = true
                     print("tapped")
                 } label: {
                     MyButton(buttonText: "Change Day Time",textColor: .blue,backgroundColor: .white)
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
        VStack{
            Text(dayOfWeek).font(.system(size: 20,weight: .medium)).foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(temperature)°").font(.system(size: 28,weight: .medium,design: .default)).foregroundColor(.white)
            
            
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View{
        Text(cityName).font(.system(size: 32,weight: .medium,design: .default)).foregroundColor(.white)
            .padding(.top, 16)
    }
    
}

struct MainWeatherStatusView: View{
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack(spacing: 8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            Text("\(temperature)°").font(.system(size: 76,weight: .medium,design: .default)).foregroundColor(.white)
        }.padding(.bottom,40)
    }
}



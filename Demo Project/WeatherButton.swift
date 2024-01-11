//
//  WeatherButton.swift
//  Demo Project
//
//  Created by Shoriful Islam on 8/1/24.
//
import SwiftUI

struct MyButton: View {
    var buttonText: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
            Text(buttonText)
                .frame(width: 300,height: 50)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.system(size: 20,weight: .bold,design: .default))
                .cornerRadius(10)
            
    }
}

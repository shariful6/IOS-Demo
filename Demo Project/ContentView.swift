//
//  ContentView.swift
//  Demo Project
//
//  Created by Shoriful Islam on 17/9/23.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Cupartino, CA").font(.system(size: 32,weight: .medium,design: .default)).foregroundColor(.white)
                    .padding(.top, 16)
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    Text("70°").font(.system(size: 76,weight: .medium,design: .default)).foregroundColor(.white)
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



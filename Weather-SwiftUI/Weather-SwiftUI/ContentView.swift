//
//  ContentView.swift
//  Weather-SwiftUI
//
//  Created by Musashi Ai on 2023-06-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("City Name")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack (spacing : 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .center)
                    Text("Temp")
                        .font(.system(size: 70, weight: .medium ))
                        .foregroundColor(.white)
                }
                ExtractedView()
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

struct ExtractedView: View {
    var body: some View {
        HStack {
            VStack{
                Text("Temp")
                    .font(.system(size: 16, weight: .medium ))
                    .foregroundColor(.white)
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40, alignment: .center)
                Text("Temp")
                    .font(.system(size: 28, weight: .medium ))
                    .foregroundColor(.white)
            } }
    }
}

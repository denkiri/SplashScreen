//
//  ContentView.swift
//  SplashScreen
//
//  Created by Macbook Pro on 01/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            Text("Home screen of LCO app")
                .foregroundColor(.white)
                .font(.system(size: 30))
                .bold()
                .padding()
            
        }
    }
}

#Preview {
    ContentView()
}

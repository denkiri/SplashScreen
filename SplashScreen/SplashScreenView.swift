//
//  SplashScreenView.swift
//  SplashScreen
//
//  Created by Macbook Pro on 01/05/2024.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive: Bool = false
    @State private var size = 0.7
    @State private var opacity = 0.4
    var body: some View {
        if  isActive{
            ContentView()
        }
        else{
            VStack{
                Image("mascot")
                Text("LearnCodeOnline")
                    .font(.system(size: 40))
                    .foregroundColor(.black)
                    .opacity(0.7)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.0)){
                    self.size = 1.1
                    self.opacity = 1.0
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){ withAnimation{
                    self.isActive = true
                }}
            }
        }
    }
}

#Preview {
    SplashScreenView()
}

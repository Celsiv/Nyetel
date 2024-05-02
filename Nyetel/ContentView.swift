//
//  ContentView.swift
//  Nyetel
//
//  Created by Chelsea Vanessa on 02/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var isActive = false
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .frame(width: 400)
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                Image("TextNyetel")
                    .offset(y: 50)
                
                Spacer()
               
                ZStack {
                    Image("ButtonNyetel")
                    Image(systemName: "play.fill")
                        .symbolEffect(.scale, isActive: isActive)
                        .font(.system(size:60))
                        .foregroundColor(Color(UIColor(red: 0.46, green: 0.22, blue: 0.22, alpha: 1.00)))
                        .offset(x:3)

                    
                }
                
                Spacer()
            }
        }
        .padding()
        .onAppear() {
            isActive = true
        }
    }
}

#Preview {
    ContentView()
}

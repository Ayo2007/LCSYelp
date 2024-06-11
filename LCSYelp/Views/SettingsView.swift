//
//  ContentView.swift
//  LCSYelp
//
//  Created by Ayodeji Ogunkinle on 2024-06-07.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack{
            Color.limeGreen
                .ignoresSafeArea()
            VStack(spacing: 5) {
                
                    ZStack {
                       RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                        .frame(height: 45)
                        .foregroundColor(.white)
                        Text("Account Information")
                            .fontDesign(.serif)
                        .foregroundStyle(.black)
                    }
                   
                    ZStack {
                        
                            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                            .frame(height: 45)
                        .foregroundColor(.white)
                        Text("Account Achivements")
                            .fontDesign(.serif)
                        .foregroundStyle(.black)
                    }
                ZStack {
                   RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .frame(height: 45)
                    .foregroundColor(.white)
                    Text("Friends")
                        .fontDesign(.serif)
                    .foregroundStyle(.black)
                }
                ZStack {
                   RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .frame(height: 45)
                    .foregroundColor(.white)
                    Text("Suggestion Feed")
                        .fontDesign(.serif)
                    .foregroundStyle(.black)
                }
                
            }
            .padding()
        }
    }
}
    

#Preview {
    SettingsView()
}

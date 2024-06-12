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
            NavigationStack {
                List {
                    
                    NavigationLink(destination: FriendsListView, label: {
                        Text("Friends")
                    })
                    
                    
                    
                }
                .navigationTitle("LCSYelp")
                .padding()
            }
        }
    }
    
    
    #Preview {
        SettingsView()
    }
}

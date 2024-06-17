//
//  ContentView.swift
//  LCSYelp
//
//  Created by Ayodeji Ogunkinle on 2024-06-07.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        
        NavigationStack {
            List {
                NavigationLink(destination: FriendsListView(friends: [myers,gordon,ayo]), label: {
                    Text("Friends")
                })
                NavigationLink(destination: InfoView(InfoToShow: userInfo), label: {
                    Text("Account Information")
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


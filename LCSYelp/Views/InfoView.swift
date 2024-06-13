//
//  InfoView.swift
//  LCSYelp
//
//  Created by Ayodeji Ogunkinle on 2024-06-12.
//

import SwiftUI

struct InfoView: View {
    let InfoToShow: accountInfo
    
    var body: some View {
        
        NavigationStack {
        VStack{
            List {
                HStack {
                    Text(InfoToShow.firstName)
                    Text(InfoToShow.LastName)
                }
                VStack{
                    Text(InfoToShow.username)
                    
                }
                VStack{
                    Text(InfoToShow.birthDate)
                }
                VStack{
                    Text(InfoToShow.idNumber)
                }
                .navigationTitle("Account Information")
            }
        }
      }
    }
}

#Preview {
    InfoView(InfoToShow: userInfo)
}

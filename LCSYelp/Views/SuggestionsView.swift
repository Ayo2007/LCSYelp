//
//  SuggestionsView.swift
//  LCSYelp
//
//  Created by Ayodeji Ogunkinle on 2024-06-18.
//

import SwiftUI

struct SuggestionsView: View {
    
    let postToShow: Suggestions
    
    var body: some View {
        HStack{
            Image(postToShow.profilePicture)
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .padding(.trailing, 20)
            Text(postToShow.username)
            Text(postToShow.suggestion)
                
            
        }
    }
}

#Preview {
    SuggestionsView(postToShow: post)
}

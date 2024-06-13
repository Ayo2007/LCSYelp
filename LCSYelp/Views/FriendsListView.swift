//
//  FriendsView.swift
//  LCSYelp
//
//  Created by Ayodeji Ogunkinle on 2024-06-11.
//

import SwiftUI

struct FriendsListView: View {
    
    
    // MARK: Stored properties
    let friends: [Friend]
    @State private var searchText: String = ""
    
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            List(friends) { friend in
                FriendView(friendToShow: friend)
            }
            
        }
        .searchable(text: $searchText)
    }
    
   // MARK: Functions
    func filter(friends: [Friend], on providedText: String) -> [Friend] {
        if providedText.isEmpty{
            return friends
        } else{
            // Make empty array
            var _: [Friend] = []
        }
            
    }
}

#Preview {
    FriendsListView(friends: exampleFriends)
}

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
        
        @State var searchText = ""
        
        // MARK: Computed properties
        var body: some View {
            VStack {
                List(friends) { friend in
                    FriendView(friendToShow: friend)
                }
                
            }
            .searchable(text: $searchText)
        }
    }

#Preview {
    FriendsListView(friends: exampleFriends)
}

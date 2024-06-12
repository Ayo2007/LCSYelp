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
        
        // MARK: Computed properties
        var body: some View {
            VStack {
                List(friends) { friend in
                    FriendView(friendToShow: friend)
                }
                
            }
        }
    }

#Preview {
    FriendsListView(friends: exampleFriends)
}

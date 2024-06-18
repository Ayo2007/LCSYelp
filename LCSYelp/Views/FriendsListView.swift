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
    
    @State private var  selectionPresentationType: Int = 1
    
    @State private var addFriendSheetIsShowing = false
    
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack{
            VStack {
                List(friends) { friend in
                    FriendView(friendToShow: friend)
                }
                
            }
            .searchable(text: $searchText)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        // This will show the add friendView
                        addFriendSheetIsShowing = true 
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                
            }
            .sheet(isPresented: $addFriendSheetIsShowing) {
                AddFriendView(dismissSheet: $addFriendSheetIsShowing)
            }
        }
    }
}

// MARK: Functions
func filter(friends: [Friend], on providedText: String) -> [Friend] {
    if providedText.isEmpty{
        return friends
    } else{
        // Make empty array
        var filteredfriends: [Friend] = []
        
        for friend in friends {
            if friend.username.contains(providedText){
                filteredfriends.append(friend)
            }
        }
        
        // Return the list of friends that contained the provided text
        return filteredfriends
    }
    
    
    
    
    
}


#Preview {
    FriendsListView(friends: exampleFriends)
}


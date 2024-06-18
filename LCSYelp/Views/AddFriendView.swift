//
//  AddFriendView.swift
//  LCSYelp
//
//  Created by Ayodeji Ogunkinle on 2024-06-13.
//

import SwiftUI

struct AddFriendView: View {
   // MARK: Stored Properties
    @State private var Username: String = ""
    @State private var StudentID: String = ""
    @State private var searchText: String = ""
    
    
    // Allow binding to dimisssheet
    @Binding var dismissSheet: Bool
    
    var body: some View {
        NavigationStack{
            Form {
                Section(header: Text("Add Friends")) {
                    TextField("Username", text: $Username)
                    TextField("StudentID", text: $StudentID)
                    
                        .searchable(text: $searchText)
                }
            }
            .navigationTitle("Add Friends")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        // This will show the add friendView
                        dismissSheet = false
                    } label: {
                    Text("Add")
                    }
                }
                
            }
        }
    }
}

#Preview {
    AddFriendView(dismissSheet: Binding.constant(true))
}

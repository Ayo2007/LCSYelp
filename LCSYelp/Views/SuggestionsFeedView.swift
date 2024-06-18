//
//  SuggestionView.swift
//  LCSYelp
//
//  Created by Ayodeji Ogunkinle on 2024-06-18.
//

import SwiftUI



struct SuggestionView: View {
    // MARK: Stored properties
    @State private var addPostSheetIsShowing = false
    
    
    let posts: [Suggestions]
    
    
    var body: some View {
        NavigationStack{
            VStack {
                List(posts) { post in
                    SuggestionsView(postToShow: post)
                    
                    
                }
                
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            // This will show the add friendView
                            addPostSheetIsShowing = true
                        } label: {
                            Text("Add Suggestion")
                            
                                .sheet(isPresented: $addPostSheetIsShowing) {
                                    AddSuggestionView(dismissSheett: $addPostSheetIsShowing)
                                }
                                .navigationTitle("Suggestions Feed")
                        }
                    }
                    
                }
            }
        }
    }
    
    
    
    
}

#Preview {
    SuggestionView(posts: exampleSuggestion)
}

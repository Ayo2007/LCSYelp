//
//  AddSuggestionView.swift
//  LCSYelp
//
//  Created by Ayodeji Ogunkinle on 2024-06-18.
//

import SwiftUI

struct AddSuggestionView: View {
    @State private var Suggestion: String = ""
    @Binding var dismissSheett: Bool

    
    
    var body: some View {
        NavigationStack{
            Form {
                Section(header: Text("Suggest AWAY")) {
                    TextField("Make A Suggestion!!!!", text: $Suggestion)
                }
            }
            .navigationTitle(" Your Suggestion is  ??")
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        // This will show the add friendView
                        dismissSheett = false
                    } label: {
                    Text("Post!!!")
                    }
                }
                
            }
        }
    }
   
}
#Preview {
    AddSuggestionView(dismissSheett: Binding.constant(true))
}

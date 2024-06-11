//
//  Yelp.swift
//  LCSYelp
//
//  Created by Ayodeji Ogunkinle on 2024-06-11.
//

import SwiftUI

struct Friend: Identifiable {
    let id = UUID()
    let profilePicture: String
    let username: String
    let usernameColor: Color
    let bio: String
    let bioColor:Color
    let totalPosts: Double
    
}


let myers = Friend(profilePicture:"Myers", username: "LCS123", usernameColor: .white, bio: "Grade 10 Rep. I love LCS", bioColor: .black, totalPosts: 119)
let gordon = Friend(profilePicture: "Gordon", username: "TechWizz", usernameColor: .white, bio: "Coding genius lol", bioColor: .black, totalPosts: 1023)
let ayo = Friend(profilePicture: "Ayo", username: "Greatest_student", usernameColor: .white, bio: "More life", bioColor: .black, totalPosts: 84)
  
let exampleFriends = [
    myers,
    gordon,
    ayo
]

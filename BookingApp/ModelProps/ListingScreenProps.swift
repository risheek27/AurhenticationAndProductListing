//
//  ListingScreenProps.swift
//  BookingApp
//
//  Created by Risheek Agrawal on 17/12/21.
//

import SwiftUI
import Firebase

class ListingScreenProps: ObservableObject {

    @Published var title: String = ""
    @Published var price: String = ""
    @Published var description: String = ""
    @Published var registerUser: Bool = false
    @Published var UserRegistered: Bool = false
    let db = Firestore.firestore()
    
    func CreateListing(){
     
      db.collection("Products").addDocument(data: [
            "description": description,
            "price": price
        ])
    }
    
    
  
}

//
//  Listings.swift
//  BookingApp
//
//  Created by Risheek Agrawal on 17/12/21.
//

import SwiftUI

struct Listings: View {
    @StateObject var ListingInfo: ListingScreenProps = ListingScreenProps()
    
    var body: some View {
        VStack{
            
            VStack{
                
               
                //listing heading for the page
                Text("Listings")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .padding(.all, 20)
                
                ScrollView(.vertical){
                    
                    //text field for item name
                    RegistrationTextField(hint: "Item Name",value: $ListingInfo.title)
                        .padding(.vertical, 10)
                    
                    //text field for price
                    RegistrationTextField(hint: "Item Price",value: $ListingInfo.price)
                        .padding(.vertical, 10)
                    
                    //text field for item description
                    RegistrationTextField(hint: "Item Description",value: $ListingInfo.description)
                        .padding(.vertical, 10)
                   
                    
                    //Button for submit
                    Button {
                        ListingInfo.CreateListing()
                    } label: {
                      
                         Text("Create Listing")
                            .fontWeight(.bold)
                            .padding(.all, 20)
                            .accentColor(.white)
                            .frame(width: 280, height: 50)
                            .background(Color.black)
                        }
                    
                    
                    
                
                    //Button to navigate to homescreen
                    Button {
                        
                    } label: {
                        NavigationLink(destination: HomeScreen())
                        {
                            Text("Calculate Tax")
                               .fontWeight(.bold)
                               .padding(.all, 20)
                               .accentColor(.white)
                               .frame(width: 280, height: 50)
                                .background(Color.green)
                    }
                    }
                    
                    
                }
            }
            
        }
        .background(Color("White"))
    }
    }
    


//Custom text field view builder
@ViewBuilder
func RegistrationTextField(hint: String, value: Binding<String>)->some View{
    
    VStack(alignment: .center, spacing: 10){
        
     
                TextField(hint, text: value)
                .padding(.all, 20)
                .border(Color.black)
                .frame(maxWidth: 300)
        
}
}

struct Listings_Previews: PreviewProvider {
    static var previews: some View {
        Listings()
    }
}

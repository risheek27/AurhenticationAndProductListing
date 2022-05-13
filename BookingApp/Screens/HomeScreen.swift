//
//  HomeScreen.swift
//  BookingApp
//
//  Created by Risheek Agrawal on 17/12/21.
//

import SwiftUI
import Firebase

struct HomeScreen: View {
    @StateObject var RegistrationInfo: RegistrationScreenProps = RegistrationScreenProps()
    var body: some View {
        NavigationView{
            
            //if user loged in then show this page
            if (Auth.auth().currentUser != nil) {
              
                
                
                Button {
                    RegistrationInfo.SignOut()
                } label: {
                     Text("SignOut")
                        .fontWeight(.bold)
                        .padding(.all, 20)
                        .accentColor(.white)
                        .frame(width: 280, height: 50)
                        .background(Color.black)
                        
                }
                
            }
            
            
            
            else {
               
                //navigate to Registration screen so that user can login
                NavigationLink(destination: RegistrationScreen())
                {
                    Text("Please Login")
                       .fontWeight(.bold)
                       .padding(.all, 20)
                       .accentColor(.white)
                       .frame(width: 280, height: 50)
                        .background(Color.green)
                }
            
            }
        }
        .navigationBarBackButtonHidden(false)
      
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

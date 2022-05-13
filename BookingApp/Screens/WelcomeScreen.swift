//
//  WelcomeScreen.swift
//  BookingApp
//
//  Created by Risheek Agrawal on 09/12/21.
//

import SwiftUI

struct WelcomeScreen: View {
    
    @State var ContinueToRegistrationPage: Bool = false
    var body: some View {
        VStack{
            
            Image("Intro")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Button {
                withAnimation{
                    ContinueToRegistrationPage = true
                }
            } label: {
                 Text("Continue")
                    .fontWeight(.bold)
                    .padding(.all, 20)
                    .accentColor(.white)
                    .frame(width: 180, height: 50)
                    .background(Color.black)
                                    
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color("White")
        )
        .overlay(
            Group{
                if ContinueToRegistrationPage{
                RegistrationScreen().transition(.move(edge: .bottom))
                }
            }
        )
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeScreen()
                .previewDevice("iphone 12")
       
        }
        
    }
}

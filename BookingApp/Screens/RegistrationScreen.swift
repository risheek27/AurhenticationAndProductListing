//
//  RegistrationScreen.swift
//  BookingApp
//
//  Created by Risheek Agrawal on 09/12/21.
//

import SwiftUI

struct RegistrationScreen: View {
    @StateObject var RegistrationInfo: RegistrationScreenProps = RegistrationScreenProps()
    var body: some View {
        NavigationView {
        VStack{
            
            VStack{
                
               
            
                //login heading for the page
                Text(RegistrationInfo.registerUser ? "Register" : "Login")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .padding(.all, 20)
                
                ScrollView(.vertical){
                    
                    //text field for email
                    RegistrationTextField(hint: "Email",value: $RegistrationInfo.email)
                        .padding(.vertical, 10)
                    
                    //text field for password
                    RegistrationTextField(hint: "Password",value: $RegistrationInfo.password)
                        .padding(.vertical, 10)
                    
                   
                    
                    //Button for forgot password
                    Button {
                        RegistrationInfo.ForgotPassword()
                    } label: {
                         Text("Forgot Password")
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding([.top, .leading, .trailing], 10 )
                            .padding(.bottom, 30)
                            .accentColor(.blue)
                            
                    }
                    
                   
                    
                    //Button for submit
                    Button {
                        if RegistrationInfo.registerUser{
                            RegistrationInfo.RegisterUser()
                            
                        }
                        else {
                            RegistrationInfo.LoginUser()
                           
                        }
                    } label: {
                      
                         Text("Login")
                            .fontWeight(.bold)
                            .padding(.all, 20)
                            .accentColor(.white)
                            .frame(width: 280, height: 50)
                            .background(Color.black)
                        }
                    
                    
                    
                    
                    //create account button
                    //Button for submit
                    Button {
                        withAnimation{
                            RegistrationInfo.registerUser.toggle()
                        }
                    } label: {
                        Text(RegistrationInfo.registerUser ? "Login" : "Create Account")
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
                            Text("Continue To Homescreen")
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
            
            if hint.contains("Password"){
                SecureField(hint, text: value)
                .padding(.all, 20)
                .border(Color.black)
                .frame(maxWidth: 300)
            }
            else{
                    TextField(hint, text: value)
                    .padding(.all, 20)
                    .border(Color.black)
                    .frame(maxWidth: 300)
            }
    }
}
    

struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationScreen()
    }
}
}

//
//  CalculateTax.swift
//  BookingApp
//
//  Created by Risheek Agrawal on 17/12/21.
//

import SwiftUI

struct CalculateTax: View {
    @StateObject var TaxInfo: TaxScreenProps = TaxScreenProps()
    
    var body: some View {
        VStack{
            
            VStack{
                
               
                //listing heading for the page
                Text("Tax Calculator")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .padding(.all, 20)
                
                ScrollView(.vertical){
                    
                    //text field for price
                    RegistrationTextField(hint: "Item Price",value: $TaxInfo.price)
                        .padding(.vertical, 10)
                    
                    //text field for tax percentage
                    RegistrationTextField(hint: "Tax percentage",value: $TaxInfo.tax)
                        .padding(.vertical, 10)
                    
                    //answer
                    Text("hello")
                    
                    //Button for submit
                    Button {
                        TaxInfo.CalculateTax()
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
func TaxTextfield(hint: String, value: Binding<String>)->some View{
    
    VStack(alignment: .center, spacing: 10){
        
     
                TextField(hint, text: value)
                .padding(.all, 20)
                .border(Color.black)
                .frame(maxWidth: 300)
        
}
}



struct CalculateTax_Previews: PreviewProvider {
    static var previews: some View {
        CalculateTax()
    }
}

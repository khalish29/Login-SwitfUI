//
//  ContentView.swift
//  LoginUI
//
//  Created by macOS User on 27/11/20.
//

import SwiftUI
 
struct ContentView: View {
    var body: some View {
        ZStack{
            Image("dadada")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:20){
                HandleView()
                FormBox()
            }
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
struct HandleView: View{
    var body: some View{
        VStack{
            Image(systemName:  "hand.draw.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .background(Color.black)
                .foregroundColor(Color.orange)
                .padding()
                .background(Color.black)
                .cornerRadius(20)
 
            Text("Hello Swift").foregroundColor(Color.white)
        }
    }
}
 
struct FormBox: View {
 
    @State var username: String = ""
    @State var password: String = ""
    var body: some View{
        VStack(alignment: .leading){
            Text("Username").font(.callout).bold()
            TextField("Username..", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
 
            Text("password").font(.callout).bold()
            SecureField("Password", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
 
            Button(action: {print("Hello Button")}) {
                Text("Sign In")
            }
 
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(Color.white)
        }
 
        .padding(.all,30)
        .background(Color.orange)
        .cornerRadius(10)
    }
}



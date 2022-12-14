//
//  ContentView.swift
//  LoginForm
//
//  Created by NyashaMadzokere on 2022/08/19.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
        Color.black
        //ZStack color
        RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.pink, .blue], startPoint:
                    .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 1000, height: 400).rotationEffect(.degrees(135))
                    .offset(y: -350)
            
            VStack(spacing: 20){
                
                //Text , Textfield and Labels these are easy to understand
                Text("Welcome")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x: -90, y: -100)
                
                TextField("Email", text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty){
                     Text("Email")
                         .foregroundColor(.white)
                         .bold()
                 }
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
                    SecureField("Password", text: $password)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty){
                        Text("Password")
                            .foregroundColor(.white)
                           .bold()
                        
                  }
               
                
                    Rectangle()
                     .frame(width: 350, height: 1)
                      .foregroundColor(.white)
            //Button for sign in
            Button {
                
                }label: {
                   Text("Sign In")
                        .foregroundColor(.black)
                        .bold()
                        .frame(width: 200, height: 40)
                        .background(
                         RoundedRectangle(cornerRadius: 10, style: .continuous)
                        )
                        .foregroundColor(.white)
               }
                //Button for sign in
                Button {
                    
                }label: {
                    Text("Do not have an account? Sign Up")
                        .bold()
                        .foregroundColor(.white)
                }
            }
            .frame(width: 350)
        
    }
          .ignoresSafeArea()
        
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func placeholder <Content: View>(
    when shouldShow: Bool,
     alignment: Alignment = .leading,
     @ViewBuilder placeholder: () -> Content) -> some View{
        
       ZStack(alignment: alignment){
           placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}



//
//  ContentView.swift
//  ladbit
//
//  Created by Peter Awad on 26/01/2023.
//

import SwiftUI

struct Box {
    var id: Int; let title, imageUrl: String}

struct Login: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    
    var body: some View {
        
        let _: [Box] = [
            Box(id: 0, title: "Good stuff", imageUrl: "logo"),
        ]
        
        NavigationView
        {
            ScrollView
            {
                VStack
                {
                    Image ("logo")
                        .resizable ()
                        .frame (width:400, height: 300)
                        .cornerRadius (12)
                    
                    VStack
                    {
                        TextField("Username", text: $username)
                            .padding ()
                            .frame (width: 300, height: 50)
                            .background (Color.black.opacity (0.05))
                            .cornerRadius (10)
                            .border(.red, width: CGFloat (wrongUsername))
                        SecureField ("Password", text: $password)
                            .padding ()
                            .frame (width: 300, height: 50) .background (Color.black.opacity(0.05))
                            .cornerRadius (10)
                            .border (.red, width: CGFloat (wrongPassword) )
                        Button("Login") {
                            authenticateUser (username: username, password: password)
                        }.foregroundColor (.white)
                            .frame (width: 300, height: 50)
                            .background (Color.blue) .cornerRadius (10)
                        
                        NavigationLink(destination: home(), isActive: $showingLoginScreen)
                        {
                            //home()
                        }
                    }
                }
            }.navigationBarTitle(Text (""))
        }
    }
    func authenticateUser(username: String,password: String) {
        if username.lowercased () == "peter"
        {
            wrongUsername = 0
            if password.lowercased() == "1234"
            {
                wrongPassword = 0
                showingLoginScreen = true
            }
            else
            {
                wrongPassword = 2
            }
        }
        else
        {
            wrongUsername = 2
        }
    }
}
struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        Login()
    }
}

//NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen)

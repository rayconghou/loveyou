//
//  ContentView.swift
//  CASauth
//
//  Created by Raymond Hou on 8/7/24.
//

import SwiftUI
import Foundation
import WebKit

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var message: String = ""
    @State private var redirectToURL: String? = "http://192.168.1.87:3000/cas"

    var body: some View {
        VStack {
            if let urlString = redirectToURL, let url = URL(string: urlString) {
                WebView(url: url)
//            } else {
//                TextField("Username", text: $username)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .padding()
//                SecureField("Password", text: $password)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .padding()
//                Button(action: {
//                    login(username: username, password: password)
//                }) {
//                    Text("Loginc")
//                        .padding()
//                        .background(Color.blue)
//                        .foregroundColor(.white)
//                        .cornerRadius(8)
//                }
//                Text(message)
//                    .padding()
//            }
        }
//        .padding()
//        .onAppear {
//            login(username: "testuser", password: "testpassword")
//        }
    }

//    func login(username: String, password: String) {
//        let loginURL = URL(string: "http://192.168.1.87:3000/cas")!
//        var request = URLRequest(url: loginURL)
//        request.httpMethod = "POST"
//        let body = "username=\(username)&password=\(password)"
//        request.httpBody = body.data(using: .utf8)
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//        
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            guard let data = data, error == nil else {
//                DispatchQueue.main.async {
//                    message = "Login request failed: \(error?.localizedDescription ?? "No error description")"
//                }
//                return
//            }
//            
//            if let serviceTicket = String(data: data, encoding: .utf8) {
//                DispatchQueue.main.async {
//                    message = "Service Ticket: \(serviceTicket)"
//                    redirectToURL = "http://localhost:3000/success" // Replace with the URL you want to redirect to
//                }
//            }
//        }
//        task.resume()
    }
}

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

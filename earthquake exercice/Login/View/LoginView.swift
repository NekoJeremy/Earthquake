//
//  LoginView.swift
//  earthquake exercice
//
//  Created by Jeremy Andrades on 22-01-24.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoginButtonDisabled: Bool = true
    
    var body: some View {
        VStack {
            Image(systemName: "globe") //TODO: logo de la app
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding(.bottom, 30)
            
            TextField("Usuario", text: $username)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8.0)
                .padding(.bottom, 20)
                .autocapitalization(.none)
            
            SecureField("Contraseña", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8.0)
                .padding(.bottom, 20)
            
            Button(action: {
                
            }) {
                Text("Ingresar")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(isLoginButtonDisabled ? Color.gray : Color.blue)
                    .cornerRadius(8.0)
            }
            .disabled(isLoginButtonDisabled)
        }
        .padding()
        .onAppear {
            isLoginButtonDisabled = false
            //TODO: Habilitar lógica de validación
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

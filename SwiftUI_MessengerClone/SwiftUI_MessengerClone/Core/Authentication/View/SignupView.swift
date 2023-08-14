//
//  SignupView.swift
//  SwiftUI_MessengerClone
//
//  Created by rishabh on 8/7/23.
//

import SwiftUI

struct SignupView: View {
	@State private var email = ""
	@State private var fullname = ""
	@State private var password = ""
	@Environment(\.dismiss) var dismiss
	
    var body: some View {
		VStack {
			Spacer()
			
			// Logo Image
			Image("messenger-app-icon")
				.resizable()
				.scaledToFit()
				.frame(width: 125, height: 125)
				.padding()
			
			// Text Fields - User Input
			VStack(spacing: 8) {
				TextField("Enter your email", text: $email)
					.font(.subheadline)
					.padding(12)
					.background(Color(.systemGray6))
					.cornerRadius(10)
					.padding(.horizontal, 24)
				
				
				TextField("Enter your full name", text: $fullname)
					.font(.subheadline)
					.padding(12)
					.background(Color(.systemGray6))
					.cornerRadius(10)
					.padding(.horizontal, 24)
				
				SecureField("Enter your password", text: $password)
					.font(.subheadline)
					.padding(12)
					.background(Color(.systemGray6))
					.cornerRadius(10)
					.padding(.horizontal, 24)
			}
			
			// Button - Sign Up
			Button {
				print("Handle Login")
			} label: {
				Text("Sign Up")
					.font(.subheadline)
					.fontWeight(.semibold)
					.foregroundColor(.white)
					.frame(width: 360, height: 44)
					.background(Color(.systemBlue))
					.cornerRadius(10)
			}
			.padding(.vertical)
			
			Spacer()
			Divider()
			
			
			Button {
				dismiss()
			} label: {
				HStack(spacing: 3) {
					Text("Already have an account?")
					Text("Sign in")
						.fontWeight(.semibold)
				}
				.font(.footnote)
			}


		}
        
		
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}

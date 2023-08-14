//
//  LoginView.swift
//  SwiftUI_MessengerClone
//
//  Created by rishabh on 8/7/23.
//

// LogIn and SignUp Views are in a NavigationStack

import SwiftUI

struct SigninView: View {
	@State private var email = ""
	@State private var password = ""
	
    var body: some View {
		NavigationStack {
			VStack {
				Spacer()
				
				// Logo Image
				Image("messenger-app-icon")
					.resizable()
					.scaledToFit()
					.frame(width: 125, height: 125)
					.padding()
				
				// Text Fields - User Input
				// added in a separate VStack so we can control spacing between 2 text fields
				VStack(spacing: 8) {
					TextField ("Enter your email", text: $email)
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
				
				// Button - Forgot Password
				Button {
					print("Forgot Password")
				} label: {
					Text("Forgot Password?")
						.font(.footnote)
						.fontWeight(.semibold)
						.padding(.top)
						.padding(.trailing, 28)
				}
				// nice trick to move an element to one side of the screen without HStack, ZStack, or spacers
				.frame(maxWidth: .infinity, alignment: .trailing)

				// Button - Login - (action/label)
				Button {
					print("Handle Login")
				} label: {
					Text("Login")
						.font(.subheadline)
						.fontWeight(.semibold)
						.foregroundColor(.white)
						.frame(width: 360, height: 44)
						.background(Color(.systemBlue))
						.cornerRadius(10)
				}
				.padding(.vertical)

				// Not a Button - Facebook Login
				HStack {
					// horizontal line
					Rectangle()
						.frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
					Text("OR")
						.font(.footnote)
						.fontWeight(.semibold)
					// horizontal line
					Rectangle()
						.frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
				}
				.foregroundColor(.gray)
				
				HStack {
					Image("facebook-logo")
						.resizable()
						.frame(width: 20, height: 20)
					Text("Continue with Facebook")
						.font(.footnote)
						.fontWeight(.semibold)
						.foregroundColor(Color(.systemBlue))
				}
				.padding(.top, 8)
				
				Spacer()
				Divider()
				
				// Link - Sign Up
				// using destination/label option and not updated .navigation/destination modifier bc it is not a value based navigation
				// not passing any data around - no value linked to this
				NavigationLink {
					SignupView()
						.navigationBarBackButtonHidden()
				} label: {
					HStack(spacing: 3) {
						Text("Don't have an account?")
						Text("Sign Up")
							.fontWeight(.semibold)
					}
					.font(.footnote)
				}
				.padding(.vertical)
			}
		}
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}

//
//  ProfileView.swift
//  SwiftUI_MessengerClone
//
//  Created by rishabh on 8/9/23.
//

import SwiftUI

struct ProfileView: View {
	
	var body: some View {
		
		// Header View and 2 List Views, Header Sticks to the top while List Views are Scrollable
		// Put everything in ScrollView if you want everything to be Scrollable
		VStack {
			// Header
			VStack {
				Image(systemName: "person.circle.fill")
					.resizable()
					.frame(width: 80, height: 80)
					.foregroundColor(Color(.systemGray4))
				
				Text("Madara Uchica")
					.font(.title2)
					.fontWeight(.semibold)
			}
			
			// List
			List {
				Section {
					// can use .allCases for enum bc it conforms to CaseIterable -> wraps enum into an array to iterate through
					ForEach(SettingsOptionsViewModel.allCases) { option in
						HStack {
							Image(systemName: "bell.circle.fill")
								.resizable()
								.frame(width: 24, height: 24)
								.foregroundColor(Color(.systemPurple))
							
							Text(option.title)
								.font(.subheadline)
						}
					}
				}
				
				Section {
					Button("Log Out") {
						
					}
					
					Button("Delete Account") {
						
					}
				}
				.foregroundColor(.red)
			}
			
			
		}
		
	}
}

struct ProfileView_Previews: PreviewProvider {
	static var previews: some View {
		ProfileView()
	}
}

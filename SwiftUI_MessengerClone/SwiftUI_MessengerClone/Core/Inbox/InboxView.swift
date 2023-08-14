//
//  InboxView.swift
//  SwiftUI_MessengerClone
//
//  Created by rishabh on 8/8/23.
//

// Main View after Signin/Signup Views

import SwiftUI

struct InboxView: View {
	@State private var showNewMessageView = false
	
    var body: some View {
		// Since elements will navigate to different views, everything goes in NavigationStack
		NavigationStack {
			// embed everything in a ScrollView
			ScrollView {
				VStack {
					// Top Horizontal ScrollView of Active Users
					ActiveNowView()
					
					// Using List, not VStack/lazyVStack to add swipe actions to delete chats - can only do with Lists
					List {
						ForEach(0 ... 10, id: \.self) {message in
							InboxRowView()
						}
					}
					.listStyle(PlainListStyle())
					.frame(height:UIScreen.main.bounds.height - 120)
				}
			}
			.fullScreenCover(isPresented: $showNewMessageView, content: {
				NewMessageView()
			})
			
			// ScrollView's Top Toolbar
			.toolbar {
				ToolbarItem(placement: .navigationBarLeading) {
					HStack {
						Image(systemName: "person.circle.fill")
						
						Text("Chats")
							.font(.title)
							.fontWeight(.semibold)
					}
				}
				
				ToolbarItem(placement: .navigationBarTrailing) {
					Button {
						showNewMessageView.toggle()
					} label: {
						Image(systemName: "square.and.pencil.circle.fill")
							.resizable()
							.frame(width: 32, height: 32)
							.foregroundStyle(.black, Color(.systemGray5))
					}
				}
			}
			
			
		}
    }
	
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}

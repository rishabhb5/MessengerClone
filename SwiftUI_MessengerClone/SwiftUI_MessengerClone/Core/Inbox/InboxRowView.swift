//
//  InboxRowView.swift
//  SwiftUI_MessengerClone
//
//  Created by rishabh on 8/8/23.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        
		// HStack for Profile Pic, Name+Message, Date+ArrowIndicator
		HStack (alignment: .top, spacing: 12) {
			// Profile Pic
			Image(systemName: "person.circle.fill")
				.resizable()
				.frame(width: 64, height: 64)
				.foregroundColor(Color(.systemGray4))
			
			// VStack for Name+Message
			VStack(alignment: .leading, spacing: 4) {
				Text("Madara")
					.font(.subheadline)
					.fontWeight(.semibold)
				
				Text("Test Message that spans more than one line")
					.font(.subheadline)
					.foregroundColor(.gray)
					.lineLimit(2)
					// set width so text doesn't bleed into Date+ArrowIndicator component
					.frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
			}
			
			// HStack for Date+ArrowIndicator
			HStack {
				Text("Yesterday")
				
				Image(systemName: "chevron.right")
			}
			.font(.footnote)
			.foregroundColor(.gray)
		}
//		.padding(.horizontal)
		.frame(height: 72)
    }
}

struct InboxRowView_Previews: PreviewProvider {
    static var previews: some View {
        InboxRowView()
    }
}

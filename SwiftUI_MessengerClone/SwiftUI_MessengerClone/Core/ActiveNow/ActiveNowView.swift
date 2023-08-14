//
//  ActiveNowView.swift
//  SwiftUI_MessengerClone
//
//  Created by rishabh on 8/8/23.
//

import SwiftUI

struct ActiveNowView: View {
    var body: some View {
		// Top Horizontal Scroll View of Active Users
		ScrollView(.horizontal, showsIndicators: false) {
			HStack(spacing: 8) {
				ForEach(0 ... 10, id: \.self) { user in
					// VStack of Profile pic, Active Circle
					VStack {
						ZStack(alignment: .bottomTrailing){
							Image(systemName: "person.circle.fill")
								.resizable()
								.frame(width: 64, height: 64)
								.foregroundColor(Color(.systemGray4))
							
							ZStack {
								// outer white outline around green circle
								Circle()
									.fill(.white)
									.frame(width: 18, height: 18)
								Circle()
									.fill((Color(.systemGreen)))
									.frame(width: 12, height: 12)
							}
						}
						Text("Madara")
							.font(.subheadline)
							.foregroundColor(.gray)
					}
				}
			}
			.padding()
		}
		.frame(height: 106)
    }
}

struct ActiveNowView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveNowView()
    }
}

//
//  SettingsOptionsViewModel.swift
//  SwiftUI_MessengerClone
//
//  Created by rishabh on 8/9/23.
//

// Settings Page

import Foundation

enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
	case darkMode		// = 0
	case activeStatus	// = 1
	case accessibility	// = 2
	case privacy		// = 3
	case notifications	// = 4
	
	var title: String {
		// self refers to SettingsOptionsViewModel enum
		switch self {
		case .darkMode: return "Dark Mode"
		case .activeStatus: return "Active Status"
		case .accessibility: return "Accessibility"
		case .privacy: return "Privacy"
		case .notifications: return "Notifications"
		}
	}
	
	
	var id: Int {return self.rawValue}
}

//
//  Themes.swift
//  Stalker
//
//  Created by KrLite on 2023/6/18.
//

import Foundation
import AppKit

class Themes {
	
	class Theme: Equatable {
		
		static let EMPTY: NSImage? = NSImage(named: NSImage.Name("Empty"))
		
		
		
		let name: String
		
		
		
		let headUncollapsed: 	NSImage?
		
		let headCollapsed: 		NSImage?
		
		let separator: 			NSImage?
		
		let tail:				NSImage?
		
		
		
		let iconWidth: 		CGFloat
		
		let iconWidthAlt:	CGFloat
		
		let autoHideIcons: 	Bool
		
		init(
			_ name: String,
			
			headUncollapsed: 	String?,
			headCollapsed: 		String?,
			separator: 			String?,
			tail: 				String?,
			
			iconWidth:		CGFloat,
			iconWidthAlt:	CGFloat,
			autoHideIcons: 	Bool
		) {
			self.name = name
			
			self.headUncollapsed 	= headUncollapsed 	!= nil ? NSImage(named: NSImage.Name(headUncollapsed!)) 	: Theme.EMPTY
			self.headCollapsed 		= headCollapsed 	!= nil ? NSImage(named: NSImage.Name(headCollapsed!)) 		: Theme.EMPTY
			self.separator 			= separator 		!= nil ? NSImage(named: NSImage.Name(separator!)) 			: Theme.EMPTY
			self.tail 				= tail 				!= nil ? NSImage(named: NSImage.Name(tail!)) 				: Theme.EMPTY
			
			self.iconWidth 		= iconWidth
			self.iconWidthAlt 	= iconWidthAlt
			self.autoHideIcons 	= autoHideIcons
		}
		
		static func == (
			lhs: Themes.Theme,
			rhs: Themes.Theme
		) -> Bool {
			return lhs.name == rhs.name
		}
		
	}
	
	static var THEMES_LIST: [Theme] {
		return [
			stalker,
			hiddenBar,
			approaching,
			metresAway,
			electrodiagram,
			droplets,
			codec,
			notSoHappy
		].sorted(by: { $0.name < $1.name })
	}
	
	static var THEME_NAMES_LIST: [String] {
		return THEMES_LIST.map { $0.name }
	}
	
	static let stalker: Theme = Theme(
		String(
			localized: 	"Stalker",
			comment: 	"Name for theme 'Stalker'"
		),
		headUncollapsed: 	"Stalker/Dot",
		headCollapsed: 		"Stalker/Dot",
		separator: 			"Stalker/Line",
		tail: 				"Stalker/DottedLine",
		
		iconWidth: 2, iconWidthAlt: 10,
		autoHideIcons: true
	)
	
	static let hiddenBar: Theme = Theme(
		String(
			localized: 	"Hidden Bar",
			comment: 	"Name for theme 'Hidden Bar'"
		),
		headUncollapsed: 	"HiddenBar/ic_left",
		headCollapsed: 		"HiddenBar/ic_right",
		separator: 			"HiddenBar/ic_line",
		tail: 				"HiddenBar/ic_line_translucent",
		
		iconWidth: 20, iconWidthAlt: 32,
		autoHideIcons: false
	)
	
	static let approaching: Theme = Theme(
		String(
			localized: 	"Approaching",
			comment: 	"Name for theme 'Approaching'"
		),
		headUncollapsed: 	"Approaching/Primary",
		headCollapsed: 		"Approaching/Primary",
		separator: 			"Approaching/Secondary",
		tail: 				"Approaching/Tertiary",
		
		iconWidth: 8, iconWidthAlt: 16,
		autoHideIcons: true
	)
	
	static let metresAway: Theme = Theme(
		String(
			localized: 	"Metres Away",
			comment: 	"Name for theme 'Metres Away'"
		),
		headUncollapsed: 	"MetresAway/Line",
		headCollapsed: 		"MetresAway/Line",
		separator: 			"MetresAway/MetreLine",
		tail: 				"MetresAway/MetreLine",
		
		iconWidth: 3, iconWidthAlt: 32,
		autoHideIcons: false
	)
	
	static let electrodiagram: Theme = Theme(
		String(
			localized: 	"Electrodiagram",
			comment: 	"Name for theme 'Electrodiagram'"
		),
		headUncollapsed: 	"Electrodiagram/DiagramHead",
		headCollapsed: 		"Electrodiagram/DiagramHead",
		separator: 			"Electrodiagram/Diagram",
		tail: 				"Electrodiagram/DiagramTail",
		
		iconWidth: 1, iconWidthAlt: 18,
		autoHideIcons: false
	)
	
	static let droplets: Theme = Theme(
		String(
			localized: 	"Droplets",
			comment: 	"Name for theme 'Droplets'"
		),
		headUncollapsed: 	"Droplets/Drops",
		headCollapsed: 		"Droplets/Drops",
		separator: 			"Droplets/LDrop",
		tail: 				"Droplets/MDrop",
		
		iconWidth: 6, iconWidthAlt: 22,
		autoHideIcons: false
	)
	
	static let codec: Theme = Theme(
		String(
			localized: 	"Codec",
			comment: 	"Name for theme 'Codec'"
		),
		headUncollapsed: 	"Codec/R",
		headCollapsed: 		"Codec/R",
		separator: 			"Codec/L",
		tail: 				"Codec/P",
		
		iconWidth: 16, iconWidthAlt: 24,
		autoHideIcons: false
	)
	
	static let notSoHappy: Theme = Theme(
		String(
			localized: 	"Not So Happy",
			comment: 	"Name for theme 'Not So Happy'"
		),
		headUncollapsed: 	"NotSoHappy/Sad",
		headCollapsed: 		"NotSoHappy/Happy",
		separator: 			"NotSoHappy/Pale",
		tail: 				"NotSoHappy/Amazed",
		
		iconWidth: 14, iconWidthAlt: 32,
		autoHideIcons: false
	)
	
}

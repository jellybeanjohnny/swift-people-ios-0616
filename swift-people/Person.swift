//
//  Person.swift
//  swift-people
//
//  Created by Matt Amerige on 7/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
	
	let name: String
	private(set) var ageInYears: Int?
	private(set) var skills = Set<String>()
	
	var qualitifedTutor: Bool {
		return skills.count >= 4
	}
	
	convenience init() {
		self.init(name: "John Doe", ageInYears: nil)
	}
	
	 init(name: String, ageInYears: Int?) {
		self.name = name
		self.ageInYears = ageInYears
	}
	
	convenience init(name: String) {
		self.init(name: name, ageInYears: nil)
	}
	
	func celebrateBirthday() -> String {
		if var ageInYears = ageInYears {
			ageInYears += 1
			return "HAPPY \(ageInYears)\(ageInYears.ordinal().uppercaseString) BIRTHDAY, \(name.uppercaseString)"
		}
		else {
			return "HAPPY BIRTHDAY, \(name.uppercaseString)!!!"
		}
	}
	
	func learnSkillBash() {
		skills.insert("bash")
	}
	
	func learnSkillXcode() {
		skills.insert("Xcode")
	}
	
	func learnSkillObjectiveC() {
		skills.insert("Objective-C")
	}
	
	func learnSkillSwift() {
		skills.insert("Swift")
	}
	
	func learnSkillInterfaceBuilder() {
		skills.insert("Interface Builder")
	}
}

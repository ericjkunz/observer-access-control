//
//  ViewModel.swift
//  ControlledObservable
//
//  Created by Dylan Straughan on 7/9/18.
//  Copyright © 2018 Fuzz Production. All rights reserved.
//

import Foundation

struct ViewModel {
	
	let controlledObservable = ControlledObservable()
	
	init() {
		test()
	}
	
	func test() {
		controlledObservable.onNext() // onNext()
	}
}

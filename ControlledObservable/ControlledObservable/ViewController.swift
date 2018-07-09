//
//  ViewController.swift
//  ControlledObservable
//
//  Created by Dylan Straughan on 7/9/18.
//  Copyright © 2018 Fuzz Production. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	let viewModel = ViewModel()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		test()
	}
	
	func test() {
		viewModel.controlledObservable.onNext() // Crash
	}
}

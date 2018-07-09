//
//  ControlledObservable.swift
//  ControlledObservable
//
//  Created by Dylan Straughan on 7/9/18.
//  Copyright © 2018 Fuzz Production. All rights reserved.
//

import Foundation

class ControlledObservable {
	private let file: String
	
	private lazy var processedFile: String = {
		return slice(path: file)
	}()
	
	init(with file: String = #file) {
		self.file = file
	}
	
	func onNext() {
		let symbols = Thread.callStackSymbols
		guard symbols.count > 2,
			symbols[2].contains(processedFile) else {
				symbols[0...3].forEach { print($0) }
				fatalError("onNext called from outside the file in which the controlledObservable was initialized.")
		}
		
		print("onNext")
		symbols[0...3].forEach { print($0) }
	}
	
	private func slice(path: String) -> String {
		guard let lastSlash = path.range(of: "/", options: .backwards, range: nil, locale: nil) else { return "" }
		let fileName = String(path[lastSlash.upperBound ..< path.endIndex])
		guard let lastPeriod = fileName.range(of: ".", options: .backwards, range: nil, locale: nil) else { return "" }
		return String(fileName[..<lastPeriod.lowerBound])
	}
}

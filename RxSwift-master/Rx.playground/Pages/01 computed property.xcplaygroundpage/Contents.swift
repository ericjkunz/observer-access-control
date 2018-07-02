import RxSwift
import Foundation

// Computed Property Example
//
// an Observable wrapper around the private Subject
// downside: we would have to have two properties in every view model

class ViewModelWithComputedProperty {
    private let privateSearchResults = BehaviorSubject<[String]>(value: [])
    
    var searchResults: Observable<[String]> {
        return privateSearchResults
    }
    
    func search(query: String) {
        // perform search then...
            privateSearchResults.onNext([])
    }
}
